package org.epis.minierp.controller.ventas;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.logistica.EnP2mProductoDao;
import org.epis.minierp.dao.ventas.EnP1mFacturaVentaCabDao;
import org.epis.minierp.model.EnP1mFacturaVentaCab;
import org.epis.minierp.model.EnP1tFacturaVentaDet;
import org.epis.minierp.model.EnP2mProducto;

public class PartialRefundController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String facVenCabCod = request.getParameter("code");        
        EnP1mFacturaVentaCab bill = (new EnP1mFacturaVentaCabDao().getById(facVenCabCod));        
        List <EnP1tFacturaVentaDet> details = new ArrayList <>(bill.getEnP1tFacturaVentaDets());
        
        for(EnP1tFacturaVentaDet detail: details) {            
            EnP2mProducto product = detail.getEnP2mProducto();
            product.setProStk(product.getProStk() + detail.getFacVenDetCan());    
        }
        
        List <EnP2mProducto> productos = (new EnP2mProductoDao()).getAllActive();
        
        request.setAttribute("facVenCabCod", facVenCabCod);
        request.setAttribute("details", details);
        request.setAttribute("productos", productos);
        request.setAttribute("desVal", bill.getFacVenPorDes());
        request.setAttribute("desDes", bill.getTaGzzTipoDescuento().getTipDesDet());
        request.setAttribute("empIgv", bill.getFacVenCabIgv());
        request.getRequestDispatcher("/WEB-INF/ventas/factura/partialRefund.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List <String> productsAmounts = Arrays.asList((request.getParameter("productsAmounts")).split("\\s*,\\s*"));
        List <String> productsCodes = Arrays.asList((request.getParameter("productsCodes")).split("\\s*,\\s*"));
        List <String> productsPrices = Arrays.asList((request.getParameter("productsPrices")).split("\\s*,\\s*"));
        String facVenCabCodNew = request.getParameter("facVenCabCodNew");
        String facVenCabCodOld = request.getParameter("facVenCabCodOld");
        
        
    }
}
