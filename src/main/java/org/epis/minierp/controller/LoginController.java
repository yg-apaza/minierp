package org.epis.minierp.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.codec.digest.DigestUtils;
import org.epis.minierp.dao.general.UsuarioDao;
import org.epis.minierp.model.EnP1mUsuario;

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
            EnP1mUsuario u = (EnP1mUsuario) session.getAttribute("usuario");
            switch(u.getTaGzzTipoUsuario().getTipUsuCod())
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
        UsuarioDao daoUsu = new UsuarioDao();
        HttpSession session = request.getSession(true);
        String username = (String)request.getParameter("usuario");
        String password = (String)request.getParameter("password");
        EnP1mUsuario u = daoUsu.getByUsername(username);
        System.out.println(u);
        System.out.println(u);
        
        if(u != null && u.getUsuPas().equals(DigestUtils.sha256Hex(password)))
        {
            session.setAttribute("usuario", u);
            switch(u.getTaGzzTipoUsuario().getTipUsuCod())
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