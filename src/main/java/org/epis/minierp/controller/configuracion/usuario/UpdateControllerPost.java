package org.epis.minierp.controller.configuracion.usuario;

import java.io.IOException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.general.EnP1mUsuarioDao;
import org.epis.minierp.model.EnP1mUsuario;
import org.epis.minierp.model.TaGzzEstadoCivil;
import org.epis.minierp.model.TaGzzTipoUsuario;

@WebServlet(name = "UpdateControllerPost", urlPatterns = {"/updatecontrollerpost"})
public class UpdateControllerPost extends HttpServlet {

    private SimpleDateFormat dt = new SimpleDateFormat("dd/MM/yyyy");
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        EnP1mUsuarioDao op = new EnP1mUsuarioDao();
        EnP1mUsuario u = op.getById(request.getParameter("usuCod"));
        try {
            u.setUsuCod(request.getParameter("usuCod"));
            u.setUsuNom(request.getParameter("usuNom"));
            u.setUsuApePat(request.getParameter("usuApePat"));
            u.setUsuApeMat(request.getParameter("usuApeMat"));
            u.setUsuLog(request.getParameter("usuLog"));
            TaGzzTipoUsuario tipoUsu = new TaGzzTipoUsuario();
            tipoUsu.setTipUsuCod(Integer.parseInt(request.getParameter("tipUsuCod")));
            u.setTaGzzTipoUsuario(tipoUsu);
            u.setUsuFecNac(dt.parse(request.getParameter("usuFecNac")));
            TaGzzEstadoCivil estadoCiv = new TaGzzEstadoCivil();
            estadoCiv.setEstCivCod(Integer.parseInt(request.getParameter("estCivCod")));
            u.setTaGzzEstadoCivil(estadoCiv);
            u.setUsuSex(request.getParameter("usuSex").charAt(0));
            u.setEstRegCod('A');
            op.updateUsuario(u);
        }catch (Exception e) {
        }
        response.sendRedirect(request.getContextPath() + "/secured/configuracion/usuario/usuarios");
    }
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
