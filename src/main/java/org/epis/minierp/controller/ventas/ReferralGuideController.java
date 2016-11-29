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
import org.epis.minierp.dao.general.EnP1mEmpresaDao;
import org.epis.minierp.dao.general.TaGzzMotivoTrasladoDao;
import org.epis.minierp.dao.general.TaGzzTipoDestinatarioDao;
import org.epis.minierp.dao.ventas.EnP1mClienteDao;
import org.epis.minierp.dao.ventas.EnP1mFacturaVentaCabDao;
import org.epis.minierp.model.EnP1mCliente;
import org.epis.minierp.model.EnP1mEmpresa;
import org.epis.minierp.model.EnP1mFacturaVentaCab;
import org.epis.minierp.model.EnP1tFacturaVentaDet;
import org.epis.minierp.model.EnP2mGuiaRemRemitente;
import org.epis.minierp.model.TaGzzMotivoTraslado;
import org.epis.minierp.model.TaGzzTipoDestinatario;

public class ReferralGuideController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        String facVenCabCod = request.getParameter("facVenCabCod");
        JsonObject data = null;
        EnP1mFacturaVentaCab bill = null;
        EnP2mGuiaRemRemitente referralGuide = null;
        JsonArray remList = null;
        
        switch (action) {
            case "search":
                bill = (new EnP1mFacturaVentaCabDao()).getById(facVenCabCod);
                referralGuide = bill.getEnP2mGuiaRemRemitente();
                data = new JsonObject();
                remList = new JsonArray();
                
                if (bill.getEnP2mGuiaRemRemitente() != null) {
                    
                    EnP1mCliente cli = (new EnP1mClienteDao()).getById(referralGuide.getGuiRemRemDes());
                    String destinatario = cli.getCliNom() + " " + cli.getCliApePat() + " " + cli.getCliApeMat();
                
                    List <EnP1tFacturaVentaDet> details = new ArrayList<>();
                    details.addAll(bill.getEnP1tFacturaVentaDets());
                    
                    for(EnP1tFacturaVentaDet detail: details) {
                        JsonObject detailObject = new JsonObject();
                        detailObject.addProperty("detCan", detail.getFacVenDetCan());
                        detailObject.addProperty("proDet", detail.getEnP2mProducto().getProDet());
                        detailObject.addProperty("preUniVen", detail.getFacVenDetValUni());
                        detailObject.addProperty("detImp", detail.getFacVenDetCan()*detail.getFacVenDetValUni());
                        remList.add(detailObject);
                    }
                    
                    data.addProperty("guiRemRemNum", referralGuide.getGuiRemRemNum());
                    data.addProperty("guiRemEmpDes", referralGuide.getEnP1mEmpresa().getEmpNomCom());
                    data.addProperty("guiRemCliCod", destinatario);
                    data.addProperty("guiRemFacCod", bill.getFacVenCabCod());
                    data.addProperty("guiRemMotTra", referralGuide.getTaGzzMotivoTraslado().getMotTraDet());
                    data.add("remList", remList);
                
                } else {
                    data.addProperty("guiRemRemNum", "No Generado");
                    data.addProperty("guiRemEmpDes", "No Generado");
                    data.addProperty("guiRemCliCod", "No Generado");
                    data.addProperty("guiRemFacCod", bill.getFacVenCabCod());
                    data.addProperty("guiRemMotTra", "No generado");
                    data.add("remList", remList);
                
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
