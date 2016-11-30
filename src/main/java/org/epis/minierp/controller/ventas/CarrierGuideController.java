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
import org.epis.minierp.dao.general.EnP2mUnidadTransporteDao;
import org.epis.minierp.dao.general.TaGzzTipoDestinatarioDao;
import org.epis.minierp.dao.logistica.EnP2mGuiaRemTransportistaDao;
import org.epis.minierp.dao.logistica.EnP2mTransportistaDao;
import org.epis.minierp.dao.ventas.EnP1mClienteDao;
import org.epis.minierp.dao.ventas.EnP1mClientesRutasDao;
import org.epis.minierp.dao.ventas.EnP1mFacturaVentaCabDao;
import org.epis.minierp.model.EnP1mCliente;
import org.epis.minierp.model.EnP1mClientesRutas;
import org.epis.minierp.model.EnP1mEmpresa;
import org.epis.minierp.model.EnP1mFacturaVentaCab;
import org.epis.minierp.model.EnP1tFacturaVentaDet;
import org.epis.minierp.model.EnP2mGuiaRemTransportista;
import org.epis.minierp.model.EnP2mTransportista;
import org.epis.minierp.model.EnP2mUnidadTransporte;
import org.epis.minierp.model.TaGzzTipoDestinatario;
import org.epis.minierp.util.DateUtil;

