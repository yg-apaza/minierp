package org.epis.minierp.controller.configuracion;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.general.EnP1mSucursalDao;
import org.epis.minierp.model.EnP1mSucursal;

public class AddSucursalController extends HttpServlet
{	
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {       
        EnP1mSucursalDao sucursal = new EnP1mSucursalDao();
        List <EnP1mSucursal> sucursales = sucursal.getAllActive();
        request.setAttribute("sucursales",sucursales);
        
        request.getRequestDispatcher("/WEB-INF/configuracion/addSucursal.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String sucCod = request.getParameter("sucCod");
        String sucDes = request.getParameter("sucDes");
        String sucDir = request.getParameter("sucDir");
        
        EnP1mSucursalDao sucursal = new EnP1mSucursalDao();
        EnP1mSucursal s = new EnP1mSucursal();
        
        s.setSucCod(Integer.parseInt(sucCod));
        s.setSucDes(sucDes);
        s.setSucDir(sucDir);
        s.setEstRegCod('A');
        sucursal.save(s);
        response.sendRedirect(request.getContextPath() + "/secured/configuracion");
    }
}