package org.epis.minierp.controller.compras;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.logistica.EnP2mInventarioCabDao;
import org.epis.minierp.model.EnP2mInventarioCab;

public class InventoryController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List <EnP2mInventarioCab> inventarios = (new EnP2mInventarioCabDao()).getAll();
        request.setAttribute("invetariosCab", inventarios);
        
        request.getRequestDispatcher("/WEB-INF/compras/inventory.jsp").forward(request, response);
    }
}
