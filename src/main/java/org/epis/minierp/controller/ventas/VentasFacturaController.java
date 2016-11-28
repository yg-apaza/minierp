package org.epis.minierp.controller.ventas;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.epis.minierp.dao.general.EnP1mEmpresaDao;
import org.epis.minierp.dao.general.EnP1mUsuarioDao;
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
import org.epis.minierp.model.EnP1mUsuario;
import org.epis.minierp.model.EnP2mTransportista;
import org.epis.minierp.model.EnP2mUnidadTransporte;
import org.epis.minierp.model.TaGzzMotivoTraslado;

public class VentasFacturaController extends HttpServlet {

    private static final long serialVersionUID = 1L;
    EnP1mFacturaVentaCabDao facVenCabDao;
    EnP2mTransportistaDao traDao;
    EnP2mUnidadTransporteDao uniTraDao;
    EnP1mCatalogoRutaDao catRutDao;
    EnP1mClienteDao cliDao;
    TaGzzMotivoTrasladoDao motTraDao;
    
    EnP1mUsuario usuario;
    EnP1mUsuarioDao usuDao;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        facVenCabDao = new EnP1mFacturaVentaCabDao();
        traDao = new EnP2mTransportistaDao();
        uniTraDao = new EnP2mUnidadTransporteDao();
        catRutDao = new EnP1mCatalogoRutaDao();
        cliDao = new EnP1mClienteDao();
        motTraDao = new TaGzzMotivoTrasladoDao();
        usuDao = new EnP1mUsuarioDao();
        
        HttpSession session = request.getSession(true);
        usuario = (EnP1mUsuario) session.getAttribute("usuario");
        int tipUsuCod = usuario.getTaGzzTipoUsuario().getTipUsuCod();
        String usuCod = usuario.getUsuCod();
        
        List <EnP1mEmpresa> e = new ArrayList<>();
        e.addAll((new EnP1mEmpresaDao()).getAll());
        
        EnP1mEmpresa em = e.get(0); //primera empresa por defecto
        
        request.setAttribute("transportistas", traDao.getAllActive());
        request.setAttribute("unidades", uniTraDao.getAllActive());
        request.setAttribute("rutas", catRutDao.getAllActive());
        request.setAttribute("remitente", em.getEmpNomCom());
        request.setAttribute("motivos", motTraDao.getAllActive());
        
        switch(tipUsuCod){
            case 2://Vendedor
                request.setAttribute("facturasVenta", facVenCabDao.getAllActive4UsuCod(usuCod));
                request.setAttribute("clientes", usuDao.getAllClientes4UsuCod(usuCod));
                break;
            default:
                request.setAttribute("facturasVenta", facVenCabDao.getAllActive());
                request.setAttribute("clientes", cliDao.getAllActive());
                break;
        }
        
        request.getRequestDispatcher("/WEB-INF/ventas/factura/factura.jsp").forward(request, response);
    }
}