public class CarrierGuideController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        String facVenCabCod = request.getParameter("facVenCabCod");
        String guiRemTraNum = request.getParameter("guiRemTraNum");
        EnP1mFacturaVentaCab bill = null;
        EnP2mGuiaRemTransportista carrierGuide = null;
        JsonObject data = null;
        JsonArray traList = null;
        JsonArray traCliList = null;
        JsonArray facVenList = null;
        
        switch (action) {
            case "search":
                bill = (new EnP1mFacturaVentaCabDao()).getById(facVenCabCod);
                carrierGuide = bill.getEnP2mGuiaRemTransportista();
                data = new JsonObject();
                traList = new JsonArray();
                traCliList = new JsonArray();
                facVenList = new JsonArray();
                
                if (carrierGuide != null) {
                    
                    String traNomCom = carrierGuide.getEnP2mTransportista().getTraNom()+ " " +
                        carrierGuide.getEnP2mTransportista().getTraApePat()+ " " +
                        carrierGuide.getEnP2mTransportista().getTraApeMat();
        
                    String vehiculo = carrierGuide.getEnP2mUnidadTransporte().getUniTraNumPla();
        
                    String remitente = carrierGuide.getEnP1mEmpresa().getEmpNomCom();
                    
                    EnP1mCliente mainClient = (new EnP1mClienteDao()).getById(carrierGuide.getGuiRemTraDes());
                    String destinatario = mainClient.getCliNom() + " " + mainClient.getCliApePat() + " " + mainClient.getCliApeMat();
                    
                    String ruta = bill.getEnP1mCatalogoRuta().getCatRutDet();

                    data.addProperty("guiRemTraNum", carrierGuide.getGuiRemTraNum());
                    data.addProperty("traNomCom", traNomCom);
                    data.addProperty("vehiculo", vehiculo);
                    data.addProperty("remitente", remitente);
                    data.addProperty("destinatario", destinatario);
                    data.addProperty("ruta", ruta);
                    
                    List <EnP1mCliente> clients = new ArrayList<>();
                    List <EnP1tFacturaVentaDet> details = new ArrayList<>();
                    
                    //Agregando todos los detalles y clientes de las facturas que tiene asociada la clave de la guia de Transportista
                    List <EnP1mFacturaVentaCab> cabs = new ArrayList<>();
                    cabs.addAll(carrierGuide.getEnP1mFacturaVentaCabs());
                    for(EnP1mFacturaVentaCab cab: cabs) {
                        JsonObject detailObject = new JsonObject();
                        if(cab.getEstRegCod() == 'A'){
                            //detalles
                            details.addAll(cab.getEnP1tFacturaVentaDets());
                            //clientes
                            addWhitOutRepeatClient(clients,cab.getEnP1mCliente());
                            //facturas
                            detailObject.addProperty("facVenCabCod", cab.getFacVenCabCod());
                            detailObject.addProperty("facVenCabFecEmi", DateUtil.getString2Date(cab.getFacVenCabFecEmi()));
                            detailObject.addProperty("facVenCabTot", cab.getFacVenCabTot());
                            detailObject.addProperty("facVenCabSubTot", cab.getFacVenCabSubTot());
                            facVenList.add(detailObject);
                        }
                    }
                    
                    for(EnP1tFacturaVentaDet detail: details) {
                        JsonObject detailObject = new JsonObject();
                        detailObject.addProperty("detCan", detail.getFacVenDetCan());
                        detailObject.addProperty("proDet", detail.getEnP2mProducto().getProDet());
                        detailObject.addProperty("preUniVen", detail.getFacVenDetValUni());
                        detailObject.addProperty("detImp", detail.getFacVenDetCan()*detail.getFacVenDetValUni());
                        traList.add(detailObject);
                    }
                    for(EnP1mCliente cli: clients) {
                        JsonObject detailObject = new JsonObject();
                        detailObject.addProperty("cliNomCom", cli.getCliNomCom());
                        detailObject.addProperty("cliCod", cli.getCliCod());
                        traCliList.add(detailObject);
                    }
                    
                    data.add("traList", traList);
                    data.add("traCliList", traCliList);
                    data.add("facVenList", facVenList);
                    
                    
                } else {
                    data.addProperty("guiRemTraNum", "No Generado");
                    data.addProperty("traNomCom", "No Generado");
                    data.addProperty("vehiculo", "No Generado");
                    data.addProperty("remitente", "No Generado");
                    data.addProperty("destinatario", "No Generado");
                    data.addProperty("ruta", "No Generado");
                    data.add("traList", traList);
                    data.add("traCliList", traCliList);
                    data.add("facVenList", facVenList);
                }

                response.setContentType("application/json");
                response.setCharacterEncoding("UTF-8");
                response.getWriter().write(new Gson().toJson(data));
                break;
            
            case "view":
                carrierGuide = (new EnP2mGuiaRemTransportistaDao()).getById(guiRemTraNum);
                List<EnP1mFacturaVentaCab> bills = new ArrayList<>();
                bills.addAll(carrierGuide.getEnP1mFacturaVentaCabs());
                bill = bills.get(0); //primera ruta ya q todas las rutas son iguales
                data = new JsonObject();
                traList = new JsonArray();
                traCliList = new JsonArray();
                facVenList = new JsonArray();
                
                if (carrierGuide != null) {
                    
                    String traNomCom = carrierGuide.getEnP2mTransportista().getTraNom()+ " " +
                        carrierGuide.getEnP2mTransportista().getTraApePat()+ " " +
                        carrierGuide.getEnP2mTransportista().getTraApeMat();
        
                    String vehiculo = carrierGuide.getEnP2mUnidadTransporte().getUniTraNumPla();
        
                    String remitente = carrierGuide.getEnP1mEmpresa().getEmpNomCom();
                    
                    EnP1mCliente mainClient = (new EnP1mClienteDao()).getById(carrierGuide.getGuiRemTraDes());
                    String destinatario = mainClient.getCliNom() + " " + mainClient.getCliApePat() + " " + mainClient.getCliApeMat();
                    
                    String ruta = bill.getEnP1mCatalogoRuta().getCatRutDet();

                    data.addProperty("guiRemTraNum", carrierGuide.getGuiRemTraNum());
                    data.addProperty("traNomCom", traNomCom);
                    data.addProperty("vehiculo", vehiculo);
                    data.addProperty("remitente", remitente);
                    data.addProperty("destinatario", destinatario);
                    data.addProperty("ruta", ruta);
                    
                    List <EnP1mCliente> clients = new ArrayList<>();
                    List <EnP1tFacturaVentaDet> details = new ArrayList<>();
                    
                    //Agregando todos los detalles y clientes de las facturas que tiene asociada la clave de la guia de Transportista
                    List <EnP1mFacturaVentaCab> cabs = new ArrayList<>();
                    cabs.addAll(carrierGuide.getEnP1mFacturaVentaCabs());
                    for(EnP1mFacturaVentaCab cab: cabs) {
                        JsonObject detailObject = new JsonObject();
                        if(cab.getEstRegCod() == 'A'){
                            //detalles
                            details.addAll(cab.getEnP1tFacturaVentaDets());
                            //clientes
                            addWhitOutRepeatClient(clients,cab.getEnP1mCliente());
                            //facturas
                            detailObject.addProperty("facVenCabCod", cab.getFacVenCabCod());
                            detailObject.addProperty("facVenCabFecEmi", DateUtil.getString2Date(cab.getFacVenCabFecEmi()));
                            detailObject.addProperty("facVenCabTot", cab.getFacVenCabTot());
                            detailObject.addProperty("facVenCabSubTot", cab.getFacVenCabSubTot());
                            facVenList.add(detailObject);
                        }
                    }
                    
                    for(EnP1tFacturaVentaDet detail: details) {
                        JsonObject detailObject = new JsonObject();
                        detailObject.addProperty("detCan", detail.getFacVenDetCan());
                        detailObject.addProperty("proDet", detail.getEnP2mProducto().getProDet());
                        detailObject.addProperty("preUniVen", detail.getFacVenDetValUni());
                        detailObject.addProperty("detImp", detail.getFacVenDetCan()*detail.getFacVenDetValUni());
                        traList.add(detailObject);
                    }
                    for(EnP1mCliente cli: clients) {
                        JsonObject detailObject = new JsonObject();
                        detailObject.addProperty("cliNomCom", cli.getCliNomCom());
                        detailObject.addProperty("cliCod", cli.getCliCod());
                        traCliList.add(detailObject);
                    }
                    
                    data.add("traList", traList);
                    data.add("traCliList", traCliList);
                    data.add("facVenList", facVenList);
                    
                    
                } else {
                    data.addProperty("guiRemTraNum", "No Generado");
                    data.addProperty("traNomCom", "No Generado");
                    data.addProperty("vehiculo", "No Generado");
                    data.addProperty("remitente", "No Generado");
                    data.addProperty("destinatario", "No Generado");
                    data.addProperty("ruta", "No Generado");
                    data.add("traList", traList);
                    data.add("traCliList", traCliList);
                    data.add("facVenList", facVenList);
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
    
    private void addWhitOutRepeatClient(List <EnP1mCliente> l, EnP1mCliente cli){
        for(EnP1mCliente dt: l){
            if(cli.getCliCod().equals(dt.getCliCod()))
                return;
        }
        l.add(cli);
    }
}
