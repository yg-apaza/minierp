/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package org.epis.minierp.controller.logistica;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.logistica.EnP2mProductoDao;
import org.epis.minierp.model.EnP2mProducto;

/**
 *
 * @author AlexanderYlnner
 */
public class BuscarProductosAlmacenController extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        String almCod = request.getParameter("almCod");
        List<EnP2mProducto> prods=null;
        
        JsonObject data = null;
        JsonArray productos=null;
        
        prods=(new EnP2mProductoDao().getAllByAlmacen(almCod));
        data = new JsonObject();
        productos = new JsonArray();

        switch (action){
            case "ver":{
            if (prods != null) {
                for(EnP2mProducto prod: prods) {
                    JsonObject detailObject = new JsonObject();                          
                    detailObject.addProperty("proCod", prod.getId().getProCod());
                    detailObject.addProperty("proCodBar", prod.getProCodBar());
                    detailObject.addProperty("proDet", prod.getProDet());
                    detailObject.addProperty("subClaProd", prod.getEnP2mSubclaseProducto().getSubClaProDet());
                    detailObject.addProperty("claProd", prod.getEnP2mSubclaseProducto().getEnP2mClaseProducto().getClaProDet());
                    detailObject.addProperty("preUniCom", prod.getProPreUniCom());
                    detailObject.addProperty("preUniVen", prod.getProPreUniVen());
                    productos.add(detailObject);
                }

                data.add("productos", productos);                                        
            } else {
                data.add("productos", productos);
            }            
            }
        };
        

        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(new Gson().toJson(data));
    }
    
    
}
