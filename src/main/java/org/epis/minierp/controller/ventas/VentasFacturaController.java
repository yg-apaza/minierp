/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.epis.minierp.controller.ventas;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.ventas.EnP1mClienteDao;
import org.epis.minierp.dao.ventas.EnP1mFacturaVentaCabDao;
import org.epis.minierp.model.EnP1mCliente;
import org.epis.minierp.model.EnP1mFacturaVentaCab;

/**
 *
 * @author Ylnner
 */
public class VentasFacturaController extends HttpServlet{
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EnP1mFacturaVentaCabDao facturaDao=new EnP1mFacturaVentaCabDao();
        List<EnP1mFacturaVentaCab> facturas=facturaDao.getAll();    
        request.setAttribute("facturas",facturas); 
        request.getRequestDispatcher("/WEB-INF/ventas/factura/factura.jsp").forward(request, response);
    }
    
}

