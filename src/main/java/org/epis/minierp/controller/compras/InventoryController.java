package org.epis.minierp.controller.compras;

import java.io.IOException;
import java.text.ParseException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.business.logistica.EnP2mProductoBusiness;
import org.epis.minierp.dao.general.TaGzzTipoFallaProductoDao;
import org.epis.minierp.dao.logistica.EnP2mProductoDao;
import org.epis.minierp.model.EnP2mProducto;
import org.epis.minierp.model.TaGzzTipoFallaProducto;

public class InventoryController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    EnP2mProductoBusiness productoBusiness;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {       
        
        EnP2mProductoDao daoPro = new EnP2mProductoDao();
        List<EnP2mProducto> productos = daoPro.getAllActive();
        request.setAttribute("productos", productos);
        
        TaGzzTipoFallaProductoDao daoFalla = new TaGzzTipoFallaProductoDao();
        List<TaGzzTipoFallaProducto> falla_producto = daoFalla.getAll();
         request.setAttribute("falla_producto", falla_producto);
       /* UsuarioDao daoUsu = new UsuarioDao();
        List<EnP1mUsuario> usuarios = daoUsu.getAll();
        request.setAttribute("usuarios", usuarios);*/
        request.getRequestDispatcher("/WEB-INF/compras/inventory.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        productoBusiness = new EnP2mProductoBusiness();
        
        EnP2mProductoDao daoPro = new EnP2mProductoDao();
        List<EnP2mProducto> productos = daoPro.getAllActive();
        
        String[] codigos = request.getParameterValues("proCodigos");
        String[] cantidades = request.getParameterValues("proCantidades");

        try {
            productoBusiness.actualizarInventario(codigos, cantidades, productos);
        } catch (ParseException ex) {
            Logger.getLogger(InventoryController.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        response.sendRedirect(request.getContextPath() + "/secured/compras/inventario");
    }
}
