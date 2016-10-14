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
import org.epis.minierp.dao.configuracion.EnP1mPuntoVentaDao;
import org.epis.minierp.model.EnP1mPuntoVenta;

public class PointSaleController extends HttpServlet
{	
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {       
        
        EnP1mPuntoVentaDao puntoventa = new EnP1mPuntoVentaDao();
        List <EnP1mPuntoVenta> puntoventas = puntoventa.getAllActive();
        request.setAttribute("puntoventas",puntoventas);
        
        request.getRequestDispatcher("/WEB-INF/configuracion/pointSale.jsp").forward(request, response);
    }
}
