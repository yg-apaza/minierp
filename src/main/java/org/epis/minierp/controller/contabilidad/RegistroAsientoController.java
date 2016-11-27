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
import org.epis.minierp.business.contabilidad.RegistroAsientosBusiness;
import org.epis.minierp.dao.general.TaGzzMonedaDao;
import org.epis.minierp.dao.general.TaGzzTipoComprobanteDao;

public class RegistroAsientoController  extends HttpServlet
{
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        TaGzzTipoComprobanteDao comDao = new TaGzzTipoComprobanteDao();
        request.setAttribute("comprobantes", comDao.getAllActive());
        TaGzzMonedaDao monDao = new TaGzzMonedaDao();
        request.setAttribute("monedas", monDao.getAllActive());
        request.getRequestDispatcher("/WEB-INF/contabilidad/registroAsientos.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        DateFormat format = new SimpleDateFormat("dd/MM/yyyy");
        RegistroAsientosBusiness regBusiness = new RegistroAsientosBusiness();
 
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