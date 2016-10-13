/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.epis.minierp.controller.compras;

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
import org.epis.minierp.dao.compras.TaGzzMonedaDao;
import org.epis.minierp.dao.compras.EnP2mProductoDao;
import org.epis.minierp.model.EnP2mProducto;
import org.epis.minierp.model.TaGzzMoneda;

/**
 *
 * @author usuario
 */
    
public class LimiteMaximoController  extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private EnP2mProductoDao productoDao;
 
    public LimiteMaximoController () {
        super();
        productoDao = new EnP2mProductoDao();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //String action = request.getParameter("action");
        EnP2mProductoDao producto = new EnP2mProductoDao();
        List <EnP2mProducto> productos = producto.getAllActive();
        request.setAttribute("productos",productos);
        request.getRequestDispatcher("/WEB-INF/compras/limitMax.jsp").forward(request, response);
        
        //request.setAttribute("productos", productoDao.getAllProductsActive()); 
        
    }   
}
