package org.epis.minierp.controller.general;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.general.UsuarioDao;
import org.epis.minierp.model.EnP1mUsuario;

public class UsuariosController extends HttpServlet
{
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UsuarioDao daoUsu = new UsuarioDao();
        List<EnP1mUsuario> usuarios = daoUsu.getAll();
        request.setAttribute("usuarios", usuarios);
        request.getRequestDispatcher("/WEB-INF/general/usuarios.jsp").forward(request, response);
    }
}
