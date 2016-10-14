package org.epis.minierp.controller.general;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.general.TaGzzEstadoCivilDao;
import org.epis.minierp.dao.general.TaGzzTipoUsuarioDao;
import org.epis.minierp.dao.general.EnP1mUsuarioDao;
import org.epis.minierp.model.EnP1mUsuario;
import org.epis.minierp.model.TaGzzEstadoCivil;
import org.epis.minierp.model.TaGzzTipoUsuario;

@WebServlet(name = "UpdateController", urlPatterns = {"/updatecontroller"})
public class UpdateController extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        EnP1mUsuarioDao daoUsu = new EnP1mUsuarioDao();
        
        EnP1mUsuario u = daoUsu.getById(request.getParameter("id"));
            
        TaGzzTipoUsuarioDao daoTipUsu = new TaGzzTipoUsuarioDao();
        TaGzzEstadoCivilDao daoEstCiv = new TaGzzEstadoCivilDao();
        List<TaGzzTipoUsuario> tipos = daoTipUsu.getAllActive();
        List<TaGzzEstadoCivil> estados = daoEstCiv.getAllActive();
        
        request.setAttribute("tipos", tipos);
        request.setAttribute("estados", estados);
        request.setAttribute("usuario", u);
        request.getRequestDispatcher("/WEB-INF/general/actualizar.jsp").forward(request, response);
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
