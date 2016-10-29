package org.epis.minierp.controller.configuracion;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.business.configuracion.EnP1mSucursalBusiness;
import org.epis.minierp.dao.general.EnP1mPuntoVentaDao;
import org.epis.minierp.dao.general.EnP1mSucursalDao;
import org.epis.minierp.model.EnP1mSucursal;

public class SucursalController extends HttpServlet
{	
    private static final long serialVersionUID = 1L;
    EnP1mPuntoVentaDao PuntoVentaDao;
  // 

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {       
        EnP1mSucursalDao sucursal = new EnP1mSucursalDao();
        List <EnP1mSucursal> sucursales = sucursal.getAllActive();
        List <EnP1mSucursal> inactivos = sucursal.getAllInactives();
        request.setAttribute("sucursales",sucursales);
        request.setAttribute("inactivos",inactivos);
        
        request.getRequestDispatcher("/WEB-INF/configuracion/sucursal.jsp").forward(request, response);
    }
    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //String sucCod = request.getParameter("sucCod");
        
        String action = request.getParameter("accion");
        EnP1mSucursalDao sucursal = new EnP1mSucursalDao();
        EnP1mSucursal s = new EnP1mSucursal();
        EnP1mSucursalBusiness actions = new EnP1mSucursalBusiness();
        
        //List<EnP1mPuntoVenta> puntoventa = PuntoVentaDao.getAllActiveOrdered();
        
        switch(action) {
            case "create":                
                String sucDes = request.getParameter("sucDes");
                String sucDir = request.getParameter("sucDir");     
              //  s.setSucCod(Integer.parseInt(sucCod));
                actions.create(sucDes, sucDir);
                break;
            case "update":
                int updateSucCod = Integer.parseInt(request.getParameter("sucCod"));
                String updateSucDes = request.getParameter("sucDes");
                String updateSucDir = request.getParameter("sucDir");
                actions.update(updateSucCod, updateSucDes, updateSucDir);
                break;
            case "delete":
                int deleteSucCod = Integer.parseInt(request.getParameter("sucCod"));
                actions.delete(deleteSucCod);
                break;
            case "disable":
                int disableSucCod = Integer.parseInt(request.getParameter("sucCod"));
                actions.disable(disableSucCod);              
                break;
                
            case "activate":
                int activeSucCod = Integer.parseInt(request.getParameter("sucCod"));
                actions.activate(activeSucCod);
                break;
               
        }
        
        response.sendRedirect(request.getContextPath() + "/secured/configuracion/sucursal");
    }
}