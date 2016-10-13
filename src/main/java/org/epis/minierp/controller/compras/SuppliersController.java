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
import org.epis.minierp.dao.compras.EnP4mProveedorDao;
import org.epis.minierp.model.EnP4mProveedor;

/**
 *
 * @author usuario
 */
public class SuppliersController extends HttpServlet {
    private static final long serialVersionUID = 1L;    
       
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        EnP4mProveedorDao proveedor = new EnP4mProveedorDao();
        List <EnP4mProveedor> proveedores = proveedor.getAllActive();
        
        request.setAttribute("proveedores",proveedores);        
        request.getRequestDispatcher("/WEB-INF/compras/suppliers.jsp").forward(request, response);
        
    }  
}
