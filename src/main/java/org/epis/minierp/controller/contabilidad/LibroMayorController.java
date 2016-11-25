package org.epis.minierp.controller.contabilidad;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.contabilidad.CuentaDao;
import org.epis.minierp.dao.contabilidad.LibroDiarioViewDao;
import org.epis.minierp.dao.general.EnP1mEmpresaDao;


public class LibroMayorController extends HttpServlet{
    private static final long serialVersionUID = 1L;
    String codigo_cuenta ="10";
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        LibroDiarioViewDao libroDiarioDAO = new LibroDiarioViewDao();
        
        EnP1mEmpresaDao empDao = new EnP1mEmpresaDao();
        request.setAttribute("empresa", empDao.getAll().get(0));
        request.setAttribute("cuenta", new CuentaDao().getByNumNivActive(codigo_cuenta,2));
        System.out.println(libroDiarioDAO.getAllNiv(codigo_cuenta));
        request.setAttribute("operaciones",libroDiarioDAO.getAllNiv(codigo_cuenta));
        //request.setAttribute("totales", libroMayorDAO.getTotal(codigo_cuenta));
        request.getRequestDispatcher("/WEB-INF/contabilidad/libroMayor/libroMayor.jsp").forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String codCue = request.getParameter("codCue");
            codigo_cuenta = codCue;
            response.sendRedirect(request.getContextPath() + "/secured/contabilidad/libroMayor");
    }
}
