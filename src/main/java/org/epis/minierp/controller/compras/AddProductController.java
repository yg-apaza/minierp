package org.epis.minierp.controller.compras;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.general.TaGzzMonedaDao;
import org.epis.minierp.dao.general.TaGzzUnidadMedDao;
import org.epis.minierp.dao.logistica.EnP2mClaseProductoDao;
import org.epis.minierp.dao.logistica.EnP2mSubclaseProductoDao;
import org.epis.minierp.model.EnP2mClaseProducto;
import org.epis.minierp.model.EnP2mSubclaseProducto;
import org.epis.minierp.model.TaGzzMoneda;
import org.epis.minierp.model.TaGzzUnidadMed;

public class AddProductController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        JsonObject data = null;
        
        switch(action) {
            case "getData":
                data = new JsonObject();
                
                JsonArray productsClasses = new JsonArray();
                List <EnP2mClaseProducto> clasesProductos = (new EnP2mClaseProductoDao()).getAllActive();
                
                for(EnP2mClaseProducto claseProducto: clasesProductos) {
                    JsonObject productClass = new JsonObject();
                    productClass.addProperty("claProCod", claseProducto.getClaProCod());
                    productClass.addProperty("claProDet", claseProducto.getClaProDet());
                    productsClasses.add(productClass);
                }
                
                data.add("claDet", productsClasses);
                
                JsonArray coins = new JsonArray();
                List <TaGzzMoneda> monedas = (new TaGzzMonedaDao()).getAllActive();
                
                for(TaGzzMoneda moneda: monedas) {
                    JsonObject coin = new JsonObject();
                    coin.addProperty("monCod", moneda.getMonCod());
                    coin.addProperty("monDet", moneda.getMonDet());
                    coins.add(coin);
                }
                
                data.add("monDet", coins);
                
                JsonArray measureUnits = new JsonArray();
                List <TaGzzUnidadMed> unidadesMedidas = (new TaGzzUnidadMedDao()).getAllActive();
                
                for(TaGzzUnidadMed unidadMedida: unidadesMedidas) {
                    JsonObject measureUnit = new JsonObject();
                    measureUnit.addProperty("uniMedCod", unidadMedida.getUniMedCod());
                    measureUnit.addProperty("uniMedDet", unidadMedida.getUniMedDet());
                    measureUnits.add(measureUnit);
                }
                
                data.add("meaUnitDet", measureUnits);
                
                response.setContentType("application/json");
                response.setCharacterEncoding("UTF-8");
                response.getWriter().write(new Gson().toJson(data));
                break;
            
            case "getSubClass":
                String claProCod = request.getParameter("claProCod");
                data = new JsonObject();
                
                JsonArray productsSubclasses = new JsonArray();
                List <EnP2mSubclaseProducto> subclasesProductos = (new EnP2mSubclaseProductoDao()).getByClass(claProCod);
                
                for(EnP2mSubclaseProducto subclaseProductos: subclasesProductos) {
                    JsonObject productSubclass = new JsonObject();
                    productSubclass.addProperty("subClaProCod", subclaseProductos.getId().getSubClaProCod());
                    productSubclass.addProperty("subClaProDet", subclaseProductos.getSubClaProDet());
                    productsSubclasses.add(productSubclass);
                }
                
                data.add("subDet", productsSubclasses);
                
                response.setContentType("application/json");
                response.setCharacterEncoding("UTF-8");
                response.getWriter().write(new Gson().toJson(data));
                break;
        }
    }
}
