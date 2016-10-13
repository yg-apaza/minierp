/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.epis.minierp.controller.general;

import java.io.IOException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.codec.digest.DigestUtils;
import org.epis.minierp.dao.general.UsuarioDao;
import org.epis.minierp.model.EnP1mUsuario;
import org.epis.minierp.model.TaGzzEstadoCivil;
import org.epis.minierp.model.TaGzzTipoUsuario;
/**
 *
 * @author MAX
 */
@WebServlet(name = "UpdateControllerPost", urlPatterns = {"/updatecontrollerpost"})
public class UpdateControllerPost extends HttpServlet {

    private SimpleDateFormat dt = new SimpleDateFormat("dd/MM/yyyy");
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
       
        
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
        response.setContentType("text/html;charset=UTF-8");
        
        UsuarioDao op=new UsuarioDao();
        EnP1mUsuario u = op.getById(request.getParameter("usuCod"));
        try {
            
        
            System.out.println("estoy en el try");
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
         response.sendRedirect(request.getContextPath() + "/secured/general/usuarios");
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