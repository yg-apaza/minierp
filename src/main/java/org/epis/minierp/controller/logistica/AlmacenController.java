/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.epis.minierp.controller.logistica;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.business.logistica.EnP2mAlmacenBusiness;
import org.epis.minierp.dao.general.EnP1mSucursalDao;
import org.epis.minierp.dao.logistica.EnP2mAlmacenDao;
import org.epis.minierp.dao.logistica.EnP2mProductoDao;
import org.epis.minierp.model.EnP1mSucursal;
import org.epis.minierp.model.EnP2mProducto;

/**
 *
 * @author Ylnner
 */
public class AlmacenController extends HttpServlet
{
    private static final long serialVersionUID = 1L;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EnP2mAlmacenDao almacenDao=new EnP2mAlmacenDao();
        EnP2mProductoDao productoDao=new EnP2mProductoDao();
        EnP1mSucursalDao sucursalDao=new EnP1mSucursalDao();
        
        request.setAttribute("almacenes", almacenDao.getAllActive());
        request.setAttribute("productos", productoDao.getAllActive());
        request.setAttribute("sucursales",sucursalDao.getAllActive());
        request.setAttribute("inactivos", almacenDao.getAllInactive());
        
        request.getRequestDispatcher("/WEB-INF/logistica/almacen.jsp").forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        EnP2mAlmacenBusiness almBusi=new EnP2mAlmacenBusiness();
        String action=request.getParameter("accion");
        if(action!=null){
            switch(action){
                case "create":{
                    String AlmCod=request.getParameter("almCod");
                    String AlmDet=request.getParameter("almDet");
                    Integer SucCod=Integer.parseInt(request.getParameter("sucCod"));
                    Double AlmVolTot=Double.parseDouble(request.getParameter("almVolTot"));
                    String AlmObs=request.getParameter("almObs");
                    
                    almBusi.create(AlmCod, AlmDet, SucCod, AlmVolTot, AlmObs, 'A');
                    break;
                }
                case "update":{                    
                    String AlmCod=request.getParameter("almCod");
                    String AlmDet=request.getParameter("almDet");
                    int SucCod=Integer.parseInt(request.getParameter("sucCod"));
                    double AlmVolTot=Double.parseDouble(request.getParameter("almVolTot"));
                    String AlmObs=request.getParameter("almObs");
                    
                    almBusi.update(AlmCod, AlmDet, SucCod, AlmVolTot, AlmObs, 'A');
                    break;
                }
                case "disable":{
                    String AlmCod=request.getParameter("almCod");
                    almBusi.disable(AlmCod);
                    break;
                }
                case "activate":{
                    String AlmCod=request.getParameter("almCod");
                    almBusi.activate(AlmCod);
                    break;
                }
                case "delete":{
                    String AlmCod=request.getParameter("almCod");
                    almBusi.delete(AlmCod);
                    break;
                }
                case "ver":{
                    String AlmCod=request.getParameter("almCod");
                    
                    break;
                }
            }
        }else{
            if(request.getParameter("editarAlmacen")!=null){
            
            }
        }
        
        response.sendRedirect(request.getContextPath() + "/secured/logistica/almacen");
    }
    
}
