/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.epis.minierp.controller.configuracion;

/**
 *
 * @author User
 */
import java.io.IOException;
import java.text.ParseException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.configuracion.EnP1mSucursalDao;
import org.epis.minierp.model.EnP1mSucursal;

public class SucursalController extends HttpServlet
{	
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {       
        EnP1mSucursalDao sucursal = new EnP1mSucursalDao();
        List <EnP1mSucursal> sucursales = sucursal.getAllActive();
        request.setAttribute("sucursales",sucursales);
        
        request.getRequestDispatcher("/WEB-INF/configuracion/sucursal.jsp").forward(request, response);
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