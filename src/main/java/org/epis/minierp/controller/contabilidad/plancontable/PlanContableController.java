package org.epis.minierp.controller.contabilidad.plancontable;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.contabilidad.CuentaDao;
import org.epis.minierp.dto.CuentaDto;

public class PlanContableController extends HttpServlet
{	
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CuentaDao dao = new CuentaDao();
        List<CuentaDto> cuentas = dao.getMainChilds();
        System.out.println(cuentas.size());
        request.setAttribute("cuentas", cuentas);
        request.getRequestDispatcher("/WEB-INF/contabilidad/plancontable/planContable.jsp").forward(request, response);
    }
}