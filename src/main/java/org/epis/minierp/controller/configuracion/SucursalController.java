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
import org.epis.minierp.dao.general.EnP1mSucursalDao;
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
        //String sucCod = request.getParameter("sucCod");
        
        String action = request.getParameter("accion");
        EnP1mSucursalDao sucursal = new EnP1mSucursalDao();
        EnP1mSucursal s = new EnP1mSucursal();
        
        switch(action) {
            case "create":                
                String sucDes = request.getParameter("sucDes");
                String sucDir = request.getParameter("sucDir");     
              //  s.setSucCod(Integer.parseInt(sucCod));
                s.setSucDes(sucDes);
                s.setSucDir(sucDir);
                s.setEstRegCod('A');
                sucursal.save(s);
                break;
            case "update":
                int updateSucCod = Integer.parseInt(request.getParameter("sucCod"));
                String updateSucDes = request.getParameter("sucDes");
                String updateSucDir = request.getParameter("sucDir");
                s.setSucCod(updateSucCod);
                s.setSucDes(updateSucDes);
                s.setSucDir(updateSucDir);
                s.setEstRegCod('A');
                sucursal.update(s);
                break;
            case "delete":
                int deleteSucCod = Integer.parseInt(request.getParameter("SucCod"));
                s.setSucCod(deleteSucCod);
                s.setEstRegCod('*');
                sucursal.delete(s);
        }
        
        response.sendRedirect(request.getContextPath() + "/secured/configuracion/sucursal");
    }
}