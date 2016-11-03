package org.epis.minierp.controller.configuracion;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.business.ventas.EnP1mCatalogoRutaBusiness;
import org.epis.minierp.dao.ventas.EnP1mCatalogoRutaDao;

public class CatalogoRutasController extends HttpServlet
{	
    private static final long serialVersionUID = 1L;
    EnP1mCatalogoRutaDao catRutDao;
    EnP1mCatalogoRutaBusiness catRutBusiness;


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {       
        catRutDao = new EnP1mCatalogoRutaDao();
        
        request.setAttribute("catRutas",catRutDao.getAllActive());
        request.setAttribute("inactivos",catRutDao.getAllInactives());
        request.getRequestDispatcher("/WEB-INF/configuracion/catalogoRutas.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        catRutBusiness = new EnP1mCatalogoRutaBusiness();
        String action = request.getParameter("accion");
        
        int catRutCod;
        String catRutDet;
        
        switch(action) {
            case "create":
                catRutCod = Integer.parseInt(request.getParameter("catRutCod"));
                
                catRutDet = request.getParameter("catRutDet");
                System.out.println("hakunamatata: " + catRutCod);
                System.out.println("glogloglu: " + catRutDet);
                catRutBusiness.create(catRutCod, catRutDet);
                break;
                
            case "update":
                catRutCod = Integer.parseInt(request.getParameter("catRutCod"));
                catRutDet = request.getParameter("catRutDet");
                catRutBusiness.update(catRutCod, catRutDet);
                break;
                
            case "disable":
                catRutCod = Integer.parseInt(request.getParameter("catRutCod"));
                catRutBusiness.disable(catRutCod);
                break;
                
            case "activate":
                catRutCod = Integer.parseInt(request.getParameter("catRutCod"));
                catRutBusiness.activate(catRutCod);
                break;
                
            case "delete":
                catRutCod = Integer.parseInt(request.getParameter("catRutCod"));
                catRutBusiness.delete(catRutCod);
                break;
        }
                
        response.sendRedirect(request.getContextPath() + "/secured/configuracion/catalogoRutas");
    }
}