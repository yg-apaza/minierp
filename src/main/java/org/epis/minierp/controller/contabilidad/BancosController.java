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
    String codigo_cuenta ="10410";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BancosDAO bancosDAO = new BancosDAO();
        EnP1mEmpresaDao empDao = new EnP1mEmpresaDao();
        
        request.setAttribute("operaciones",bancosDAO.getBancos(codigo_cuenta));
        request.setAttribute("empresa", empDao.getAll().get(0));
        request.setAttribute("totales", bancosDAO.getTotal(codigo_cuenta));
        request.setAttribute("cuenta", bancosDAO.getCuenta(codigo_cuenta));
        request.getRequestDispatcher("/WEB-INF/contabilidad/cajaBancos/bancos.jsp").forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String codCue = request.getParameter("codCue");
            codigo_cuenta = codCue;
            response.sendRedirect(request.getContextPath() + "/secured/contabilidad/bancos");
    }
}
