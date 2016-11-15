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
import org.epis.minierp.dao.logistica.EnP2mGuiaRemTransportistaDao;
import org.epis.minierp.dao.ventas.EnP1mClienteDao;
import org.epis.minierp.model.EnP1mCliente;
import org.epis.minierp.model.EnP1mFacturaVentaCab;
import org.epis.minierp.model.EnP1tFacturaVentaDet;
import org.epis.minierp.model.EnP2mGuiaRemTransportista;

public class SearchGuiaRemTraController extends HttpServlet {
    EnP2mGuiaRemTransportistaDao guiRemTraDao;
    EnP1mClienteDao cliDao;
    //  /secured/ventas/SearchGuiaRemTra
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        guiRemTraDao = new EnP2mGuiaRemTransportistaDao();
        cliDao = new EnP1mClienteDao();
        
        String guiRemTraNum = request.getParameter("guiRemTraNum");
        EnP2mGuiaRemTransportista carrierGuide = guiRemTraDao.getById(guiRemTraNum);
        JsonObject data = new JsonObject();
        
        String tra = carrierGuide.getEnP2mTransportista().getTraNom()+ " " +
                carrierGuide.getEnP2mTransportista().getTraApePat()+ " " +
                carrierGuide.getEnP2mTransportista().getTraApeMat();
        
        String vehiculo = carrierGuide.getEnP2mUnidadTransporte().getUniTraNumPla();
        
        String remitente = carrierGuide.getEnP1mEmpresa().getEmpNomCom();
        
        EnP1mCliente c = (new EnP1mClienteDao()).getById(carrierGuide.getGuiRemTraDes());
        String destinatario = c.getCliNom() + " " + c.getCliApePat() + " " + c.getCliApeMat();
        
        data.addProperty("guiRemTraNum", guiRemTraNum);
        data.addProperty("uniTraNumPla", vehiculo);
        data.addProperty("traNom", tra);
        data.addProperty("empNomCom", remitente);
        data.addProperty("cliNom", destinatario);
        JsonArray traList = new JsonArray();
        
        List <EnP1tFacturaVentaDet> details = new ArrayList<>();
        
        //Agregando a detalles todos los detalles de las facturas que tiene asociada la clave de la guia de Transportista
        List <EnP1mFacturaVentaCab> cabs = new ArrayList<>();
        cabs.addAll(carrierGuide.getEnP1mFacturaVentaCabs());
        for(EnP1mFacturaVentaCab facVenCabs: cabs) {
            if(facVenCabs.getEstRegCod() == 'A')
                details.addAll(facVenCabs.getEnP1tFacturaVentaDets());
        }
        
        for(EnP1tFacturaVentaDet detail: details) {
            JsonObject detailObject = new JsonObject();
            detailObject.addProperty("detCan", detail.getFacVenDetCan());
            detailObject.addProperty("proDet", detail.getEnP2mProducto().getProDet());
            detailObject.addProperty("preUniVen", detail.getFacVenDetValUni());
            detailObject.addProperty("detImp", detail.getFacVenDetCan()*detail.getFacVenDetValUni());
            traList.add(detailObject);
        }
        
        data.add("traList", traList);
        
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(new Gson().toJson(data));   
    }
}