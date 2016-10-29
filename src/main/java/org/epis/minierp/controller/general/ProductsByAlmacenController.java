package org.epis.minierp.controller.general;

import com.google.gson.Gson;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.logistica.EnP2mProductoDao;
import org.epis.minierp.model.EnP2mProducto;

public class ProductsByAlmacenController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String almCod = request.getParameter("almCod");
        
        List<Map<String, Object>>  data = new ArrayList<Map<String, Object>>();
        List <EnP2mProducto> productos = (new EnP2mProductoDao()).getAllActive();
        Map <String, Object> map = new HashMap <>();
        for(int i = 0;i < productos.size();i++) {
            map.put("proCod", productos.get(i).getId().getProCod());
            map.put("proDet", productos.get(i).getProDet());  
            data.add(map);
        }
        
        /*List<Map<String, Object>>  data = new ArrayList<Map<String, Object>>();
        EnP2mAlmacenDao almacenSelec = new EnP2mAlmacenDao();
        Iterator<EnP2mProducto> productos = almacenSelec.getById(almCod).getEnP2mProductos().iterator();
        
        while(productos.hasNext()){
            EnP2mProducto product = productos.next();
            Map<String, Object> map = new HashMap<>();
            if(product.getEstRegCod() == 'A')
            {
                map.put("proCod", product.getId().getProCod());
                map.put("proDet", product.getProDet());  
                data.add(map);
            }
        }*/
        
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(new Gson().toJson(data));
        
    }
}
