package org.epis.minierp.controller.contabilidad;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.contabilidad.LibroMayorDAO;
import org.epis.minierp.dao.general.EnP1mEmpresaDao;

public class LibroMayorController extends HttpServlet{
    private static final long serialVersionUID = 1L;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        LibroMayorDAO libroMayorDAO = new LibroMayorDAO();
        
        EnP1mEmpresaDao empDao = new EnP1mEmpresaDao();
        request.setAttribute("operaciones",libroMayorDAO.getLibroMayor());
        request.setAttribute("empresa", empDao.getAll().get(0));
        request.getRequestDispatcher("/WEB-INF/contabilidad/libroMayor/libroMayor.jsp").forward(request, response);
    }
}
