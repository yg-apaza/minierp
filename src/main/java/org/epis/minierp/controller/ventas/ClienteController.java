package org.epis.minierp.controller.ventas;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.business.ventas.EnP1mClienteBusiness;
import org.epis.minierp.dao.general.TaGzzEstadoCivilDao;
import org.epis.minierp.dao.general.TaGzzTipoDocClienteDao;
import org.epis.minierp.dao.ventas.EnP1mCatalogoRutaDao;
import org.epis.minierp.dao.ventas.EnP1mClienteDao;
import org.epis.minierp.dao.ventas.EnP1mClientesRutasDao;
import org.epis.minierp.dao.ventas.TaGzzTipoClienteDao;

public class ClienteController extends HttpServlet {
    
    private static final long serialVersionUID = 1L;
    EnP1mClienteDao clienteDao;
    TaGzzEstadoCivilDao estadoCivilDao;
    EnP1mClienteBusiness clienteBusiness;
    TaGzzTipoClienteDao tipClienteDao;
    EnP1mClientesRutasDao cliRutDao;
    EnP1mCatalogoRutaDao rutaDao;
    TaGzzTipoDocClienteDao docDao;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        clienteDao = new EnP1mClienteDao();
        estadoCivilDao = new TaGzzEstadoCivilDao();
        tipClienteDao = new TaGzzTipoClienteDao();
        rutaDao = new EnP1mCatalogoRutaDao();
        docDao = new TaGzzTipoDocClienteDao();
        
        request.setAttribute("cliente", clienteDao.getAllActive());
        request.setAttribute("estCivil", estadoCivilDao.getAllActive());
        request.setAttribute("tipCliente", tipClienteDao.getAllActive());
        request.setAttribute("rutas", rutaDao.getAllActive());
        request.setAttribute("documentos", docDao.getAllActive());
        request.setAttribute("inactivos", clienteDao.getAllInactives());
        request.getRequestDispatcher("/WEB-INF/ventas/cliente/cliente.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("accion");
        clienteBusiness = new EnP1mClienteBusiness();
        
        String cliCod, cliRazSoc, cliNomCom, cliDomFis, cliNom, cliApePat, cliApeMat, cliDir, cliTelFij, cliTelCel, cliEmail, cliRutDes, docCliNum;
        int tipCliCod, estCivCod, catRutCod, tipDocCliCod;
        char cliSex;
        
        switch(action) {
            case "create":
                cliCod = request.getParameter("cliCod");
                tipCliCod = Integer.parseInt(request.getParameter("tipCliCod"));
                cliRazSoc = request.getParameter("cliRazSoc");
                cliNomCom = request.getParameter("cliNomCom");
                cliDomFis = request.getParameter("cliDomFis");
                cliNom = request.getParameter("cliNom");
                cliApePat = request.getParameter("cliApePat");
                cliApeMat= request.getParameter("cliApeMat");
                cliSex = request.getParameter("cliSex").charAt(0);
                cliDir = request.getParameter("cliDir");
                estCivCod = Integer.parseInt(request.getParameter("estCivCod"));
                cliTelFij = request.getParameter("cliTelFij");
                cliTelCel = request.getParameter("cliTelCel");
                cliEmail = request.getParameter("cliEmail");
                
                clienteBusiness.create(cliCod, tipCliCod, cliRazSoc, cliNomCom, 
                        cliDomFis, cliNom, cliApePat, cliApeMat, cliSex, cliDir, 
                        estCivCod, cliTelFij, cliTelCel, cliEmail, 'A');
                
                break;
                
            case "update":
                cliCod = request.getParameter("cliCod");
                tipCliCod = Integer.parseInt(request.getParameter("tipCliCod"));
                cliRazSoc = request.getParameter("cliRazSoc");
                cliNomCom = request.getParameter("cliNomCom");
                cliDomFis = request.getParameter("cliDomFis");
                cliNom = request.getParameter("cliNom");
                cliApePat = request.getParameter("cliApePat");
                cliApeMat= request.getParameter("cliApeMat");
                cliSex = request.getParameter("cliSex").charAt(0);
                cliDir = request.getParameter("cliDir");
                estCivCod = Integer.parseInt(request.getParameter("estCivCod"));
                cliTelFij = request.getParameter("cliTelFij");
                cliTelCel = request.getParameter("cliTelCel");
                cliEmail = request.getParameter("cliEmail");
                
                clienteBusiness.update(cliCod, tipCliCod, cliRazSoc, cliNomCom, 
                        cliDomFis, cliNom, cliApePat, cliApeMat, cliSex, cliDir, 
                        estCivCod, cliTelFij, cliTelCel, cliEmail);
                
                break;
                
            case "disable":
                cliCod = request.getParameter("cliCod");
                clienteBusiness.disable(cliCod);
                break;
                
            case "activate":
                cliCod = request.getParameter("cliCod");
                clienteBusiness.activate(cliCod);
                break;
                
            case "delete":
                cliCod = request.getParameter("cliCod");
                clienteBusiness.delete(cliCod);
                break;
                
            case "ruta":
                catRutCod = Integer.parseInt(request.getParameter("catRutCod"));
                cliCod = request.getParameter("cliCod");
                cliRutDes = request.getParameter("cliRutDes");
                clienteBusiness.addRuta(catRutCod, cliCod, cliRutDes, 'A');
                break;
                
            case "documento":
                cliCod = request.getParameter("cliCod");
                tipDocCliCod = Integer.parseInt(request.getParameter("tipDocCliCod"));
                docCliNum = request.getParameter("docCliNum");
                clienteBusiness.addDocumento(cliCod, tipDocCliCod, docCliNum, 'A');
                break;
                
        }
        response.sendRedirect(request.getContextPath() + "/secured/ventas/clientes");
    }
}
