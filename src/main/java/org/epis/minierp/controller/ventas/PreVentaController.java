package org.epis.minierp.controller.ventas;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<TaGzzEstadoFactura> estados = (new TaGzzEstadoFacturaDao().getAll());
        List<TaGzzMetodoPagoFactura> metodos = (new TaGzzMetodoPagoFacturaDao().getAll());
        List<TaGzzTipoPagoFactura> tipos = (new TaGzzTipoPagoFacturaDao().getAll());
        List<EnP1mPreventaCab> preventas = (new EnP1mPreventaCabDao().getAll());

        request.setAttribute("estados", estados);
        request.setAttribute("metodos", metodos);
        request.setAttribute("tipos", tipos);
        request.setAttribute("preventas", preventas);

        request.getRequestDispatcher("/WEB-INF/ventas/preventa/preventa.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String[] preventas = request.getParameterValues("preventas");
        String estado = request.getParameter("estFacCod");
        String metodo = request.getParameter("metPagCod");
        String tipo = request.getParameter("tipPagCod");
        String numLot = request.getParameter("numLot");
        String numCuo = request.getParameter("numCuo");
        
        System.out.println("Número de Lote: " + numLot);
        System.out.println("Estado: " + estado);
        System.out.println("Metodo de Pago: " + metodo);
        System.out.println("Tipo de Pago: " + tipo);
        if(numCuo != null)
            System.out.println("Número de cuotas: " + numCuo);
        System.out.println("Codigos de preventas seleccionadas");
        for (String s : preventas) {
            System.out.println(s);
        }
    }
}
