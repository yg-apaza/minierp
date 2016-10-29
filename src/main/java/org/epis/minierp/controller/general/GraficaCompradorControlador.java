package org.epis.minierp.controller.general;

import java.io.IOException;
import java.util.Calendar;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.compras.EnP4tFacturaCompraDetDao;
import org.epis.minierp.dao.logistica.EnP2mProductoDao;
import org.epis.minierp.dao.ventas.EnP1tFacturaVentaDetDao;
import org.epis.minierp.model.EnP1tFacturaVentaDet;
import org.epis.minierp.model.EnP4tFacturaCompraDet;

public class GraficaCompradorControlador extends HttpServlet {

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String proCod = request.getParameter("proCod");
        
        EnP2mProductoDao productSelec = new EnP2mProductoDao();
        EnP4tFacturaCompraDetDao fC = new EnP4tFacturaCompraDetDao();
        List<EnP4tFacturaCompraDet> facturaCompra = fC.getByProduc(proCod);
        System.out.println("Las factura detalle compra del producto son " + facturaCompra);
        
        Collections.sort(facturaCompra, new Comparator<EnP4tFacturaCompraDet>(){

            @Override
            public int compare(EnP4tFacturaCompraDet o1, EnP4tFacturaCompraDet o2) {
                return o1.getEnP4mFacturaCompraCab().getFacComCabFec().compareTo(o2.getEnP4mFacturaCompraCab().getFacComCabFec());
            }
            
        });
        
        EnP1tFacturaVentaDetDao fV = new EnP1tFacturaVentaDetDao();
        List<EnP1tFacturaVentaDet> facturaVenta = fV.getByProduc(proCod);
        System.out.println("Las factura detalle venta del producto son " + facturaVenta);
        
        Collections.sort(facturaVenta, new Comparator<EnP1tFacturaVentaDet>(){

            @Override
            public int compare(EnP1tFacturaVentaDet o1, EnP1tFacturaVentaDet o2) {
                return o1.getEnP1mFacturaVentaCab().getFacVenCabFec().compareTo(o2.getEnP1mFacturaVentaCab().getFacVenCabFec());
            }
            
        });
        
        Calendar hoy = Calendar.getInstance();
        Date dateToday = hoy.getTime();
        hoy.add(Calendar.DAY_OF_YEAR, -30);
        Date dateAgo = hoy.getTime();

        Date fecha = dateToday;
        double sumaCantidad = productSelec.getById(proCod).getProStk();
        Map<Date, Double> stockTimeProd = new TreeMap<>();
        
        while(fecha.after(dateAgo)){
            // fi fecha != fecha ant -> poner a map
            if(fecha.compareTo(fecha) == 1)
                System.out.println("Son diferntes?");
            // Si compra -> stockTimeProd -
            // Si venta -> stockTimeProd +
        }
        
        response.getWriter().write("Holi");
    }
}
