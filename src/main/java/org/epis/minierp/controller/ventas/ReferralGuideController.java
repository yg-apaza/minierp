package org.epis.minierp.controller.ventas;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.ventas.EnP1mFacturaVentaCabDao;
import org.epis.minierp.model.EnP1mFacturaVentaCab;

public class ReferralGuideController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String facVenCabCod = request.getParameter("facVenCabCod");
        EnP1mFacturaVentaCab bill = (new EnP1mFacturaVentaCabDao()).getById(facVenCabCod);
        JsonObject data = new JsonObject(); 
        
        if(bill.getEnP2mGuiaRemRemitente() != null) {
            data.addProperty("facCod", bill.getFacVenCabCod());
            data.addProperty("remNum", bill.getEnP2mGuiaRemRemitente().getGuiRemRemNum());
            data.addProperty("remDen", bill.getEnP2mGuiaRemRemitente().getGuiRemRemDen());
            data.addProperty("motTra", bill.getEnP2mGuiaRemRemitente().getTaGzzMotivoTraslado().getMotTraDet());
            data.addProperty("empDes", bill.getEnP2mGuiaRemRemitente().getEnP1mEmpresa().getEmpDes());
            data.addProperty("tipDes", bill.getEnP2mGuiaRemRemitente().getTaGzzTipoDestinatario().getTipDstDet());
            data.addProperty("remDes", bill.getEnP2mGuiaRemRemitente().getGuiRemRemDes());
        } else {
            data.addProperty("facCod", bill.getFacVenCabCod());
            data.addProperty("remNum", "No Generado");
            data.addProperty("remDen", "No Generado");
            data.addProperty("motTra", "No Generado");
            data.addProperty("empDes", "No Generado");
            data.addProperty("tipDes", "No Generado");
            data.addProperty("remDes", "No Generado");
        }
        
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(new Gson().toJson(data));   
    }
}