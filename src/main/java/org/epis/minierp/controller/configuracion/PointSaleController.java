/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.epis.minierp.controller.configuracion;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.general.EnP1mPuntoVentaDao;
import org.epis.minierp.dao.general.EnP1mSucursalDao;
import org.epis.minierp.model.EnP1mPuntoVenta;
import org.epis.minierp.model.EnP1mPuntoVentaId;
import org.epis.minierp.model.EnP1mSucursal;

/**
 *
 * @author Christian
 */
public class PointSaleController extends HttpServlet {
    
    private static final long serialVersionUID = 1L;
    EnP1mPuntoVentaDao puntoVentaDao;
    EnP1mSucursalDao sucursalDao;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        puntoVentaDao = new EnP1mPuntoVentaDao();
        sucursalDao = new EnP1mSucursalDao();
        request.setAttribute("puntoventa", puntoVentaDao.getAllActive());
        request.setAttribute("sucursal", sucursalDao.getAllActive());
        request.getRequestDispatcher("/WEB-INF/configuracion/pointSale.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("accion");
        puntoVentaDao = new EnP1mPuntoVentaDao();
        sucursalDao = new EnP1mSucursalDao();
        switch(action) {
            case "create":
                EnP1mPuntoVenta pv = new EnP1mPuntoVenta();
                int sucCodCreate = Integer.parseInt(request.getParameter("sucCod"));
                String punVenDesCreate = request.getParameter("punVenDes");
                int punVenCodCreate = puntoVentaDao.getLastPunVenCod();
                pv.setId(new EnP1mPuntoVentaId(punVenCodCreate, sucCodCreate));
                pv.setPunVenDes(punVenDesCreate);
                pv.setEstRegCod('A');
                puntoVentaDao.save(pv);
                puntoVentaDao.getLastPunVenCod();
                break;
                
            case "update":
                int sucCodUpdate = Integer.parseInt(request.getParameter("sucCod"));
                int punVenCodUpdate = Integer.parseInt(request.getParameter("punVenCod"));
                String punVenDesUpdate = request.getParameter("punVenDes");
                EnP1mPuntoVenta pvLoad = puntoVentaDao.getById(new EnP1mPuntoVentaId(punVenCodUpdate, sucCodUpdate));
                pvLoad.setPunVenDes(punVenDesUpdate);
                puntoVentaDao.update(pvLoad);
                break;
                
            case "delete":
                int sucCodDelete = Integer.parseInt(request.getParameter("sucCod"));
                int punVenCodDelete = Integer.parseInt(request.getParameter("punVenCod"));
                EnP1mPuntoVentaId key4Delete = new EnP1mPuntoVentaId(punVenCodDelete, sucCodDelete);
                EnP1mPuntoVenta pvDelete = puntoVentaDao.getById(key4Delete);
                pvDelete.setEstRegCod('*');
                puntoVentaDao.update(pvDelete);
                break;
        }
        response.sendRedirect(request.getContextPath() + "/secured/configuracion/puntodeventa");
    }
}
