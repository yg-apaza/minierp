package org.epis.minierp.controller.compras;

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
import org.epis.minierp.dao.compras.EnP4mFacturaCompraCabDao;
import org.epis.minierp.dao.logistica.EnP2mInventarioCabDao;
import org.epis.minierp.model.EnP2mInventarioCab;
import org.epis.minierp.model.EnP2tInventarioDet;
import org.epis.minierp.model.EnP4mFacturaCompraCab;
import org.epis.minierp.model.EnP4tFacturaCompraDet;

public class SearchInventoryController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String invCabCod = request.getParameter("invCabCod");
        System.out.println("Code: " + invCabCod);
        EnP2mInventarioCab bill = (new EnP2mInventarioCabDao()).getById(invCabCod);
        JsonObject data = new JsonObject(); 
        
        data.addProperty("cod", bill.getInvCabCod());
        data.addProperty("fec", bill.getInvCabFec().toString());
        data.addProperty("usuNom", bill.getEnP1mUsuario().getUsuNom());
        data.addProperty("usuCod", bill.getEnP1mUsuario().getUsuCod());
        
        JsonArray detailList = new JsonArray();
        List <EnP2tInventarioDet> details = new ArrayList <>(bill.getEnP2tInventarioDets());
        
        for(EnP2tInventarioDet detail: details) {
            JsonObject detailObject = new JsonObject();
            detailObject.addProperty("proDet", detail.getEnP2mProducto().getProDet());
            detailObject.addProperty("proDif", detail.getInvDetDifStk());
            detailObject.addProperty("proTot", detail.getInvDetDifStk()+detail.getEnP2mProducto().getProStkRea());
            detailObject.addProperty("proVir", detail.getEnP2mProducto().getProStkRea());
            if(detail.getTaGzzTipoFallaProducto()!=null)
                detailObject.addProperty("proFal", detail.getTaGzzTipoFallaProducto().getTipFallProDet());
            detailList.add(detailObject);
        }
        
        data.add("detailList", detailList);
        
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(new Gson().toJson(data));   
    }
}