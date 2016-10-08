package org.epis.minierp.controller.contabilidad.plancontable;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.contabilidad.CuentaDao;
import org.epis.minierp.model.EnP3mCuenta;

public class PlanContableController extends HttpServlet
{	
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CuentaDao dao = new CuentaDao();
        request.setAttribute("cuentas", dao.getAllActive());
        request.getRequestDispatcher("/WEB-INF/contabilidad/plancontable/planContable.jsp").forward(request, response);
    }
}