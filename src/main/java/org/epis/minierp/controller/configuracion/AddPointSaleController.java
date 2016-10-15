/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.epis.minierp.controller.configuracion;

/**
 *
 * @author User
 */
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import static javax.xml.bind.DatatypeConverter.parseInteger;
import org.epis.minierp.dao.general.EnP1mPuntoVentaDao;
import org.epis.minierp.dao.general.EnP1mSucursalDao;
import org.epis.minierp.model.EnP1mPuntoVenta;
import org.epis.minierp.model.EnP1mPuntoVentaId;

public class AddPointSaleController extends HttpServlet
{	
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {       
        
        EnP1mPuntoVentaDao puntoventa = new EnP1mPuntoVentaDao();
        List <EnP1mPuntoVenta> puntoventas = puntoventa.getAllActive();
        request.setAttribute("puntoventas",puntoventas);
        
        request.getRequestDispatcher("/WEB-INF/configuracion/addPointSale.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String punVenCod = request.getParameter("punVenCod");
        String sucCod = request.getParameter("sucCod");
        String punVenDes = request.getParameter("punVenDes");
        
        System.out.println(punVenCod);
        System.out.println(sucCod);
        System.out.println(punVenDes);
        
        EnP1mPuntoVentaDao puntoVenta = new EnP1mPuntoVentaDao();
        EnP1mPuntoVenta p = new EnP1mPuntoVenta();
        
        p.setId((new EnP1mPuntoVentaId(Integer.parseInt(punVenCod),Integer.parseInt(sucCod))));
        p.setEnP1mSucursal((new EnP1mSucursalDao()).getById(sucCod));
        p.setPunVenDes(punVenDes);
        p.setEstRegCod('A');
        puntoVenta.save(p);
        response.sendRedirect(request.getContextPath() + "/secured/configuracion");
    }
}