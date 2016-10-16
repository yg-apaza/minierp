/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.epis.minierp.controller.configuracion;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.business.configuracion.EnP1mPuntoVentaBusiness;
import org.epis.minierp.dao.general.EnP1mPuntoVentaDao;
import org.epis.minierp.dao.general.EnP1mSucursalDao;

public class PointSaleController extends HttpServlet {
    
    private static final long serialVersionUID = 1L;
    EnP1mPuntoVentaDao puntoVentaDao;
    EnP1mSucursalDao sucursalDao;
    EnP1mPuntoVentaBusiness puntoVentaBusiness;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        puntoVentaDao = new EnP1mPuntoVentaDao();
        sucursalDao = new EnP1mSucursalDao();
        request.setAttribute("puntoventa", puntoVentaDao.getAllActive());
        request.setAttribute("sucursal", sucursalDao.getAllActive());
        request.setAttribute("inactivos", puntoVentaDao.getAllInactives());
        request.getRequestDispatcher("/WEB-INF/configuracion/pointSale.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("accion");
        puntoVentaBusiness = new EnP1mPuntoVentaBusiness();
        
        switch(action) {
            case "create":
                int sucCodCreate = Integer.parseInt(request.getParameter("sucCod"));
                String punVenDesCreate = request.getParameter("punVenDes");
                puntoVentaBusiness.create(sucCodCreate, punVenDesCreate, 'A');
                break;
                
            case "update":
                int sucCodUpdate = Integer.parseInt(request.getParameter("sucCod"));
                int punVenCodUpdate = Integer.parseInt(request.getParameter("punVenCod"));
                String punVenDesUpdate = request.getParameter("punVenDes");
                puntoVentaBusiness.update(sucCodUpdate, punVenCodUpdate, punVenDesUpdate);
                break;
                
            case "disable":
                int sucCodDisable = Integer.parseInt(request.getParameter("sucCod"));
                int punVenCodDisable = Integer.parseInt(request.getParameter("punVenCod"));
                puntoVentaBusiness.disable(sucCodDisable, punVenCodDisable);
                break;
                
            case "activate":
                int sucCodActivate = Integer.parseInt(request.getParameter("sucCod"));
                int punVenCodActivate = Integer.parseInt(request.getParameter("punVenCod"));
                puntoVentaBusiness.activate(sucCodActivate, punVenCodActivate);
                break;
                
            case "delete":
                int sucCodDelete = Integer.parseInt(request.getParameter("sucCod"));
                int punVenCodDelete = Integer.parseInt(request.getParameter("punVenCod"));
                puntoVentaBusiness.delete(sucCodDelete, punVenCodDelete);
                break;
                
        }
        response.sendRedirect(request.getContextPath() + "/secured/configuracion/puntodeventa");
    }
}
