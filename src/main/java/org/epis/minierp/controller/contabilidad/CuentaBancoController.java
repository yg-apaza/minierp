package org.epis.minierp.controller.contabilidad;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.contabilidad.BancoDao;
import org.epis.minierp.dao.contabilidad.CuentaBancoDao;

public class CuentaBancoController extends HttpServlet
{
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CuentaBancoDao dao = new CuentaBancoDao();
        BancoDao bancoDao = new BancoDao();
        request.setAttribute("cuentasbanco", dao.getAllActive());
        request.setAttribute("bancos", bancoDao.getAllActive());
        request.getRequestDispatcher("/WEB-INF/contabilidad/cuentaBanco.jsp").forward(request, response);
    }
}
