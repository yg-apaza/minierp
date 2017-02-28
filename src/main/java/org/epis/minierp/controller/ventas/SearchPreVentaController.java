package org.epis.minierp.controller.ventas;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.ventas.EnP1mPreventaCabDao;
import org.epis.minierp.model.EnP1mPreventaCab;
import org.epis.minierp.model.EnP1tPreventaDet;

public class SearchPreVentaController extends HttpServlet {
    EnP1mPreventaCabDao preVenCabDao;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        preVenCabDao = new EnP1mPreventaCabDao();
        
        int preVenCabCod = Integer.parseInt(request.getParameter("preVenCabCod"));
        EnP1mPreventaCab preventa = preVenCabDao.getById(preVenCabCod);
        JsonObject data = new JsonObject();
        
        String usuario = preventa.getEnP1mUsuario().getUsuNom() + " " +
                preventa.getEnP1mUsuario().getUsuApePat()+ " " +
                preventa.getEnP1mUsuario().getUsuApeMat();
        
        data.addProperty("cod", preventa.getPreVenCabCod());
        data.addProperty("cliNomCom", preventa.getEnP1mCliente().getCliNomCom());
        data.addProperty("usuNom", usuario);
        data.addProperty("tipDesDet", preventa.getTaGzzTipoDescuento().getTipDesDet());
        data.addProperty("preVenCabIgv", preventa.getPreVenCabIgv());
        data.addProperty("preVenPorDes", preventa.getPreVenPorDes());
        JsonArray detailList = new JsonArray();
        List <EnP1tPreventaDet> details = new ArrayList <>(preventa.getEnP1tPreventaDets());
        
        for(EnP1tPreventaDet detail: details) {
            JsonObject detailObject = new JsonObject();
            detailObject.addProperty("detCan", detail.getPreVenDetCan());
            detailObject.addProperty("proDet", detail.getEnP2mProducto().getProDet());
            detailObject.addProperty("preUniVen", detail.getPreVenDetValUni());
            detailObject.addProperty("detImp", detail.getPreVenDetCan()*detail.getPreVenDetValUni());
            detailList.add(detailObject);
        }
        
        data.add("detailList", detailList);
        
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(new Gson().toJson(data));   
    }
}