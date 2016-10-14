package org.epis.minierp.controller.compras;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AddSupplierController extends HttpServlet {
    private static final long serialVersionUID = 1L;    
       
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        /*ProveedorDao proveedor = new ProveedorDao();
        List <EnP4mProveedor> proveedores = proveedor.getAllActive();*/
        
        //request.setAttribute("proveedores",proveedores);        
        request.getRequestDispatcher("/WEB-INF/compras/addSupplier.jsp").forward(request, response);
    }  
}
