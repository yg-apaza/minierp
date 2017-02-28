package org.epis.minierp.controller.ventas;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.business.ventas.EnP1mFacturaVentaBusiness;
import org.epis.minierp.dao.ventas.EnP1mFacturaVentaCabDao;
import org.epis.minierp.model.EnP1mFacturaVentaCab;
import org.epis.minierp.model.EnP1tFacturaVentaDet;

public class PartialRefundController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int facVenCabCod = Integer.parseInt(request.getParameter("code"));        
        EnP1mFacturaVentaCab bill = (new EnP1mFacturaVentaCabDao().getById(facVenCabCod));        
        List <EnP1tFacturaVentaDet> details = new ArrayList <>(bill.getEnP1tFacturaVentaDets());
        
        request.setAttribute("facVenCabCod", facVenCabCod);
        request.setAttribute("details", details);
        request.setAttribute("igv", bill.getFacVenCabIgv());
        request.setAttribute("descuento", bill.getFacVenPorDes());
        request.getRequestDispatcher("/WEB-INF/ventas/factura/partialRefund.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List <String> productsAmountsOld = Arrays.asList((request.getParameter("productsAmountsOld")).split("\\s*,\\s*"));
        List <String> productsAmountsNew = Arrays.asList((request.getParameter("productsAmountsNew")).split("\\s*,\\s*"));
        List <String> productsCodes = Arrays.asList((request.getParameter("productsCodes")).split("\\s*,\\s*"));
        List <String> productsPrices = Arrays.asList((request.getParameter("productsPrices")).split("\\s*,\\s*"));
        String facVenCabCodNew = request.getParameter("facVenCabCodNew");
        int facVenCabCodOld = Integer.parseInt(request.getParameter("facVenCabCodOld"));
        double facVenTot = Double.parseDouble(request.getParameter("facVenTot"));
        double facVenSubTot = Double.parseDouble(request.getParameter("facVenSubTot"));
        
        EnP1mFacturaVentaBusiness bussiness = new EnP1mFacturaVentaBusiness();
        bussiness.devolucionParcial(facVenCabCodOld, facVenCabCodNew, productsCodes, productsPrices, productsAmountsOld, productsAmountsNew, facVenSubTot, facVenTot);
        
        response.sendRedirect(request.getContextPath() + "/secured/ventas/factura");
    }
}
