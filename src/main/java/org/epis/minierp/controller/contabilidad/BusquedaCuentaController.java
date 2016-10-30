package org.epis.minierp.controller.contabilidad;

import com.google.gson.Gson;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.contabilidad.CuentaDao;
import org.epis.minierp.model.EnP3mCuenta;

public class BusquedaCuentaController extends HttpServlet
{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String cueNum = request.getParameter("cueNum");
        EnP3mCuenta cuenta = (new CuentaDao()).getByNumActive(cueNum);
        Map<String, Object> data = new HashMap<String, Object>();
        if(cuenta != null)
        {
            data.put("cueCod", cuenta.getCueCod());
            data.put("cueNum", cuenta.getCueNum());
            data.put("cueDes", cuenta.getCueDes());
        }
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(new Gson().toJson(data));
    }
}
