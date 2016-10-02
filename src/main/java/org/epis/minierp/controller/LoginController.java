package org.epis.minierp.controller;

import com.google.common.hash.Hashing;
import java.io.IOException;
import java.nio.charset.StandardCharsets;

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

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("usuario") == null)
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        else
        {
            Usuario u = (Usuario) session.getAttribute("usuario");
            switch(u.getTipUsuCod())
            {
                case 1:
                    response.sendRedirect(request.getContextPath() + "/secured/general");
                    break;
                case 2:
                    response.sendRedirect(request.getContextPath() + "/secured/ventas");
                    break;
                case 3:
                    response.sendRedirect(request.getContextPath() + "/secured/compras");
                    break;
                case 4:
                    response.sendRedirect(request.getContextPath() + "/secured/contabilidad");
                    break;
                default:
                    response.sendRedirect(request.getContextPath() + "/secured/");
                    break;
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        HttpSession session = request.getSession(true);
        String username = (String)request.getParameter("usuario");
        String password = (String)request.getParameter("password");
        Usuario u = UsuarioDao.getUsuario(username);
        
        if(u != null && u.getUsuPas().equals(Hashing.sha256().hashString(password, StandardCharsets.UTF_8).toString()))
        {
            session.setAttribute("usuario", u);
            switch(u.getTipUsuCod())
            {
                case 1:
                    response.sendRedirect(request.getContextPath() + "/secured/general");
                    break;
                case 2:
                    response.sendRedirect(request.getContextPath() + "/secured/ventas");
                    break;
                case 3:
                    response.sendRedirect(request.getContextPath() + "/secured/compras");
                    break;
                case 4:
                    response.sendRedirect(request.getContextPath() + "/secured/contabilidad");
                    break;
                default:
                    response.sendRedirect(request.getContextPath() + "/secured/");
                    break;
            }
        }
        else
        {
            response.sendRedirect(request.getContextPath() + "/");
        }
    }
}