package org.epis.minierp.controller.compras;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.logistica.EnP2mProductoDao;
import org.epis.minierp.model.EnP2mProducto;

public class InventoryController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {       
        
        EnP2mProductoDao daoPro = new EnP2mProductoDao();
        List<EnP2mProducto> productos = daoPro.getAll();
        request.setAttribute("productos", productos);
       /* UsuarioDao daoUsu = new UsuarioDao();
        List<EnP1mUsuario> usuarios = daoUsu.getAll();
        request.setAttribute("usuarios", usuarios);*/
        request.getRequestDispatcher("/WEB-INF/compras/inventory.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        EnP2mProducto product = new EnP2mProducto();
        EnP2mProductoDao producto = new EnP2mProductoDao();
        
        switch (action) {
            case "upd":
                String proCod = request.getParameter("proCodUpd");
                String proCan = request.getParameter("proCanUpd");
                
                product = producto.getById(proCod);
                product.setProStk(product.getProStk()+Double.parseDouble(proCan));

                producto.update(product);
                break;
        }
        
        response.sendRedirect(request.getContextPath() + "/secured/compras/inventario");
    }
}
