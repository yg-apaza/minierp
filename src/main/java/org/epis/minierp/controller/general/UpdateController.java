/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.epis.minierp.controller.general;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.codec.digest.DigestUtils;
import org.epis.minierp.dao.general.EstadoCivilDao;
import org.epis.minierp.dao.general.TipoUsuarioDao;
import org.epis.minierp.dao.general.UsuarioDao;
import org.epis.minierp.model.EnP1mUsuario;
import org.epis.minierp.model.TaGzzEstadoCivil;
import org.epis.minierp.model.TaGzzTipoUsuario;

/**
 *
 * @author MAX
 */
  @WebServlet(name = "UpdateController", urlPatterns = {"/updatecontroller"})
public class UpdateController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        UsuarioDao daoUsu = new UsuarioDao();
        
        EnP1mUsuario u = new EnP1mUsuario();
        u=daoUsu.getById(request.getParameter("id"));
            
        TipoUsuarioDao daoTipUsu = new TipoUsuarioDao();
        EstadoCivilDao daoEstCiv = new EstadoCivilDao();
        List<TaGzzTipoUsuario> tipos = daoTipUsu.getAllActive();
        List<TaGzzEstadoCivil> estados = daoEstCiv.getAllActive();
        
        request.setAttribute("tipos", tipos);
        request.setAttribute("estados", estados);
        request.setAttribute("usuario", u);
        
            request.getRequestDispatcher("/WEB-INF/general/actualizar.jsp").forward(request, response);
              
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
