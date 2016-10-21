package org.epis.minierp.controller.compras;

import com.google.gson.Gson;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.compras.EnP4mProveedorDao;
import org.epis.minierp.model.EnP4mProveedor;

public class BusquedaProveedorController extends HttpServlet
{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String proCod = request.getParameter("proCod");
        // Deberia botar solo proveedores activos
        EnP4mProveedor proveedor = (new EnP4mProveedorDao()).getById(proCod);
        Map<String, Object> data = new HashMap<String, Object>();
        if(proveedor != null)
        {
            data.put("proCod", proveedor.getProCod());
            data.put("proDet", proveedor.getProDet());
        }
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(new Gson().toJson(data));
    }
}