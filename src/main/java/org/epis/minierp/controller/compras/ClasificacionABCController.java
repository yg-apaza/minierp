/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.epis.minierp.controller.compras;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.compras.ProductoDao;

/**
 *
 * @author usuario
 */
public class ClasificacionABCController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ProductoDao productoDao;
 
    public ClasificacionABCController() {
        super();
        productoDao = new ProductoDao();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //String action = request.getParameter("action");
        
        request.getRequestDispatcher("/WEB-INF/compras/classificationABC.jsp").forward(request, response);
        
        //request.setAttribute("productos", productoDao.getAllProductsActive()); 
        
    }   
}
