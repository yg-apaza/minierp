package org.epis.minierp.controller.ventas;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PartialRefundController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String facVenCabCod = request.getParameter("code");        
        System.out.println("PartialRefundController " + facVenCabCod);
                
        /*List <EnP1mFacturaVentaCab> facturasVenta = (new EnP1mFacturaVentaCabDao()).getAllActive();
        request.setAttribute("facturasVenta", facturasVenta);*/
        
        request.getRequestDispatcher("/WEB-INF/ventas/factura/partialRefund.jsp").forward(request, response);
    }    
}
