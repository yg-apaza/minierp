package org.epis.minierp.controller.compras;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.compras.EnP4mFacturaCompraCabDao;
import org.epis.minierp.model.EnP4mFacturaCompraCab;

public class PurchaseController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List <EnP4mFacturaCompraCab> facturasCompra = (new EnP4mFacturaCompraCabDao()).getAll();
        request.setAttribute("facturasCompra", facturasCompra);
        
        request.getRequestDispatcher("/WEB-INF/compras/factura/purchase.jsp").forward(request, response);
    }
}
