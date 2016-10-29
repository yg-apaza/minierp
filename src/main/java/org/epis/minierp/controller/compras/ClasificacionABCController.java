package org.epis.minierp.controller.compras;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.logistica.EnP2mProductoDao;
import org.epis.minierp.model.EnP2mProducto;

public class ClasificacionABCController extends HttpServlet {
    private static final long serialVersionUID = 1L;    
       
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        EnP2mProductoDao producto = new EnP2mProductoDao();
        List <EnP2mProducto> productosA = producto.getA();
        List <EnP2mProducto> productosB = producto.getB();
        List <EnP2mProducto> productosC = producto.getC();
        
        request.setAttribute("productosA",productosA);
        request.setAttribute("productosB",productosB);   
        request.setAttribute("productosC",productosC);   
        request.getRequestDispatcher("/WEB-INF/compras/classificationABC.jsp").forward(request, response);
    } 
}
