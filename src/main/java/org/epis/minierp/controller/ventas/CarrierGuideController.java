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

public class CarrierGuideController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String facVenCabCod = request.getParameter("facVenCabCod");
        EnP1mFacturaVentaCab bill = (new EnP1mFacturaVentaCabDao()).getById(facVenCabCod);
        JsonObject data = new JsonObject(); 
        
        if(bill.getEnP2mGuiaRemRemitente() != null) {                    
            data.addProperty("empDes", bill.getEnP2mGuiaRemTransportista().getEnP1mEmpresa().getEmpDes());
            data.addProperty("facCod", bill.getFacVenCabCod());
            data.addProperty("traNum", bill.getEnP2mGuiaRemTransportista().getGuiRemTraNum());
            data.addProperty("traDen", bill.getEnP2mGuiaRemTransportista().getGuiRemTraDen());
            data.addProperty("traDat", bill.getEnP2mGuiaRemTransportista().getEnP2mTransportista().getTraNomCom());
            data.addProperty("numPla", bill.getEnP2mGuiaRemTransportista().getEnP2mUnidadTransporte().getUniTraNumPla());
            data.addProperty("numReg", bill.getEnP2mGuiaRemTransportista().getGuiRemTraNumReg());
            data.addProperty("rutDes", bill.getEnP1mCatalogoRuta().getCatRutDet());
            data.addProperty("tipDes", bill.getEnP2mGuiaRemTransportista().getTaGzzTipoDestinatario().getTipDstDet());
            data.addProperty("traDes", bill.getEnP2mGuiaRemTransportista().getGuiRemTraDes());
        } else {
            data.addProperty("empDes", "No Generado");
            data.addProperty("facCod", bill.getFacVenCabCod());
            data.addProperty("traNum", "No Generado");
            data.addProperty("traDen", "No Generado");
            data.addProperty("traDat", "No Generado");
            data.addProperty("numPla", "No Generado");
            data.addProperty("numReg", "No Generado");
            data.addProperty("rutDes", "No Generado");
            data.addProperty("tipDes", "No Generado");
            data.addProperty("traDes", "No Generado");
        }
        
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(new Gson().toJson(data));   
    }
}