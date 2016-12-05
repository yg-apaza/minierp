package org.epis.minierp.controller.configuracion;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.business.configuracion.EnP1mSucursalBusiness;
import org.epis.minierp.dao.general.EnP1mSucursalDao;

public class SucursalController extends HttpServlet
{	
    private static final long serialVersionUID = 1L;
    EnP1mSucursalDao sucDao;
    EnP1mSucursalBusiness sucBusiness;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {       
        sucDao = new EnP1mSucursalDao();
        request.setAttribute("sucursales",sucDao.getAllActive());
        request.setAttribute("inactivos",sucDao.getAllInactives());
        request.getRequestDispatcher("/WEB-INF/configuracion/sucursal.jsp").forward(request, response);
    }
    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        sucBusiness = new EnP1mSucursalBusiness();
        
        String action = request.getParameter("accion");
        
        String sucDes, sucDir;
        int sucCod;  //sucCod autoincrement
        
        switch(action) {
            case "create": 
                sucDes = request.getParameter("sucDes");
                sucDir = request.getParameter("sucDir");
                sucBusiness.create(sucDes, sucDir);
                break;
                
            case "update":
                sucCod = Integer.parseInt(request.getParameter("sucCod"));
                sucDes = request.getParameter("sucDes");
                sucDir = request.getParameter("sucDir");
                sucBusiness.update(sucCod, sucDes, sucDir);
                break;
                
            case "disable":
                sucCod = Integer.parseInt(request.getParameter("sucCod"));
                sucBusiness.disable(sucCod);              
                break;
                
            case "activate":
                sucCod = Integer.parseInt(request.getParameter("sucCod"));
                sucBusiness.activate(sucCod); 
                break;
            
            case "delete":
                sucCod = Integer.parseInt(request.getParameter("sucCod"));
                sucBusiness.delete(sucCod); ;
                break;
                
        }
        
        response.sendRedirect(request.getContextPath() + "/secured/configuracion/sucursal");
    }
}