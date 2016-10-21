package org.epis.minierp.controller.ventas;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.ventas.EnP1mDocumentoClienteDao;
import org.epis.minierp.model.EnP1mCliente;
import org.epis.minierp.model.EnP1mDocumentoCliente;

public class BusquedaClienteController extends HttpServlet
{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String docCliNum = request.getParameter("docCliNum");
        EnP1mDocumentoCliente documento = (new EnP1mDocumentoClienteDao()).getByDocNum(docCliNum);
        EnP1mCliente cliente = null;
        if(documento != null)
            cliente = documento.getEnP1mCliente();
        
        Map<String, Object> data = new HashMap<String, Object>();
        
        if(cliente != null)
        {
            data.put("cliCod", cliente.getCliCod());
            data.put("cliNom", cliente.getCliNom());
            data.put("cliApePat", cliente.getCliApePat());
            data.put("cliApeMat", cliente.getCliApeMat());
        }
        
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(new Gson().toJson(data));
    }
}
