package org.epis.minierp.controller.configuracion.usuario;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.codec.digest.DigestUtils;
import org.epis.minierp.business.general.EnP1mUsuarioBusiness;
import org.epis.minierp.dao.general.EnP1mSucursalDao;
import org.epis.minierp.dao.general.EnP1mUsuarioDao;
import org.epis.minierp.dao.general.TaGzzEstadoCivilDao;
import org.epis.minierp.dao.general.TaGzzTipoUsuarioDao;
import org.epis.minierp.model.EnP1mSucursal;
import org.epis.minierp.model.EnP1mUsuario;
import org.epis.minierp.model.TaGzzEstadoCivil;
import org.epis.minierp.model.TaGzzTipoUsuario;
import org.epis.minierp.util.DateUtil;

public class UsuariosController extends HttpServlet
{
    private static final long serialVersionUID = 1L;
    private SimpleDateFormat dt = new SimpleDateFormat("dd/MM/yyyy");
    EnP1mUsuarioDao daoUsu;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EnP1mUsuarioDao daoUsu = new EnP1mUsuarioDao();
        List<EnP1mUsuario> usuarios = daoUsu.getAllActive();
        List<EnP1mUsuario> inactivos = daoUsu.getAllInactive();
        
        TaGzzEstadoCivilDao daoEstCiv = new TaGzzEstadoCivilDao();
        List<TaGzzEstadoCivil> estados = daoEstCiv.getAllActive();
        TaGzzTipoUsuarioDao tipUsuDao=new TaGzzTipoUsuarioDao();
        List<TaGzzTipoUsuario> tipos= tipUsuDao.getAllActive();
        EnP1mSucursalDao sucDao=new EnP1mSucursalDao();
        List<EnP1mSucursal> sucursales=sucDao.getAllActive();
        
                
        request.setAttribute("estados", estados);                
        request.setAttribute("usuarios", usuarios);
        request.setAttribute("inactivos",inactivos);
        request.setAttribute("tipos",tipos);
        request.setAttribute("sucursales",sucursales);
        
        request.getRequestDispatcher("/WEB-INF/configuracion/usuario/usuarios.jsp").forward(request, response);
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String action = request.getParameter("accion");
        EnP1mUsuarioBusiness useBusi=new EnP1mUsuarioBusiness();
        switch(action){
            case "create":{
                DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
                Date fecNacUsu=null;
            try {
                fecNacUsu= format.parse(request.getParameter("fecNacUsu"));
            } catch (ParseException ex) {
                Logger.getLogger(UsuariosController.class.getName()).log(Level.SEVERE, null, ex);
            }
                useBusi.create(request.getParameter("codUsu"),request.getParameter("nomUsu"),request.getParameter("apePatUsu"), request.getParameter("apeMatUsu"),
                        request.getParameter("login"), request.getParameter("pass"), Integer.parseInt(request.getParameter("tipCod")),
                        Integer.parseInt(request.getParameter("sucCod")),
                        fecNacUsu, 
                        Integer.parseInt(request.getParameter("estCivCod")),
                        request.getParameter("sex").charAt(0), 'A');
                break;
            }
            case "update":{
                    DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
                    Date fecNacUsuUpdate=null;
                try {
                    fecNacUsuUpdate= format.parse(request.getParameter("fecNacUsuUpdate"));
                } catch (ParseException ex) {
                    Logger.getLogger(UsuariosController.class.getName()).log(Level.SEVERE, null, ex);
                }
                useBusi.update(request.getParameter("codUsuUpdate"),
                        request.getParameter("nomUsuUpdate"),
                        request.getParameter("apePatUsuUpdate"), 
                        request.getParameter("apeMatUsuUpdate"),
                        request.getParameter("loginUpdate"), 
                        //request.getParameter("passUpdate"),
                        "pass",
                        Integer.parseInt(request.getParameter("tipCodUpdate")),
                        Integer.parseInt(request.getParameter("sucCodUpdate")),
                        fecNacUsuUpdate, 
                        Integer.parseInt(request.getParameter("estCivCodUpdate")),
                        request.getParameter("sexUpdate").charAt(0));
                break;
            }
            case "disable":{
                useBusi.disable(request.getParameter("codUsuDisable"));
                break;
            }
            case "activate":{
                useBusi.activate(request.getParameter("codUsuActivate"));
                break;
            }
            case "delete":{
                useBusi.delete(request.getParameter("codUsuDelete"));
                break;
            }            
        }
        response.sendRedirect(request.getContextPath() + "/secured/configuracion/usuario/usuarios");
    }
}
