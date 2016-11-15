package org.epis.minierp.controller.ventas;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.general.EnP1mEmpresaDao;
import org.epis.minierp.dao.general.EnP2mUnidadTransporteDao;
import org.epis.minierp.dao.general.TaGzzMotivoTrasladoDao;
import org.epis.minierp.dao.logistica.EnP2mTransportistaDao;
import org.epis.minierp.dao.ventas.EnP1mCatalogoRutaDao;
import org.epis.minierp.dao.ventas.EnP1mClienteDao;
import org.epis.minierp.dao.ventas.EnP1mFacturaVentaCabDao;
import org.epis.minierp.model.EnP1mCatalogoRuta;
import org.epis.minierp.model.EnP1mCliente;
import org.epis.minierp.model.EnP1mEmpresa;
import org.epis.minierp.model.EnP1mFacturaVentaCab;
import org.epis.minierp.model.EnP2mTransportista;
import org.epis.minierp.model.EnP2mUnidadTransporte;
import org.epis.minierp.model.TaGzzMotivoTraslado;

public class VentasFacturaController extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List <EnP1mFacturaVentaCab> facturasVenta = (new EnP1mFacturaVentaCabDao()).getAllActive();
        List <EnP2mTransportista> transportistas = (new EnP2mTransportistaDao()).getAllActive();
        List <EnP2mUnidadTransporte> unidades = (new EnP2mUnidadTransporteDao()).getAllActive();
        List <EnP1mCatalogoRuta> rutas = (new EnP1mCatalogoRutaDao()).getAllActive();
        List <EnP1mCliente> clientes = (new EnP1mClienteDao()).getAllActive();
        List <TaGzzMotivoTraslado> motivos = (new TaGzzMotivoTrasladoDao()).getAllActive();
        
        List <EnP1mEmpresa> e = new ArrayList<>();
        e.addAll((new EnP1mEmpresaDao()).getAll());
        
        EnP1mEmpresa em = e.get(0); //primera empresa por defecto
        
        request.setAttribute("facturasVenta", facturasVenta);
        request.setAttribute("transportistas", transportistas);
        request.setAttribute("unidades", unidades);
        request.setAttribute("rutas", rutas);
        request.setAttribute("clientes", clientes);
        request.setAttribute("remitente", em.getEmpNomCom());
        request.setAttribute("motivos", motivos);
        
        request.getRequestDispatcher("/WEB-INF/ventas/factura/factura.jsp").forward(request, response);
    }
}