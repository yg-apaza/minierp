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
}
