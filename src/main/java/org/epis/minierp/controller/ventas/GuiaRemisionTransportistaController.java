/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package org.epis.minierp.controller.ventas;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.business.logistica.EnP2mGuiaRemTransportistaBusiness;
import org.epis.minierp.dao.logistica.EnP2mGuiaRemTransportistaDao;

/**
 *
 * @author AlexanderYlnner
 */
public class GuiaRemisionTransportistaController extends HttpServlet {
    private static final long serialVersionUID = 1L;   
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        EnP2mGuiaRemTransportistaBusiness guiaTBusiness = new EnP2mGuiaRemTransportistaBusiness();
        EnP2mGuiaRemTransportistaDao transDao= new EnP2mGuiaRemTransportistaDao();
        
        
        request.setAttribute("guias", transDao.getAllActive());
        
        request.getRequestDispatcher("/WEB-INF/ventas/guiaremision/guiaRemisionTransportista.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    }
}
