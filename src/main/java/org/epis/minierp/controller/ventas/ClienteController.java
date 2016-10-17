package org.epis.minierp.controller.ventas;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.business.ventas.EnP1mClienteBusiness;
import org.epis.minierp.dao.general.TaGzzEstadoCivilDao;
import org.epis.minierp.dao.ventas.EnP1mClienteDao;

public class ClienteController extends HttpServlet {
    
    private static final long serialVersionUID = 1L;
    EnP1mClienteDao clienteDao;
    TaGzzEstadoCivilDao estadoCivilDao;
    EnP1mClienteBusiness clienteBusiness;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        clienteDao = new EnP1mClienteDao();
        estadoCivilDao = new TaGzzEstadoCivilDao();
        request.setAttribute("cliente", clienteDao.getAllActive());
        request.setAttribute("estCivil", estadoCivilDao.getAllActive());
        request.setAttribute("inactivos", clienteDao.getAllInactives());
        request.getRequestDispatcher("/WEB-INF/ventas/cliente/cliente.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("accion");
        clienteBusiness = new EnP1mClienteBusiness();
        
        switch(action) {
            case "create":
                String cliCodCreate = request.getParameter("cliCod");
                String cliNomCreate = request.getParameter("cliNom");
                String cliApePatCreate = request.getParameter("cliApePat");
                String cliApeMatCreate= request.getParameter("cliApeMat");
                char cliSexCreate = request.getParameter("cliSex").charAt(0);
                String cliDirCreate = request.getParameter("cliDir");
                String cliTelFijCreate = request.getParameter("cliTelFij");
                String cliTelCelCreate = request.getParameter("cliTelCel");
                String CliEmailCreate = request.getParameter("cliEmail");
                int estCivCodCreate = Integer.parseInt(request.getParameter("estCivCod"));
                
                clienteBusiness.create(cliCodCreate, cliNomCreate, cliApePatCreate, cliApeMatCreate, 
                        cliSexCreate, cliDirCreate, cliTelFijCreate, cliTelCelCreate, CliEmailCreate, 
                        estCivCodCreate, 'A');
                
                break;
                
            case "update":
                String cliCodUpdate = request.getParameter("cliCod");
                String cliNomUpdate = request.getParameter("cliNom");
                String cliApePatUpdate = request.getParameter("cliApePat");
                String cliApeMatUpdate = request.getParameter("cliApeMat");
                char cliSexUpdate = request.getParameter("cliSex").charAt(0);
                String cliDirUpdate = request.getParameter("cliDir");
                String cliTelFijUpdate = request.getParameter("cliTelFij");
                String cliTelCelUpdate = request.getParameter("cliTelCel");
                String CliEmailUpdate = request.getParameter("cliEmail");
                int estCivCodUpdate = Integer.parseInt(request.getParameter("estCivCod"));
                
                clienteBusiness.update(cliCodUpdate, cliNomUpdate, cliApePatUpdate, cliApeMatUpdate, 
                        cliSexUpdate, cliDirUpdate, cliTelFijUpdate, cliTelCelUpdate, CliEmailUpdate, 
                        estCivCodUpdate);
                break;
                
            case "disable":
                String cliCodDisable = request.getParameter("cliCod");
                clienteBusiness.disable(cliCodDisable);
                break;
                
            case "activate":
                String cliCodActivate = request.getParameter("cliCod");
                clienteBusiness.activate(cliCodActivate);
                break;
                
            case "delete":
                String cliCodDelete = request.getParameter("cliCod");
                clienteBusiness.delete(cliCodDelete);
                break;
                
        }
        response.sendRedirect(request.getContextPath() + "/secured/ventas/clientes");
    }
}
