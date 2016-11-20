/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

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
import org.epis.minierp.dao.ventas.EnP1mFacturaVentaCabDao;
import org.epis.minierp.model.EnP1mCliente;
import org.epis.minierp.model.EnP1mFacturaVentaCab;
import org.epis.minierp.model.EnP1mUsuario;
import org.epis.minierp.model.EnP1tFacturaVentaDet;
import org.epis.minierp.model.EnP2mGuiaRemTransportista;
import org.epis.minierp.util.DateUtil;

/**
 *
 * @author AlexanderYlnner
 */
public class BuscarFacturasEnGuiaRemTransporte extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String guiRemTraNum = request.getParameter("guiRemTraNum");
        List<EnP1mFacturaVentaCab> cabs=null;
        EnP2mGuiaRemTransportista guiRemTrans = null;
        JsonObject data = null;
        JsonArray facturas=null;
        
        guiRemTrans=(new EnP2mGuiaRemTransportistaDao().getById(guiRemTraNum));
        data = new JsonObject();
        facturas = new JsonArray();

        cabs = (new EnP1mFacturaVentaCabDao()).getByGuiaRemTransportista(guiRemTrans);



        if (cabs != null) {

            for(EnP1mFacturaVentaCab cab: cabs) {
                JsonObject detailObject = new JsonObject();                          
                detailObject.addProperty("facCabCod", cab.getFacVenCabCod());
                detailObject.addProperty("fb", cab.getFacVenCabModVen());
                detailObject.addProperty("cliente", cab.getEnP1mCliente().getCliNom()+cab.getEnP1mCliente().getCliApePat()+cab.getEnP1mCliente().getCliApeMat());
                detailObject.addProperty("usuario", cab.getEnP1mUsuario().getUsuNom()+cab.getEnP1mUsuario().getUsuApePat()+cab.getEnP1mUsuario().getUsuApeMat());
                detailObject.addProperty("fecha", cab.getFacVenCabFecEmi().toString());
                detailObject.addProperty("totaligv", cab.getFacVenCabTot());
                detailObject.addProperty("subtotal", cab.getFacVenCabSubTot());
                facturas.add(detailObject);
            }

            data.add("facturas", facturas);                                        
        } else {
            data.add("facturas", facturas);
        }

        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(new Gson().toJson(data));
    }
    
    
}
