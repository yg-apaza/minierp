package org.epis.minierp.controller.compras;

import java.io.IOException;
import java.text.ParseException;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.epis.minierp.business.logistica.EnP2mProductoBusiness;
import org.epis.minierp.dao.general.TaGzzTipoFallaProductoDao;
import org.epis.minierp.dao.logistica.EnP2mInventarioCabDao;
import org.epis.minierp.dao.logistica.EnP2mProductoDao;
import org.epis.minierp.model.EnP1mPuntoVenta;
import org.epis.minierp.model.EnP1mUsuario;
import org.epis.minierp.model.EnP2mInventarioCab;
import org.epis.minierp.model.EnP2mProducto;
import org.epis.minierp.model.TaGzzTipoFallaProducto;
import org.epis.minierp.util.DateUtil;

public class AddInventoryController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    EnP2mProductoBusiness productoBusiness;
    EnP1mUsuario user;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {       
        
        EnP2mProductoDao daoPro = new EnP2mProductoDao();
        List<EnP2mProducto> productos = daoPro.getAllActive();
        request.setAttribute("productos", productos);
        
        TaGzzTipoFallaProductoDao daoFalla = new TaGzzTipoFallaProductoDao();
        List<TaGzzTipoFallaProducto> falla_producto = daoFalla.getAll();
         request.setAttribute("falla_producto", falla_producto);
        
        Date hoy = DateUtil.getthisDate();
        String fechaEmision = DateUtil.getString2Date(hoy);
        request.setAttribute("fechaEmision", fechaEmision);
       /* UsuarioDao daoUsu = new UsuarioDao();
        List<EnP1mUsuario> usuarios = daoUsu.getAll();
        request.setAttribute("usuarios", usuarios);*/
        request.getRequestDispatcher("/WEB-INF/compras/addInventory.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        productoBusiness = new EnP2mProductoBusiness();
        HttpSession session = request.getSession(false);
        
        EnP2mProductoDao daoPro = new EnP2mProductoDao();
        List<EnP2mProducto> productos = daoPro.getAllActive();
        
        String[] codigos = request.getParameterValues("proCodigos");
        String[] cantidades = request.getParameterValues("proCantidades");
        String[] fallas = request.getParameterValues("proFallas");
        //Como ya actualiza inventario al momento de actualizar inventario ya ingresa todos los valore al inventario
        //Fecha
        Date hoy = DateUtil.getDate2String(request.getParameter("fecEmi"));
        String fechaEmision = DateUtil.getString2Date(hoy);
        //usuario
        user = (EnP1mUsuario) session.getAttribute("usuario");
        //Ultimo inventario
        EnP2mInventarioCabDao daoInv = new EnP2mInventarioCabDao();
        List<EnP2mInventarioCab> inventario = daoInv.getAll();
        int LonInvetario = inventario.size();
        
        try {
            productoBusiness.actualizarInventario(codigos, cantidades, fallas, productos, fechaEmision, user.getUsuCod(), LonInvetario);
        } catch (ParseException ex) {
            Logger.getLogger(AddInventoryController.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        //response.sendRedirect(request.getContextPath() + "/secured/compras/addInventario");
        response.sendRedirect(request.getContextPath()+ "/secured/compras/inventario" );
    }
}
