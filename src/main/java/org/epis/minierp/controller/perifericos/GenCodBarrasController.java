package org.epis.minierp.controller.perifericos;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.perifericos.CodigoBarrasDao;

public class GenCodBarrasController extends HttpServlet
{	
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/perifericos/genCodBarras.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        File file = new File(getServletContext().getRealPath("/img/barcodes"), "temp.png");
        CodigoBarrasDao daoCodBar = new CodigoBarrasDao();
        daoCodBar.saveCodeBar(request.getParameter("proCod"), file);
        ((HttpServletResponse)response).sendRedirect("./genCodBarras");
    }
}