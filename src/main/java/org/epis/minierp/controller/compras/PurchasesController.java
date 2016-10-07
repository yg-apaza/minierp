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
import org.epis.minierp.model.MetodoPagoFactura;
import org.epis.minierp.model.Moneda;
import org.epis.minierp.model.Proveedor;
import org.epis.minierp.model.TipoPagoFactura;

public class PurchasesController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List <Proveedor> proveedores = (new ProveedorDao()).getAll();
        List <MetodoPagoFactura> metodosPagoFactura = (new MetodoPagoFacturaDao()).getAll();
        List <Moneda> monedas = (new MonedaDao()).getAll();
        List <TipoPagoFactura> tiposPagoFactura = (new TipoPagoFacturaDao()).getAll();     
        
        request.setAttribute("proveedores", proveedores);
        request.setAttribute("metodosPagoFactura", metodosPagoFactura);
        request.setAttribute("monedas", monedas);
        request.setAttribute("tiposPagoFactura", tiposPagoFactura);
        
        request.getRequestDispatcher("/WEB-INF/compras/purchases.jsp").forward(request, response);
    }
}
