package org.epis.minierp.controller.perifericos;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.logistica.EnP2mProductoDao;

public class AddStockController extends HttpServlet
{	
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EnP2mProductoDao dao = new EnP2mProductoDao();
        //dao.increaseStock(Integer.parseInt(request.getParameter("p")));
        request.getRequestDispatcher("/WEB-INF/perifericos/inventarioBarras.jsp").forward(request, response);
    }
}