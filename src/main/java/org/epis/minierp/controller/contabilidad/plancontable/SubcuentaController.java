package org.epis.minierp.controller.contabilidad.plancontable;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.contabilidad.CuentaDao;
import org.epis.minierp.model.EnP3mCuenta;

public class SubcuentaController extends HttpServlet
{
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if(request.getParameterMap().containsKey("cuenta"))
        {
            int cuentaId = Integer.parseInt(request.getParameter("cuenta"));
            CuentaDao dao = new CuentaDao();
            EnP3mCuenta cuenta = dao.getByIdActive(cuentaId);
            System.out.println(cuenta);
            request.setAttribute("cuenta", cuenta);
            request.getRequestDispatcher("/WEB-INF/contabilidad/plancontable/subcuenta.jsp").forward(request, response);
        }
        else
            response.sendRedirect(request.getContextPath() + "/secured/contabilidad/plan");
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("accion");
        int origen = Integer.parseInt(request.getParameter("origen"));
        int cuePad = Integer.parseInt(request.getParameter("cuePad"));
        int cueNiv = Integer.parseInt(request.getParameter("cueNiv"));
        String cueDes = request.getParameter("cueDes");
        String cueNum = request.getParameter("cueNum1") + request.getParameter("cueNum2");
        CuentaDao dao = new CuentaDao();
        switch(action) {
            case "create":
                EnP3mCuenta c = new EnP3mCuenta();
                c.setEnP3mCuenta(dao.getByIdActive(cuePad));
                c.setCueNiv(cueNiv);
                c.setCueDes(cueDes);
                c.setCueNum(cueNum);
                c.setEstRegCod('A');
                dao.save(c);
                break;
            case "update":
                
                break;
                
        }
        response.sendRedirect(request.getContextPath() + "/secured/contabilidad/plan/subcuenta?cuenta=" + origen);
    }
}
