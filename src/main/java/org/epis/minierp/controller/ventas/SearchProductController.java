package org.epis.minierp.controller.ventas;

import com.google.gson.Gson;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.StringTokenizer;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.logistica.EnP2mProductoDao;
import org.epis.minierp.model.EnP2mProducto;
import org.epis.minierp.model.EnP2mProductoId;

public class SearchProductController extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String proCod = request.getParameter("proCod");
        String proDet = request.getParameter("proDet");
        EnP2mProducto product = null;
        if(!proCod.isEmpty()) {
            StringTokenizer st = new StringTokenizer(proCod,"-");
            EnP2mProductoId productId = new EnP2mProductoId();
            if(st.hasMoreTokens()) {
                productId.setClaProCod(st.nextToken());
                if(st.hasMoreTokens()) {
                    productId.setSubClaProCod(st.nextToken());
                    if(st.hasMoreTokens()) {
                        productId.setProCod(st.nextToken());        
            product = (new EnP2mProductoDao()).getByIdActive(productId);
                    }
                }
            }
        } else {
            product = (new EnP2mProductoDao()).getByDescription(proDet);
        }
                
        Map <String, Object> data = new HashMap<String, Object>();
        
        if(product != null) {
            data.put("proCod", product.getId().getClaProCod() + "-" + product.getId().getSubClaProCod() + "-" + product.getId().getProCod());
            data.put("proDet", product.getProDet());
            data.put("proStk", product.getProStk());
            data.put("proPreUni", product.getProPreUniVen());
        }
        
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(new Gson().toJson(data));
    }
}
