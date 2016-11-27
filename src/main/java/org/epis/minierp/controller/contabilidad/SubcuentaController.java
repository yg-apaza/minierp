package org.epis.minierp.controller.contabilidad;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.business.contabilidad.CuentaBusiness;
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
        
        CuentaBusiness business = new CuentaBusiness();
        switch(action) {
            case "create":
                int cuePad = Integer.parseInt(request.getParameter("cuePad"));
                int cueNiv = Integer.parseInt(request.getParameter("cueNiv"));
                String cueDes = request.getParameter("cueDes");
                String cueNum = request.getParameter("cueNum1") + request.getParameter("cueNum2");
                String cueAmaDeb = request.getParameter("cueAmaDeb");
                String cueAmaHab = request.getParameter("cueAmaHab");
                business.create(cuePad, cueNiv, cueDes, cueNum, cueAmaDeb, cueAmaHab);
                break;
            case "update":
                int updateCueCod = Integer.parseInt(request.getParameter("cueCod"));
                String updateCueDes = request.getParameter("cueDes");
                String updateCueAmaDeb = request.getParameter("cueAmaDeb");
                String updateCueAmaHab = request.getParameter("cueAmaHab");
                business.update(updateCueCod, updateCueDes, updateCueAmaDeb, updateCueAmaHab);
                break;
            case "delete":
                int deleteCueCod = Integer.parseInt(request.getParameter("cueCod"));
                business.delete(deleteCueCod);
        }
        response.sendRedirect(request.getContextPath() + "/secured/contabilidad/plan/subcuenta?cuenta=" + origen);
    }
}
