package org.epis.minierp.controller.ventas;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.business.ventas.EnP1mPreventaBusiness;
import org.epis.minierp.dao.general.TaGzzEstadoFacturaDao;
import org.epis.minierp.dao.general.TaGzzMetodoPagoFacturaDao;
import org.epis.minierp.dao.general.TaGzzTipoPagoFacturaDao;
import org.epis.minierp.dao.ventas.EnP1mPreventaCabDao;
import org.epis.minierp.model.TaGzzEstadoFactura;
import org.epis.minierp.model.TaGzzMetodoPagoFactura;
import org.epis.minierp.model.TaGzzTipoPagoFactura;
import org.epis.minierp.model.EnP1mPreventaCab;

public class PreVentaController extends HttpServlet {

    private static final long serialVersionUID = 1L;
    EnP1mPreventaBusiness preventaBusiness;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<TaGzzEstadoFactura> estados = (new TaGzzEstadoFacturaDao().getAll());
        List<TaGzzMetodoPagoFactura> metodos = (new TaGzzMetodoPagoFacturaDao().getAll());
        List<TaGzzTipoPagoFactura> tipos = (new TaGzzTipoPagoFacturaDao().getAll());
        List<EnP1mPreventaCab> preventas = (new EnP1mPreventaCabDao().getAllActive());

        request.setAttribute("estados", estados);
        request.setAttribute("metodos", metodos);
        request.setAttribute("tipos", tipos);
        request.setAttribute("preventas", preventas);

        request.getRequestDispatcher("/WEB-INF/ventas/preventa/preventa.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        preventaBusiness = new EnP1mPreventaBusiness();
        
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
        
        //Tope de Factura = 23
        preventaBusiness.preVenta2Venta4Lotes(preventas, iniFacVenCabCod, estFacCod, 
                metPagCod, tipPagCod, facVenCabModVen, pagCuoNum, 23);
        
        response.sendRedirect(request.getContextPath() + "/secured/ventas/factura");
    }
}
