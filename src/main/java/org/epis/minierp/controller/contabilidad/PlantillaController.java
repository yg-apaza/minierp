package org.epis.minierp.controller.contabilidad;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.business.contabilidad.PlantillaCabBusiness;
import org.epis.minierp.business.contabilidad.PlantillaDetBusiness;
import org.epis.minierp.dao.contabilidad.PlantillaCabDao;
import org.epis.minierp.model.EnP3mPlantillaCab;

public class PlantillaController extends HttpServlet
{
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        PlantillaCabDao dao = new PlantillaCabDao();
        request.setAttribute("plantillas", dao.getAllActive());
        request.getRequestDispatcher("/WEB-INF/contabilidad/plantilla.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        String action = request.getParameter("accion");
        PlantillaCabBusiness cabBusiness = new PlantillaCabBusiness();
        PlantillaDetBusiness detBusiness = new PlantillaDetBusiness();
        
        switch(action) {
            case "create":
                String plaDet = request.getParameter("plaDet");
                String plaGlo = request.getParameter("plaGlo");
                String[] cueNum = request.getParameterValues("cueNum");
                String[] plaDetDebHab = request.getParameterValues("plaDetDebHab");
                String[] plaDetPor = request.getParameterValues("plaDetPor");
                EnP3mPlantillaCab nuevo = cabBusiness.create(plaDet, plaGlo);
                for(int i = 0; i < cueNum.length; i++)
                    detBusiness.create(i + 1, nuevo.getPlaCod(), cueNum[i], plaDetDebHab[i].equals("DEBE"), Double.parseDouble(plaDetPor[i]));
                break;
            case "delete":
                String deletePlaCod = request.getParameter("plaCod");
                cabBusiness.delete(Integer.parseInt(deletePlaCod));
                break;
        }
        response.sendRedirect(request.getContextPath() + "/secured/contabilidad/plantilla");
    }
}
