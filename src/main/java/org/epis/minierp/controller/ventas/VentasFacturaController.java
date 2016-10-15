package org.epis.minierp.controller.ventas;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.general.EnP1mUsuarioDao;
import org.epis.minierp.dao.general.TaGzzMetodoPagoFacturaDao;
import org.epis.minierp.dao.general.TaGzzMonedaDao;
import org.epis.minierp.dao.general.TaGzzTipoPagoFacturaDao;
import org.epis.minierp.dao.ventas.EnP1mClienteDao;
import org.epis.minierp.dao.ventas.EnP1mFacturaVentaCabDao;
import org.epis.minierp.model.EnP1mCliente;
import org.epis.minierp.model.EnP1mFacturaVentaCab;
import org.epis.minierp.model.EnP1mUsuario;
import org.epis.minierp.model.TaGzzMetodoPagoFactura;
import org.epis.minierp.model.TaGzzMoneda;
import org.epis.minierp.model.TaGzzTipoPagoFactura;

public class VentasFacturaController extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EnP1mFacturaVentaCabDao dao = new EnP1mFacturaVentaCabDao();
        List<EnP1mFacturaVentaCab> facturas = dao.getAll();
        request.setAttribute("facturas", facturas);
        
        TaGzzTipoPagoFacturaDao tiposDao=new TaGzzTipoPagoFacturaDao();        
        List<TaGzzTipoPagoFactura> tipoPagos=tiposDao.getAllActive();
        TaGzzMetodoPagoFacturaDao metodoDao=new TaGzzMetodoPagoFacturaDao();
        List<TaGzzMetodoPagoFactura> metodosPago=metodoDao.getAll();        
        TaGzzMonedaDao monedaDao=new TaGzzMonedaDao();
        List<TaGzzMoneda> monedas=monedaDao.getAllActive();
   
        request.setAttribute("tipoPagos",tipoPagos);
        request.setAttribute("metodosPago",metodosPago);
        request.setAttribute("monedas",monedas);
   
        EnP1mClienteDao clienteDao=new EnP1mClienteDao();
        List<EnP1mCliente> clientes=clienteDao.getAll();
        EnP1mUsuarioDao userDao=new EnP1mUsuarioDao();
        List<EnP1mUsuario> users=userDao.getAllActive();
        request.setAttribute("clientes",clientes);
        request.setAttribute("users",users);
        
        request.getRequestDispatcher("/WEB-INF/ventas/factura/factura.jsp").forward(request, response);
    }

}

