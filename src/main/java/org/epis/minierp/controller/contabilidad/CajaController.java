package org.epis.minierp.controller.contabilidad;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.contabilidad.cajaBancos.CajaDAO;

public class CajaController extends HttpServlet{
    private static final long serialVersionUID = 1L;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CajaDAO cajaDAO = new CajaDAO();
        request.setAttribute("operaciones",cajaDAO.getView());
        request.getRequestDispatcher("/WEB-INF/contabilidad/cajaBancos/caja.jsp").forward(request, response);
    }
}

