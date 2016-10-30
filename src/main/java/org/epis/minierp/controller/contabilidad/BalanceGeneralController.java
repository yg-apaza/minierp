package org.epis.minierp.controller.contabilidad;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.business.contabilidad.Balance;

public class BalanceGeneralController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Balance bg = new Balance();
        List<List<List>> lista = bg.balanceGeneralFormat();
        request.setAttribute("lista", lista);
        
        request.getRequestDispatcher("/WEB-INF/contabilidad/balanceGeneral.jsp").forward(request, response);
    }
}