package org.epis.minierp.controller.contabilidad.plancontable;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.contabilidad.CuentaDao;
import org.epis.minierp.dto.CuentaDto;

public class SubcuentaController extends HttpServlet
{
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Redireccionar al Plan Contable general si es que no hay cuenta
        int cuentaId = Integer.parseInt(request.getParameter("cuenta"));
        CuentaDao dao = new CuentaDao();
        CuentaDto cuenta = dao.getByIdActive(cuentaId);
        cuenta.setChilds(dao.getChildsActive(cuentaId));
        request.setAttribute("cuenta", cuenta);
        request.getRequestDispatcher("/WEB-INF/contabilidad/plancontable/subcuenta.jsp").forward(request, response);
    }
}
