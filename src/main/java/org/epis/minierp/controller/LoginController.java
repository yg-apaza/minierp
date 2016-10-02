package org.epis.minierp.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.epis.minierp.dao.UsuarioDao;
import org.epis.minierp.model.Usuario;

public class LoginController extends HttpServlet
{
    private static final long serialVersionUID = 1L;

    public LoginController()
    {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // si es que se logeo retornar a secured
        request.getRequestDispatcher("/login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        System.out.println("asdasdad");
        System.out.println((String)request.getParameter("usuario"));
        HttpSession session = request.getSession(true);
        Usuario u = UsuarioDao.getUsuario((String)request.getParameter("usuario"));
        System.out.println(u);
    }
}