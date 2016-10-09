package org.epis.minierp.controller.compras;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.compras.MetodoPagoFacturaDao;
import org.epis.minierp.dao.compras.MonedaDao;
import org.epis.minierp.dao.compras.ProveedorDao;
import org.epis.minierp.dao.compras.TipoPagoFacturaDao;
import org.epis.minierp.model.TaGzzMetodoPagoFactura;
import org.epis.minierp.model.TaGzzMoneda;
import org.epis.minierp.model.EnP4mProveedor;
import org.epis.minierp.model.TaGzzTipoPagoFactura;

public class PurchasesController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List <EnP4mProveedor> proveedores = (new ProveedorDao()).getAll();
        List <TaGzzMetodoPagoFactura> metodosPagoFactura = (new MetodoPagoFacturaDao()).getAll();
        List <TaGzzMoneda> monedas = (new MonedaDao()).getAll();
        List <TaGzzTipoPagoFactura> tiposPagoFactura = (new TipoPagoFacturaDao()).getAll();     
        
        request.setAttribute("proveedores", proveedores);
        request.setAttribute("metodosPagoFactura", metodosPagoFactura);
        request.setAttribute("monedas", monedas);
        request.setAttribute("tiposPagoFactura", tiposPagoFactura);
        
        request.getRequestDispatcher("/WEB-INF/compras/purchases.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String facComCabCod = request.getParameter("facComCabCod");
        String proCod = request.getParameter("proCod");
        String facComCabFec = request.getParameter("facComCabFec");
        int monCod = Integer.parseInt(request.getParameter("monCod"));
        int tipPagCod = Integer.parseInt(request.getParameter("tipPagCod"));
        int metPagCod = Integer.parseInt(request.getParameter("metPagCod"));
        String facComCabObs = request.getParameter("facComCabObs");
        int facComCabIgv = Integer.parseInt(request.getParameter("facComCabIgv"));
        double facComCabTot = Double.parseDouble(request.getParameter("facComCabTot"));
        double facComCabDes = Double.parseDouble(request.getParameter("facComCabDes"));
        double facComCabSubTot = Double.parseDouble(request.getParameter("facComCabSubTot"));
        
        System.out.println("Numero Extraído " + facComCabCod);
        System.out.println("Codigo Extraído " + proCod);
        System.out.println("Fecha Extraído " + facComCabFec);
        System.out.println("Moneda Extraído " + monCod);
        System.out.println("Tipo Pago Extraído " + tipPagCod);
        System.out.println("Metodo Pago Extraído " + metPagCod);
        System.out.println("Observaciones Extraídas " + facComCabObs);
        System.out.println("IGV Extraído " + facComCabIgv);
        System.out.println("Total Extraído " + facComCabTot);
        System.out.println("Descuento Extraído " + facComCabDes);
        System.out.println("Subtotal Extraído " + facComCabSubTot);
        
        response.sendRedirect(request.getContextPath() + "/secured/compras");
    }
}
