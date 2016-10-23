package org.epis.minierp.controller.contabilidad;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.contabilidad.BancosDAO;
import org.epis.minierp.dao.general.EnP1mEmpresaDao;

public class BancosController extends HttpServlet{
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BancosDAO bancosDAO = new BancosDAO();
        EnP1mEmpresaDao empDao = new EnP1mEmpresaDao();
        
        request.setAttribute("operaciones",bancosDAO.getBancos());
        request.setAttribute("empresa", empDao.getAll().get(0));
        request.setAttribute("totales", bancosDAO.getTotal());
        request.getRequestDispatcher("/WEB-INF/contabilidad/cajaBancos/bancos.jsp").forward(request, response);
    }
}
