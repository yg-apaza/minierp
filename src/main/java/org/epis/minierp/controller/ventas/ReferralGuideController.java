package org.epis.minierp.controller.ventas;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.general.EnP1mEmpresaDao;
import org.epis.minierp.dao.general.TaGzzMotivoTrasladoDao;
import org.epis.minierp.dao.general.TaGzzTipoDestinatarioDao;
import org.epis.minierp.dao.ventas.EnP1mFacturaVentaCabDao;
import org.epis.minierp.model.EnP1mEmpresa;
import org.epis.minierp.model.EnP1mFacturaVentaCab;
import org.epis.minierp.model.TaGzzMotivoTraslado;
import org.epis.minierp.model.TaGzzTipoDestinatario;

public class ReferralGuideController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        String facVenCabCod = request.getParameter("facVenCabCod");
        JsonObject data = null;
        
        switch (action) {
            case "search":
                EnP1mFacturaVentaCab bill = (new EnP1mFacturaVentaCabDao()).getById(facVenCabCod);
                data = new JsonObject();

                if (bill.getEnP2mGuiaRemRemitente() != null) {
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
                break;
                
            case "verify":
                boolean state = (new EnP1mFacturaVentaCabDao()).verifyReferralGuide(facVenCabCod);
                data = new JsonObject();
                EnP1mEmpresa company =  (new EnP1mEmpresaDao()).getById(1);
               
                data.addProperty("state", state);                
                data.addProperty("empDes", company.getEmpDes());
                data.addProperty("facCod", facVenCabCod);
                
                JsonArray reasons = new JsonArray();
                List <TaGzzMotivoTraslado> motivos = (new TaGzzMotivoTrasladoDao()).getAllActive();
                
                for(TaGzzMotivoTraslado motivo: motivos) {
                    JsonObject reason = new JsonObject();
                    reason.addProperty("motTraCod", motivo.getMotTraCod());
                    reason.addProperty("motTraDet", motivo.getMotTraDet());
                    reasons.add(reason);
                }
                
                data.add("motTra", reasons);
                
                JsonArray recipientTypes = new JsonArray();
                List <TaGzzTipoDestinatario> tiposDestinatarios = (new TaGzzTipoDestinatarioDao()).getAllActive();
                
                for(TaGzzTipoDestinatario tiposDestinatario: tiposDestinatarios) {
                    JsonObject recipientType = new JsonObject();
                    recipientType.addProperty("tipDstCod", tiposDestinatario.getTipDstCod());
                    recipientType.addProperty("tipDstDet", tiposDestinatario.getTipDstDet());
                    recipientTypes.add(recipientType);
                }
                
                data.add("tipDes", recipientTypes);
                
                response.setContentType("application/json");
                response.setCharacterEncoding("UTF-8");
                response.getWriter().write(new Gson().toJson(data));
                break;
        }
    }
}