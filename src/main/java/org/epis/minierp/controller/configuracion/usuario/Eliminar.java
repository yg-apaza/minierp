package org.epis.minierp.controller.configuracion.usuario;

import org.epis.minierp.dao.general.EnP1mUsuarioDao;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "eliminar", urlPatterns = {"/eliminar"})
public class Eliminar extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        EnP1mUsuarioDao op = new EnP1mUsuarioDao();
        System.out.println("antes del error");
        op.deleteUsuario(request.getParameter("id"));
        System.out.println("despues del error");
        response.sendRedirect(request.getContextPath() + "/secured/configuracion/usuario/usuarios");
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
