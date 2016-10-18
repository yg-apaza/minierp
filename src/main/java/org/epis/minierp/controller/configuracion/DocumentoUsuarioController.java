package org.epis.minierp.controller.configuracion;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.business.configuracion.EnP1mDocumentoUsuarioBusiness;
import org.epis.minierp.dao.general.EnP1mUsuarioDao;
import org.epis.minierp.dao.general.TaGzzTipoDocUsuarioDao;
import org.epis.minierp.dao.ventas.EnP1mDocumentoUsuarioDao;

public class DocumentoUsuarioController extends HttpServlet {
    
    private static final long serialVersionUID = 1L;
    EnP1mUsuarioDao UsuarioDao;
    TaGzzTipoDocUsuarioDao tipoDocUsuDao;
    EnP1mDocumentoUsuarioDao docUsuDao;
    EnP1mDocumentoUsuarioBusiness docUsuarioBusiness;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UsuarioDao = new EnP1mUsuarioDao();
        tipoDocUsuDao = new TaGzzTipoDocUsuarioDao();
        docUsuDao = new EnP1mDocumentoUsuarioDao();
        
        request.setAttribute("usuarios", UsuarioDao.getAllActive());
        request.setAttribute("tiposDocUsu", tipoDocUsuDao.getAllActive());
        request.setAttribute("docUsuAct", docUsuDao.getAllActive());
        request.setAttribute("docUsuInc", docUsuDao.getAllInactive());
        request.getRequestDispatcher("/WEB-INF/configuracion/documentoUsuario.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("accion");
        docUsuarioBusiness = new EnP1mDocumentoUsuarioBusiness();
        
        switch(action) {
            case "create":
                String usuCod = request.getParameter("usuCod");
                int tipDocUsuCod = Integer.parseInt(request.getParameter("tipDocUsuCod"));
                String docUsuNum = request.getParameter("docUsuNum");
                docUsuarioBusiness.create(usuCod, tipDocUsuCod, docUsuNum, 'A');
                break;
                
            case "update":
                String usuCodUpdate = request.getParameter("usuCod");
                int tipDocUsuCodUpdate = Integer.parseInt(request.getParameter("tipDocUsuCod"));
                String docUsuNumUpdate = request.getParameter("docUsuNum");
                docUsuarioBusiness.update(usuCodUpdate, tipDocUsuCodUpdate, docUsuNumUpdate);
                break;
                
            case "disable":
                String usuCodDisable = request.getParameter("usuCod");
                int tipDocUsuCodDisable = Integer.parseInt(request.getParameter("tipDocUsuCod"));
                docUsuarioBusiness.disable(usuCodDisable, tipDocUsuCodDisable);
                break;
                
            case "activate":
                String usuCodActivate = request.getParameter("usuCod");
                int tipDocUsuCodActivate = Integer.parseInt(request.getParameter("tipDocUsuCod"));
                docUsuarioBusiness.activate(usuCodActivate, tipDocUsuCodActivate);
                break;
                
            case "delete":
                String usuCodDelete = request.getParameter("usuCod");
                int tipDocUsuCodDelete = Integer.parseInt(request.getParameter("tipDocUsuCod"));
                docUsuarioBusiness.delete(usuCodDelete, tipDocUsuCodDelete);
                break;
                
        }
        response.sendRedirect(request.getContextPath() + "/secured/configuracion/documentoUsuario");
    }
}
