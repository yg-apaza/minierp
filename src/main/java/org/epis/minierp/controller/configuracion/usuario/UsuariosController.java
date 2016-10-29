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
import org.epis.minierp.dao.general.TaGzzTipoUsuarioDao;
import org.epis.minierp.util.DateUtil;

public class UsuariosController extends HttpServlet
{
    private static final long serialVersionUID = 1L;
    EnP1mUsuarioDao daoUsu;
    TaGzzEstadoCivilDao daoEstCiv;
    TaGzzTipoUsuarioDao tipUsuDao;
    EnP1mSucursalDao sucDao;
    EnP1mUsuarioBusiness usuarioBusiness;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        daoUsu = new EnP1mUsuarioDao();
        daoEstCiv = new TaGzzEstadoCivilDao();
        tipUsuDao = new TaGzzTipoUsuarioDao();
        sucDao = new EnP1mSucursalDao();
              
        request.setAttribute("estados", daoEstCiv.getAllActive());                
        request.setAttribute("usuarios", daoUsu.getAllActive());
        request.setAttribute("inactivos",daoUsu.getAllInactive());
        request.setAttribute("tipos",tipUsuDao.getAllActive());
        request.setAttribute("sucursales",sucDao.getAllActive());
        
        request.getRequestDispatcher("/WEB-INF/configuracion/usuario/usuarios.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("accion");
        usuarioBusiness=new EnP1mUsuarioBusiness();
        daoUsu = new EnP1mUsuarioDao();
        
        switch(action){
            case "create":
                String usuCodCreate= request.getParameter("usuCod");
                String usuNomCreate = request.getParameter("usuNom");
                String usuApePatCreate = request.getParameter("usuApePat");
                String usuApeMatCreate = request.getParameter("usuApeMat");
                String usuLogCreate = request.getParameter("usuLog");
                String usuPasCreate = request.getParameter("usuPas");
                int tipUsuCodCreate = Integer.parseInt(request.getParameter("tipUsuCod"));
                int sucCodCreate = Integer.parseInt(request.getParameter("sucCod"));
                Date usuFecNacCreate = DateUtil.getDate2String(request.getParameter("usuFecNac"));
                int estCivCodCreate = Integer.parseInt(request.getParameter("estCivCod"));;
                char usuSexCreate = request.getParameter("usuSex").charAt(0);
                
                usuarioBusiness.create(usuCodCreate, usuNomCreate, usuApePatCreate, usuApeMatCreate, 
                        usuLogCreate, usuPasCreate,tipUsuCodCreate, sucCodCreate, usuFecNacCreate, 
                        estCivCodCreate, usuSexCreate, 'A');

            case "update":
                String usuCodUpdate = request.getParameter("usuCod");
                String usuNomUpdate = request.getParameter("usuNom");
                String usuApePatUpdate = request.getParameter("usuApePat");
                String usuApeMatUpdate = request.getParameter("usuApeMat");
                String usuLogUpdate = request.getParameter("usuLog");
                int tipUsuCodUpdate = Integer.parseInt(request.getParameter("tipUsuCod"));
                int sucCodUpdate = Integer.parseInt(request.getParameter("sucCod"));
                Date usuFecNacUpdate = DateUtil.getDate2String(request.getParameter("usuFecNac"));
                int estCivCodUpdate = Integer.parseInt(request.getParameter("estCivCod"));;
                char usuSexUpdate = request.getParameter("usuSex").charAt(0);
                
                usuarioBusiness.update(usuCodUpdate, usuNomUpdate, usuApePatUpdate, usuApeMatUpdate, 
                        usuLogUpdate, tipUsuCodUpdate, sucCodUpdate, usuFecNacUpdate,estCivCodUpdate, 
                        usuSexUpdate);
                break;
                
            case "disable":{
                String usuCodDisable = request.getParameter("usuCod");
                usuarioBusiness.disable(usuCodDisable);
                break;
                
            }
            case "activate":{
                String usuCodActivate = request.getParameter("usuCod");
                usuarioBusiness.activate(usuCodActivate);
                break;
                
            }
            case "delete":{
                String usuCodDelete = request.getParameter("usuCod");
                usuarioBusiness.delete(usuCodDelete);
                break;
            }            
        }
        response.sendRedirect(request.getContextPath() + "/secured/configuracion/usuario/usuarios");
    }
}
