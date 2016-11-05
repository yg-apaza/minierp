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
import org.epis.minierp.dao.general.EnP2mUnidadTransporteDao;
import org.epis.minierp.dao.general.TaGzzMotivoTrasladoDao;
import org.epis.minierp.dao.general.TaGzzTipoDestinatarioDao;
import org.epis.minierp.dao.logistica.EnP2mTransportistaDao;
import org.epis.minierp.dao.ventas.EnP1mClientesRutasDao;
import org.epis.minierp.dao.ventas.EnP1mFacturaVentaCabDao;
import org.epis.minierp.model.EnP1mClientesRutas;
import org.epis.minierp.model.EnP1mEmpresa;
import org.epis.minierp.model.EnP1mFacturaVentaCab;
import org.epis.minierp.model.EnP2mTransportista;
import org.epis.minierp.model.EnP2mUnidadTransporte;
import org.epis.minierp.model.TaGzzMotivoTraslado;
import org.epis.minierp.model.TaGzzTipoDestinatario;

public class CarrierGuideController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        String facVenCabCod = request.getParameter("facVenCabCod");
        EnP1mFacturaVentaCab bill = null;
        JsonObject data = null;

        switch (action) {
            case "search":
                bill = (new EnP1mFacturaVentaCabDao()).getById(facVenCabCod);
                data = new JsonObject();

                if (bill.getEnP2mGuiaRemTransportista() != null) {
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
                break;
                
            case "verify":
                boolean state = (new EnP1mFacturaVentaCabDao()).verifyCarrierGuide(facVenCabCod);                
                EnP1mEmpresa company =  (new EnP1mEmpresaDao()).getById(1);
                bill = (new EnP1mFacturaVentaCabDao()).getById(facVenCabCod);
                data = new JsonObject();
               
                data.addProperty("state", state);                
                data.addProperty("empDes", company.getEmpDes());
                data.addProperty("facCod", facVenCabCod);
                
                JsonArray carriers = new JsonArray();
                List <EnP2mTransportista> transportistas = (new EnP2mTransportistaDao()).getAllActive();
                
                for(EnP2mTransportista transportista: transportistas) {
                    JsonObject carrier = new JsonObject();
                    carrier.addProperty("traCod", transportista.getTraCod());
                    carrier.addProperty("nomCom", transportista.getTraNomCom());
                    carriers.add(carrier);
                }
                
                data.add("traDat", carriers);
                
                JsonArray recipientTypes = new JsonArray();
                List <TaGzzTipoDestinatario> tiposDestinatarios = (new TaGzzTipoDestinatarioDao()).getAllActive();
                
                for(TaGzzTipoDestinatario tiposDestinatario: tiposDestinatarios) {
                    JsonObject recipientType = new JsonObject();
                    recipientType.addProperty("tipDstCod", tiposDestinatario.getTipDstCod());
                    recipientType.addProperty("tipDstDet", tiposDestinatario.getTipDstDet());
                    recipientTypes.add(recipientType);
                }
                
                data.add("tipDes", recipientTypes);
                
                JsonArray transportUnits = new JsonArray();
                List <EnP2mUnidadTransporte> unidadesTransporte = (new EnP2mUnidadTransporteDao()).getAllActive();
                
                for(EnP2mUnidadTransporte unidadTransporte: unidadesTransporte) {
                    JsonObject transportUnit = new JsonObject();
                    transportUnit.addProperty("uniTraCod", unidadTransporte.getUniTraCod());
                    transportUnit.addProperty("uniTraNumPla", unidadTransporte.getUniTraNumPla());
                    transportUnits.add(transportUnit);
                }
                
                data.add("numPla", transportUnits);
                
                JsonArray routs = new JsonArray();
                List <EnP1mClientesRutas> rutas = (new EnP1mClientesRutasDao()).getRutas4CliCod(bill.getEnP1mCliente().getCliCod());
                
                for(EnP1mClientesRutas ruta: rutas) {
                    JsonObject rout = new JsonObject();
                    rout.addProperty("rutCod", ruta.getEnP1mCatalogoRuta().getCatRutCod());
                    rout.addProperty("rutDet", ruta.getEnP1mCatalogoRuta().getCatRutDet());
                    routs.add(rout);
                }
                
                data.add("rutDes", routs);                
                
                response.setContentType("application/json");
                response.setCharacterEncoding("UTF-8");
                response.getWriter().write(new Gson().toJson(data));
                break;
        }
    }
}
