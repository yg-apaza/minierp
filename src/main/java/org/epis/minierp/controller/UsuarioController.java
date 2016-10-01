package org.epis.minierp.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.epis.minierp.dao.UsuarioDao;
import org.epis.minierp.model.Usuario;

public class UsuarioController extends HttpServlet
{	
    private static final long serialVersionUID = 1L;
    private UsuarioDao dao;

    public UsuarioController()
    {
        super();
        dao = new UsuarioDao();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        
    }
}