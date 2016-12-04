package org.epis.minierp.controller.contabilidad;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.business.contabilidad.RegistroAsientoBusiness;
import org.epis.minierp.dao.contabilidad.PlantillaCabDao;
import org.epis.minierp.dao.general.TaGzzMonedaDao;
import org.epis.minierp.dao.general.TaGzzTipoComprobanteDao;
import org.epis.minierp.model.EnP3mPlantillaCab;

public class RegistroAsientoController  extends HttpServlet
{
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        PlantillaCabDao plantillasDao = new PlantillaCabDao();
        request.setAttribute("plantillas", plantillasDao.getAllActive());
        TaGzzTipoComprobanteDao comDao = new TaGzzTipoComprobanteDao();
        request.setAttribute("comprobantes", comDao.getAllActive());
        TaGzzMonedaDao monDao = new TaGzzMonedaDao();
        request.setAttribute("monedas", monDao.getAllActive());
        request.getRequestDispatcher("/WEB-INF/contabilidad/registroAsientos.jsp").forward(request, response);
        
        if(request.getParameter("plaCod") != null)
        {
            EnP3mPlantillaCab p = plantillasDao.getById(Integer.parseInt(request.getParameter("plaCod")));
            request.setAttribute("glosa", p.getPlaGlo());
        }
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        DateFormat format = new SimpleDateFormat("dd/MM/yyyy");
        RegistroAsientoBusiness regBusiness = new RegistroAsientoBusiness();
 
        try {
            char asiCabTip = 'M';
            String asiCabGlo = request.getParameter("asiCabGlo");
            Date asiCabFec = format.parse(request.getParameter("asiCabFec"));
            Integer tipComCod = Integer.parseInt(request.getParameter("tipComCod"));
            String asiCabNumCom = request.getParameter("asiCabNumCom");
            int monCod = Integer.parseInt(request.getParameter("monCod"));

            String[] cueNum = request.getParameterValues("cueNum");
            String[] asiDetDeb = request.getParameterValues("asiDetDeb");
            String[] asiDetHab = request.getParameterValues("asiDetHab");
            
            regBusiness.create(asiCabTip, asiCabGlo, asiCabFec, tipComCod, asiCabNumCom, monCod, cueNum, asiDetDeb, asiDetHab);
        } catch (ParseException ex){
            
        }
        response.sendRedirect(request.getContextPath() + "/secured/contabilidad/asientos");
    }
}