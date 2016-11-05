package org.epis.minierp.controller.compras;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import java.io.IOException;
import java.util.List;
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
        String action = request.getParameter("action");
        List <EnP4mProveedor> proveedores;
        JsonObject data;
        JsonArray suppliers;
        EnP4mProveedor proveedor;
        
        switch(action) {
            case "all": // Razón Social o Nombre Comercial
                proveedores = (new EnP4mProveedorDao()).getAllActive();
                data = new JsonObject();                
                suppliers = new JsonArray();
                
                for(EnP4mProveedor p: proveedores) {
                    JsonObject supplier = new JsonObject();
                    supplier.addProperty("prvRazSoc",p.getPrvRazSoc());
                    supplier.addProperty("prvNomCom",p.getPrvNomCom());
                    suppliers.add(supplier);
                }
                
                data.add("suppliers", suppliers);
                response.setContentType("application/json");
                response.setCharacterEncoding("UTF-8");
                response.getWriter().write(new Gson().toJson(data));                
                break;
            
            case "search":
                int prvTyp = Integer.parseInt(request.getParameter("prvTyp"));
                String prvDes = request.getParameter("prvDes");
                proveedor = null;

                if(prvTyp == 1) { //Razón Social
                    proveedor = (new EnP4mProveedorDao()).getByRazonSocial(prvDes);
                } else if(prvTyp == 2) { //Nombre Comercial
                    proveedor = (new EnP4mProveedorDao()).getByNombreComercial(prvDes);
                }
                
                data = new JsonObject(); 
                if(proveedor != null) {
                    data.addProperty("prvCod", proveedor.getPrvCod());
                }
                
                response.setContentType("application/json");
                response.setCharacterEncoding("UTF-8");
                response.getWriter().write(new Gson().toJson(data));
                break;
        }
    }
}