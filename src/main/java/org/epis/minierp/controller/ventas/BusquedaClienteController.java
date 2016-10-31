package org.epis.minierp.controller.ventas;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.ventas.EnP1mClienteDao;
import org.epis.minierp.dao.ventas.EnP1mClientesRutasDao;
import org.epis.minierp.model.EnP1mCliente;
import org.epis.minierp.model.EnP1mClientesRutas;

public class BusquedaClienteController extends HttpServlet
{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        int tipCliCod;
        List <EnP1mCliente> clientes;
        JsonObject data;
        JsonArray clients;
        EnP1mCliente cliente;
        
        switch(action) {
            case "tipo":
                tipCliCod = Integer.parseInt(request.getParameter("tipCliCod"));
                clientes = (new EnP1mClienteDao()).getByTipoCliente(tipCliCod);
                data = new JsonObject();                
                clients = new JsonArray();
                
                for(EnP1mCliente c: clientes) {
                    JsonObject client = new JsonObject();
                    client.addProperty("cliCod", c.getCliCod());
                    clients.add(client);
                }
                
                data.add("clients", clients);
                response.setContentType("application/json");
                response.setCharacterEncoding("UTF-8");
                response.getWriter().write(new Gson().toJson(data));                                
                break;
            
            case "descripcion":
                clientes = (new EnP1mClienteDao()).getAllActive();
                data = new JsonObject();                
                clients = new JsonArray();
                
                for(EnP1mCliente c: clientes) {
                    JsonObject client = new JsonObject();
                    client.addProperty("cliRazSoc", c.getCliRazSoc());
                    client.addProperty("cliNomCom", c.getCliNomCom());
                    clients.add(client);
                }
                
                data.add("clients", clients);
                response.setContentType("application/json");
                response.setCharacterEncoding("UTF-8");
                response.getWriter().write(new Gson().toJson(data));                                
                break;
                
            case "tipoSearch":
                tipCliCod = Integer.parseInt(request.getParameter("tipCliCod"));
                String cliCod = request.getParameter("cliCod");
                cliente = (new EnP1mClienteDao()).getByCodigoTipoCliente(tipCliCod,cliCod);   
                data = new JsonObject(); 
                if(cliente != null) {                    
                    data.addProperty("cliCod", cliente.getCliCod());
                    data.addProperty("cliRazSoc", cliente.getCliRazSoc());
                    List <EnP1mClientesRutas> routesClient = (new EnP1mClientesRutasDao()).getRutas4CliCod(cliCod);
                    JsonArray routes = new JsonArray();
                    for(EnP1mClientesRutas r: routesClient) {
                        JsonObject route = new JsonObject();
                        route.addProperty("cliRutCod", r.getEnP1mCatalogoRuta().getCatRutCod());
                        route.addProperty("cliRutDet", r.getEnP1mCatalogoRuta().getCatRutDet());
                        routes.add(route);
                    }
                    data.add("cliRut", routes);
                }
                
                response.setContentType("application/json");
                response.setCharacterEncoding("UTF-8");
                response.getWriter().write(new Gson().toJson(data));
                break;
            
            case "desSearch":
                int tipCliDes = Integer.parseInt(request.getParameter("tipCliDes"));
                String cliDes = request.getParameter("cliDes");
                cliente = null;
                if(tipCliDes == 1) { //Razón Social
                    cliente = (new EnP1mClienteDao()).getByRazonSocial(cliDes);
                } else if(tipCliDes == 2) { //Nombre Comercial
                    cliente = (new EnP1mClienteDao()).getByNombreComercial(cliDes);
                }
                                
                data = new JsonObject(); 
                if(cliente != null) {
                    data.addProperty("cliCod", cliente.getCliCod());
                    data.addProperty("cliRazSoc", cliente.getCliRazSoc());
                    data.addProperty("tipCliCod",cliente.getTaGzzTipoCliente().getTipCliCod());
                    List <EnP1mClientesRutas> routesClient = (new EnP1mClientesRutasDao()).getRutas4CliCod(cliente.getCliCod());
                    JsonArray routes = new JsonArray();
                    for(EnP1mClientesRutas r: routesClient) {
                        JsonObject route = new JsonObject();
                        route.addProperty("cliRutCod", r.getEnP1mCatalogoRuta().getCatRutCod());
                        route.addProperty("cliRutDet", r.getEnP1mCatalogoRuta().getCatRutDet());
                        routes.add(route);
                    }
                    data.add("cliRut", routes);
                }
                
                response.setContentType("application/json");
                response.setCharacterEncoding("UTF-8");
                response.getWriter().write(new Gson().toJson(data));
                break;
        }
    }
}
