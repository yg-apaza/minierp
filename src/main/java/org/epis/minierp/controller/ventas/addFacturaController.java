package org.epis.minierp.controller.ventas;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.general.TaGzzMetodoPagoFacturaDao;
import org.epis.minierp.dao.general.TaGzzMonedaDao;
import org.epis.minierp.dao.general.TaGzzTipoPagoFacturaDao;
import org.epis.minierp.dao.ventas.EnP1mUsuarioDao;
import org.epis.minierp.model.EnP1mUsuario;
import org.epis.minierp.model.TaGzzMetodoPagoFactura;
import org.epis.minierp.model.TaGzzMoneda;
import org.epis.minierp.model.TaGzzTipoPagoFactura;

public class addFacturaController extends HttpServlet
{	
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        TaGzzTipoPagoFacturaDao tiposDao=new TaGzzTipoPagoFacturaDao();        
        List<TaGzzTipoPagoFactura> tipoPagos=tiposDao.getAllActive();
        TaGzzMetodoPagoFacturaDao metodoDao=new TaGzzMetodoPagoFacturaDao();
        List<TaGzzMetodoPagoFactura> metodosPago=metodoDao.getAll();
        System.out.println("LOL:" +metodosPago.size());
        TaGzzMonedaDao monedaDao=new TaGzzMonedaDao();
        List<TaGzzMoneda> monedas=monedaDao.getAllActive();
        request.setAttribute("tipoPagos",tipoPagos);
        request.setAttribute("metodosPago",metodosPago);
        request.setAttribute("monedas",monedas);
        request.getRequestDispatcher("/WEB-INF/ventas/factura/addFactura.jsp").forward(request, response);
    }
}
