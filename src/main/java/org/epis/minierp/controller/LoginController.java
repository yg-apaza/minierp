package org.epis.minierp.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.codec.digest.DigestUtils;
import org.epis.minierp.dao.general.EnP1mEmpresaDao;
import org.epis.minierp.dao.general.EnP1mUsuarioDao;
import org.epis.minierp.model.EnP1mEmpresa;
import org.epis.minierp.model.EnP1mUsuario;

public class LoginController extends HttpServlet
{
    private static final long serialVersionUID = 1L;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);EnP1mEmpresaDao empDAO = new EnP1mEmpresaDao();
        EnP1mEmpresa emp = empDAO.getById(01);
        File af;
        if(emp.getEmpImgUrl()!=null ){
            String empImg = emp.getEmpImgUrl();
            af = new File(request.getSession().getServletContext().getRealPath("/")+"/img/"+empImg);
            
            if(af.exists()){
                request.setAttribute("empImg", empImg);
            }
            else request.setAttribute("empImg", "nada");
        }
        else{
            request.setAttribute("empImg", "nada");
        }
        if (session == null || session.getAttribute("usuario") == null)
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        else
            response.sendRedirect(request.getContextPath() + "/secured/general/panel");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        EnP1mUsuarioDao daoUsu = new EnP1mUsuarioDao();
        HttpSession session = request.getSession(true);
        String username = (String)request.getParameter("usuario");
        String password = (String)request.getParameter("password");
               
        EnP1mUsuario u = daoUsu.getByUsername(username);
        
        if(u != null && u.getUsuPas().equals(DigestUtils.sha256Hex(password)))
        {
            session.setAttribute("usuario", u);
            response.sendRedirect(request.getContextPath() + "/secured/general/panel");
        }
        else
            response.sendRedirect(request.getContextPath() + "/login");
    }
}