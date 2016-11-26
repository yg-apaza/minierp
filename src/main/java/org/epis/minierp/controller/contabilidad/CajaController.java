package org.epis.minierp.controller.contabilidad;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.contabilidad.CajaDAO;
import org.epis.minierp.dao.general.EnP1mEmpresaDao;

public class CajaController extends HttpServlet{
    private static final long serialVersionUID = 1L;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CajaDAO cajaDAO = new CajaDAO();
        EnP1mEmpresaDao empDao = new EnP1mEmpresaDao();
        
        request.setAttribute("operaciones",cajaDAO.getCaja());
        request.setAttribute("empresa", empDao.getAll().get(0));
        request.setAttribute("totales", cajaDAO.getTotal());
        request.setAttribute("periodo", cajaDAO.getPeriodo());
        request.getRequestDispatcher("/WEB-INF/contabilidad/cajaBancos/caja.jsp").forward(request, response);
    }
}

