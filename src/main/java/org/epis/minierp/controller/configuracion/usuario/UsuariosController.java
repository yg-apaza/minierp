package org.epis.minierp.controller.configuracion.usuario;

import java.io.IOException;

import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.business.general.EnP1mUsuarioBusiness;
import org.epis.minierp.dao.general.EnP1mSucursalDao;
import org.epis.minierp.dao.general.EnP1mUsuarioDao;
import org.epis.minierp.dao.general.TaGzzEstadoCivilDao;
import org.epis.minierp.dao.general.TaGzzTipoDocUsuarioDao;
import org.epis.minierp.dao.general.TaGzzTipoUsuarioDao;
import org.epis.minierp.dao.ventas.EnP1mCarteraClientesDao;
import org.epis.minierp.dao.ventas.EnP1mClienteDao;
import org.epis.minierp.dao.ventas.EnP1mDocumentoUsuarioDao;
import org.epis.minierp.model.TaGzzTipoDocUsuario;
import org.epis.minierp.util.DateUtil;

public class UsuariosController extends HttpServlet
{
    private static final long serialVersionUID = 1L;
    EnP1mUsuarioDao daoUsu;
    TaGzzEstadoCivilDao daoEstCiv;
    TaGzzTipoUsuarioDao tipUsuDao;
    EnP1mSucursalDao sucDao;
    EnP1mUsuarioBusiness usuarioBusiness;
    EnP1mCarteraClientesDao carCliDao;
    EnP1mDocumentoUsuarioDao docUsuDao;
    TaGzzTipoDocUsuarioDao tipDocUsu;
    EnP1mClienteDao cliDao;
    
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        daoUsu = new EnP1mUsuarioDao();
        daoEstCiv = new TaGzzEstadoCivilDao();
        tipUsuDao = new TaGzzTipoUsuarioDao();
        sucDao = new EnP1mSucursalDao();
        carCliDao = new EnP1mCarteraClientesDao();
        docUsuDao = new EnP1mDocumentoUsuarioDao();
        cliDao = new EnP1mClienteDao();
        tipDocUsu = new TaGzzTipoDocUsuarioDao();
        
        request.setAttribute("estados", daoEstCiv.getAllActive());                
        request.setAttribute("usuarios", daoUsu.getAllActive());
        request.setAttribute("inactivos",daoUsu.getAllInactive());
        request.setAttribute("tipos",tipUsuDao.getAllActive());
        request.setAttribute("sucursales",sucDao.getAllActive());
        request.setAttribute("carteraCli",carCliDao.getAllActive());
        request.setAttribute("clientes",cliDao.getAllActive());   
        request.setAttribute("documentos",tipDocUsu.getAllActive());
        request.setAttribute("documentosUsuarios",docUsuDao.getAllActive());
        
        request.getRequestDispatcher("/WEB-INF/configuracion/usuario/usuarios.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("accion");
        usuarioBusiness=new EnP1mUsuarioBusiness();
        
        String usuCod, usuNom, usuApePat, usuApeMat, usuLog, usuPas, docUsuNum, cliCod, usuCliDes;
        int tipUsuCod, sucCod, tipDocUsuCod, estCivCod;
        Date usuFecNac;
        char usuSex;
        
        switch(action){
            case "create":
                usuCod = request.getParameter("usuCod");
                usuNom = request.getParameter("usuNom");
                usuApePat = request.getParameter("usuApePat");
                usuApeMat = request.getParameter("usuApeMat");
                usuLog = request.getParameter("usuLog");
                usuPas = request.getParameter("usuPas");
                tipUsuCod = Integer.parseInt(request.getParameter("tipUsuCod"));
                sucCod = Integer.parseInt(request.getParameter("sucCod"));
                usuFecNac = DateUtil.getDate2String(request.getParameter("usuFecNac"));
                estCivCod = Integer.parseInt(request.getParameter("estCivCod"));;
                usuSex = request.getParameter("usuSex").charAt(0);
                
                usuarioBusiness.create(usuCod, usuNom, usuApePat, usuApeMat, 
                        usuLog, usuPas,tipUsuCod, sucCod, usuFecNac, 
                        estCivCod, usuSex, 'A');

            case "update":
                usuCod = request.getParameter("usuCod");
                usuNom = request.getParameter("usuNom");
                usuApePat= request.getParameter("usuApePat");
                usuApeMat = request.getParameter("usuApeMat");
                usuLog = request.getParameter("usuLog");
                tipUsuCod = Integer.parseInt(request.getParameter("tipUsuCod"));
                sucCod = Integer.parseInt(request.getParameter("sucCod"));
                usuFecNac = DateUtil.getDate2String(request.getParameter("usuFecNac"));
                estCivCod = Integer.parseInt(request.getParameter("estCivCod"));;
                usuSex= request.getParameter("usuSex").charAt(0);
                
                usuarioBusiness.update(usuCod, usuNom, usuApePat, usuApeMat, 
                        usuLog, tipUsuCod, sucCod, usuFecNac,estCivCod, usuSex);
                break;
                
            case "disable":{
                usuCod = request.getParameter("usuCod");
                usuarioBusiness.disable(usuCod);
                break;
                
            }
            case "activate":{
                usuCod = request.getParameter("usuCod");
                usuarioBusiness.activate(usuCod);
                break;
                
            }
            case "delete":{
                usuCod= request.getParameter("usuCod");
                usuarioBusiness.delete(usuCod);
                break;
            }
            
            case "documento":{
                usuCod = request.getParameter("usuCod");
                tipDocUsuCod = Integer.parseInt(request.getParameter("tipDocUsuCod"));
                docUsuNum = request.getParameter("docUsuNum");
                usuarioBusiness.createDocumento(usuCod, tipDocUsuCod, docUsuNum, 'A');
                break;
            }
            
            case "cliente":{
                usuCod = request.getParameter("usuCod");
                cliCod =request.getParameter("cliCod");
                usuCliDes = request.getParameter("usuCliDes");
                usuarioBusiness.createCarteraCli(usuCod, cliCod, usuCliDes, 'A');
                break;
            }
            
            case "modDocumento":{
                usuCod = request.getParameter("usuCod");
                tipDocUsuCod = Integer.parseInt(request.getParameter("tipDocUsuCod"));
                docUsuNum = request.getParameter("docUsuNum");
                usuarioBusiness.updateDocumento(usuCod, tipDocUsuCod, docUsuNum);
                break;
            }
            
            case "delDocumento":{
                usuCod = request.getParameter("usuCod");
                tipDocUsuCod = Integer.parseInt(request.getParameter("tipDocUsuCod"));
                usuarioBusiness.deleteDocumento(usuCod, tipDocUsuCod);
                break;
            }
            
            case "modCliente":{
                usuCod = request.getParameter("usuCod");
                cliCod =request.getParameter("cliCod");
                usuCliDes = request.getParameter("usuCliDes");
                usuarioBusiness.updateCarteraCli(usuCod, cliCod, usuCliDes);
                break;
            }
            
            case "delCliente":{
                usuCod = request.getParameter("usuCod");
                cliCod =request.getParameter("cliCod");
                usuarioBusiness.deleteCarteraCli(usuCod, cliCod);
                break;
            }
        }
        response.sendRedirect(request.getContextPath() + "/secured/configuracion/usuario/usuarios");
    }
}
