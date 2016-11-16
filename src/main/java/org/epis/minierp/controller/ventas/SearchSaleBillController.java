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
import org.epis.minierp.dao.general.EnP1mUsuarioDao;
import org.epis.minierp.dao.ventas.EnP1mFacturaVentaCabDao;
import org.epis.minierp.model.EnP1mCliente;
import org.epis.minierp.model.EnP1mFacturaVentaCab;
import org.epis.minierp.model.EnP1mUsuario;
import org.epis.minierp.model.EnP1tFacturaVentaDet;

public class SearchSaleBillController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String facVenCabCod = request.getParameter("facVenCabCod");
        EnP1mFacturaVentaCab bill = (new EnP1mFacturaVentaCabDao()).getById(facVenCabCod);
        JsonObject data = new JsonObject(); 
        
        EnP1mUsuario u = bill.getEnP1mUsuario();
        String vendedor = u.getUsuNom() + " " + u.getUsuApePat() + " " + u.getUsuApeMat();
        
        EnP1mCliente c = bill.getEnP1mCliente();
        String cliente = c.getCliNomCom() + " " + c.getCliApePat() + " " + c.getCliApeMat();
        
        data.addProperty("codFacVen", bill.getFacVenCabCod());
        data.addProperty("preVenCabIgv", bill.getFacVenCabIgv());
        data.addProperty("facVenCabUsuNom", vendedor);
        data.addProperty("facVenCabCliNomCom", cliente);
        data.addProperty("tipDesDet", bill.getTaGzzTipoDescuento().getTipDesDet());
        data.addProperty("facVenPorDes", bill.getFacVenPorDes());
        
        JsonArray detailList = new JsonArray();
        List <EnP1tFacturaVentaDet> details = new ArrayList <>(bill.getEnP1tFacturaVentaDets());
        
        for(EnP1tFacturaVentaDet detail: details) {
            JsonObject detailObject = new JsonObject();
            detailObject.addProperty("detCan", detail.getFacVenDetCan());
            detailObject.addProperty("proDet", detail.getEnP2mProducto().getProDet());
            detailObject.addProperty("preUniVen", detail.getFacVenDetValUni());
            detailObject.addProperty("detImp", detail.getFacVenDetCan()*detail.getFacVenDetValUni());
            detailList.add(detailObject);
        }
        
        data.add("detailList", detailList);
        
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(new Gson().toJson(data));   
    }
}