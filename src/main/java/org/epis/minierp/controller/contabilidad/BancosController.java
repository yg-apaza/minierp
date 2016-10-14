package org.epis.minierp.controller.contabilidad;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.contabilidad.BancosDAO;

public class BancosController extends HttpServlet{
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BancosDAO bancosDAO = new BancosDAO();
        request.setAttribute("operaciones",bancosDAO.getView());
        request.getRequestDispatcher("/WEB-INF/contabilidad/cajaBancos/bancos.jsp").forward(request, response);
    }
}
