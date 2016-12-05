package org.epis.minierp.controller.ventas;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.epis.minierp.business.ventas.EnP1mPreventaBusiness;
import org.epis.minierp.dao.general.EnP1mEmpresaDao;
import org.epis.minierp.dao.general.TaGzzEstadoFacturaDao;
import org.epis.minierp.dao.general.TaGzzMetodoPagoFacturaDao;
import org.epis.minierp.dao.general.TaGzzTipoPagoFacturaDao;
import org.epis.minierp.dao.ventas.EnP1mPreventaCabDao;
import org.epis.minierp.model.TaGzzEstadoFactura;
import org.epis.minierp.model.TaGzzMetodoPagoFactura;
import org.epis.minierp.model.TaGzzTipoPagoFactura;
import org.epis.minierp.model.EnP1mPreventaCab;
import org.epis.minierp.model.EnP1mUsuario;

public class PreVentaController extends HttpServlet {

    private static final long serialVersionUID = 1L;
    EnP1mPreventaBusiness preventaBusiness;
    EnP1mEmpresaDao empDao;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        EnP1mUsuario usuario = (EnP1mUsuario) session.getAttribute("usuario");
        int tipUsuCod = usuario.getTaGzzTipoUsuario().getTipUsuCod();
        String usuCod = usuario.getUsuCod();
        
        List<TaGzzEstadoFactura> estados = (new TaGzzEstadoFacturaDao().getAll());
        List<TaGzzMetodoPagoFactura> metodos = (new TaGzzMetodoPagoFacturaDao().getAll());
        List<TaGzzTipoPagoFactura> tipos = (new TaGzzTipoPagoFacturaDao().getAll());
        List<EnP1mPreventaCab> preventas;
        
        switch (tipUsuCod) {
            case 2://Vendedor
                preventas = (new EnP1mPreventaCabDao().getAllActive4UsuCod(usuCod));
                break;
            default:
                preventas = (new EnP1mPreventaCabDao().getAllActive());
                break;
        }

        request.setAttribute("estados", estados);
        request.setAttribute("metodos", metodos);
        request.setAttribute("tipos", tipos);
        request.setAttribute("preventas", preventas);

        request.getRequestDispatcher("/WEB-INF/ventas/preventa/preventa.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        preventaBusiness = new EnP1mPreventaBusiness();
        empDao = new EnP1mEmpresaDao();
        
        String[] preventas = request.getParameterValues("preventas");
        int estFacCod = Integer.parseInt(request.getParameter("estFacCod"));
        int metPagCod = Integer.parseInt(request.getParameter("metPagCod"));
        int tipPagCod = Integer.parseInt(request.getParameter("tipPagCod"));
        String iniFacVenCabCod = request.getParameter("iniFacVenCabCod");
        char facVenCabModVen = request.getParameter("facVenCabModVen").charAt(0);
        String numCuo = request.getParameter("numCuo");
        int pagCuoNum;
        if(numCuo == null){
            pagCuoNum = 0;
        }else{
            pagCuoNum = Integer.parseInt(numCuo);
        }
        
        //maxDet4FacVen std = 15
        int maxDet4FacVen = 15;
        if(facVenCabModVen == 'F') {
            maxDet4FacVen = empDao.getById(01).getEmpNumDetFacVen();
        }
        if(facVenCabModVen == 'B') {
            maxDet4FacVen = empDao.getById(01).getEmpNumDetBolVen();
        }
        preventaBusiness.preVenta2Venta4Lotes(preventas, iniFacVenCabCod, estFacCod, 
                metPagCod, tipPagCod, facVenCabModVen, pagCuoNum, maxDet4FacVen);
        
        response.sendRedirect(request.getContextPath() + "/secured/ventas/factura");
    }
}
