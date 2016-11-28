package org.epis.minierp.controller.ventas;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.epis.minierp.dao.general.EnP1mUsuarioDao;
import org.epis.minierp.dao.ventas.EnP1mClienteDao;
import org.epis.minierp.model.EnP1mCliente;
import org.epis.minierp.model.EnP1mUsuario;

public class BusquedaClienteController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        int tipCliCod;
        List <EnP1mCliente> clientes;
        JsonObject data;
        JsonArray clients;
        EnP1mCliente cliente;
        HttpSession session = request.getSession(true);
        EnP1mUsuario usuario = (EnP1mUsuario) session.getAttribute("usuario");
        int tipUsuCod = usuario.getTaGzzTipoUsuario().getTipUsuCod();
        String usuCod = usuario.getUsuCod();
        
        switch(action) {
            case "tipo":
                tipCliCod = Integer.parseInt(request.getParameter("tipCliCod"));
                data = new JsonObject();                
                clients = new JsonArray();
                
                switch(tipUsuCod){
                case 2://Vendedor
                    clientes = (new EnP1mClienteDao()).getByTipoCliente_UsuCod(tipCliCod, usuCod);
                    break;
                default:
                    clientes = (new EnP1mClienteDao()).getByTipoCliente(tipCliCod);
                    break;
                }
                
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
                data = new JsonObject();                
                clients = new JsonArray();
                
                switch(tipUsuCod){
                case 2://Vendedor
                    clientes = (new EnP1mUsuarioDao()).getAllClientes4UsuCod(usuCod);
                    break;
                default:
                    clientes = (new EnP1mClienteDao()).getAllActive();
                    break;
                }
                
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
                }
                
                response.setContentType("application/json");
                response.setCharacterEncoding("UTF-8");
                response.getWriter().write(new Gson().toJson(data));
                break;
        }
    }
}
