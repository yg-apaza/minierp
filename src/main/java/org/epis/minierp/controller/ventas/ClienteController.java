package org.epis.minierp.controller.ventas;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.business.ventas.EnP1mClienteBusiness;
import org.epis.minierp.dao.general.TaGzzCanalClienteDao;
import org.epis.minierp.dao.general.TaGzzEstadoCivilDao;
import org.epis.minierp.dao.general.TaGzzTipoDocClienteDao;
import org.epis.minierp.dao.ventas.EnP1mCatalogoRutaDao;
import org.epis.minierp.dao.ventas.EnP1mClienteDao;
import org.epis.minierp.dao.ventas.EnP1mClientesRutasDao;
import org.epis.minierp.dao.ventas.EnP1mDocumentoClienteDao;
import org.epis.minierp.dao.general.TaGzzTipoClienteDao;

public class ClienteController extends HttpServlet {
    
    private static final long serialVersionUID = 1L;
    EnP1mClienteDao clienteDao;
    TaGzzEstadoCivilDao estadoCivilDao;
    EnP1mClienteBusiness clienteBusiness;
    TaGzzTipoClienteDao tipClienteDao;
    EnP1mClientesRutasDao cliRutDao;
    EnP1mCatalogoRutaDao rutaDao;
    TaGzzTipoDocClienteDao tipDocDao;
    EnP1mDocumentoClienteDao docCliDao;
    TaGzzCanalClienteDao canalDao;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        clienteDao = new EnP1mClienteDao();
        estadoCivilDao = new TaGzzEstadoCivilDao();
        tipClienteDao = new TaGzzTipoClienteDao();
        rutaDao = new EnP1mCatalogoRutaDao();
        tipDocDao = new TaGzzTipoDocClienteDao();
        docCliDao = new EnP1mDocumentoClienteDao();
        cliRutDao = new EnP1mClientesRutasDao();
        canalDao = new TaGzzCanalClienteDao();
        
        request.setAttribute("cliente", clienteDao.getAllActive());
        request.setAttribute("estCivil", estadoCivilDao.getAllActive());
        request.setAttribute("tipCliente", tipClienteDao.getAllActive());
        request.setAttribute("rutas", rutaDao.getAllActive());
        request.setAttribute("canales", canalDao.getAllActive());
        request.setAttribute("documentos", tipDocDao.getAllActive());
        request.setAttribute("allDocClientes", docCliDao.getAllActiveOrdered());
        request.setAttribute("allRutClientes", cliRutDao.getAllActiveOrdered());
        request.setAttribute("inactivos", clienteDao.getAllInactives());
        request.getRequestDispatcher("/WEB-INF/ventas/cliente/cliente.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("accion");
        clienteBusiness = new EnP1mClienteBusiness();
        
        String cliCod, cliRazSoc, cliNomCom, cliDomFis, cliNom, cliApePat, cliApeMat, cliDir, cliTelFij, cliTelCel, cliEmail, cliRutDes, docCliNum;
        int tipCliCod, estCivCod, catRutCod, tipDocCliCod, canCod;
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
                canCod = Integer.parseInt(request.getParameter("canCod"));
                
                clienteBusiness.create(cliCod, tipCliCod, cliRazSoc, cliNomCom, 
                        cliDomFis, cliNom, cliApePat, cliApeMat, cliSex, cliDir, 
                        estCivCod, cliTelFij, cliTelCel, cliEmail, canCod, 'A');
                
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
                canCod = Integer.parseInt(request.getParameter("canCod"));
                
                clienteBusiness.update(cliCod, tipCliCod, cliRazSoc, cliNomCom, 
                        cliDomFis, cliNom, cliApePat, cliApeMat, cliSex, cliDir, 
                        estCivCod, cliTelFij, cliTelCel, cliEmail,canCod);
                
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
                clienteBusiness.createRuta(catRutCod, cliCod, cliRutDes, 'A');
                break;
                
            case "documento":
                cliCod = request.getParameter("cliCod");
                tipDocCliCod = Integer.parseInt(request.getParameter("tipDocCliCod"));
                docCliNum = request.getParameter("docCliNum");
                clienteBusiness.createDocumento(cliCod, tipDocCliCod, docCliNum, 'A');
                break;
            
            case "modRuta":
                cliCod = request.getParameter("cliCod");
                catRutCod = Integer.parseInt(request.getParameter("catRutCod"));
                cliRutDes = request.getParameter("cliRutDes");
                clienteBusiness.updateRuta(catRutCod, cliCod, cliRutDes);
                break;
                
            case "delRuta":
                cliCod = request.getParameter("cliCod");
                catRutCod = Integer.parseInt(request.getParameter("catRutCod"));
                clienteBusiness.deleteRuta(catRutCod, cliCod);
                break;
                
            case "modDoc":
                cliCod = request.getParameter("cliCod");
                tipDocCliCod = Integer.parseInt(request.getParameter("tipDocCliCod"));
                docCliNum = request.getParameter("docCliNum");
                clienteBusiness.updateDocumento(cliCod, tipDocCliCod, docCliNum);
                break;
                
            case "delDoc":
                cliCod = request.getParameter("cliCod");
                tipDocCliCod = Integer.parseInt(request.getParameter("tipDocCliCod"));
                clienteBusiness.deleteDocumento(cliCod, tipDocCliCod);
                break;
                
        }
        response.sendRedirect(request.getContextPath() + "/secured/ventas/clientes");
    }
}
