/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.epis.minierp.controller.compras;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.compras.ProductoDao;
import org.epis.minierp.model.EnP2mProducto;

/**
 *
 * @author usuario
 */
public class ClasificacionABCController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
       
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        ProductoDao producto = new ProductoDao();
        List <EnP2mProducto> productosA = producto.getA();
        //List <EnP2mProducto> productosB = null;
        
        String resp = (String) request.getParameter("clase");
        
        
        if(resp != null){
            
            PrintWriter out = response.getWriter();
            
            if(resp.equals("A")){
                
                response.setContentType("text/html;charset=UTF-8");
                
                List <EnP2mProducto> productosAm = producto.getA();
                request.setAttribute("productos", productosA);
                
                out.println(productosAm);
                
                                
            } else if(resp.equals("B")){
                response.setContentType("text/html;charset=UTF-8");
                List <EnP2mProducto> productosB = producto.getB();
                request.setAttribute("productos", productosB);
                
                out.println(productosB);
                
            } else if(resp.equals("C")){
                response.setContentType("text/html;charset=UTF-8");
                List <EnP2mProducto> productosC = producto.getC();
                request.setAttribute("productos", productosC);
                
                out.println(productosC);
                
            }
            
        }
        else
        {
            request.setAttribute("productos",productosA);        
            request.getRequestDispatcher("/WEB-INF/compras/classificationABC.jsp").forward(request, response);
        }
    }  
}
