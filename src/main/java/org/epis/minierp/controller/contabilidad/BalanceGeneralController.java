package org.epis.minierp.controller.contabilidad;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.contabilidad.BalanceDao;

public class BalanceGeneralController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BalanceDao dao = new BalanceDao();
        System.out.println(dao.balanceGeneralFormat());
        List<List<List>> lista = dao.balanceGeneralFormat();
        request.setAttribute("lista", lista);
        
        request.getRequestDispatcher("/WEB-INF/contabilidad/balanceGeneral.jsp").forward(request, response);
    }
}