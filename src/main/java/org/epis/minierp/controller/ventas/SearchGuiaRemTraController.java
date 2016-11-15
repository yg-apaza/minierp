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
import org.epis.minierp.dao.ventas.EnP1mPreventaCabDao;
import org.epis.minierp.model.EnP1mCliente;
import org.epis.minierp.model.EnP1mPreventaCab;
import org.epis.minierp.model.EnP1tPreventaDet;
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
        EnP2mGuiaRemTransportista guiaTran = guiRemTraDao.getById(guiRemTraNum);
        JsonObject data = new JsonObject();
        
        String tra = guiaTran.getEnP2mTransportista().getTraNom()+ " " +
                guiaTran.getEnP2mTransportista().getTraApePat()+ " " +
                guiaTran.getEnP2mTransportista().getTraApeMat();
        
        String vehiculo = guiaTran.getEnP2mUnidadTransporte().getUniTraNumPla();
        
        String remitente = guiaTran.getEnP1mEmpresa().getEmpNomCom();
        
        EnP1mCliente c = cliDao.getById(guiaTran.getGuiRemTraDes());
        String destinatario = c.getCliNom() + " " + c.getCliApePat() + " " + c.getCliApeMat();
        
        data.addProperty("guiRemTraNum", guiRemTraNum);
        data.addProperty("uniTraNumPla", vehiculo);
        data.addProperty("traNom", tra);
        data.addProperty("empNomCom", remitente);
        data.addProperty("cliNom", destinatario);
        JsonArray detailList = new JsonArray();
        List <EnP1tPreventaDet> details = new ArrayList();
        //= new ArrayList <>(preventa.getEnP1tPreventaDets());
        
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