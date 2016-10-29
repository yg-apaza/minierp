package org.epis.minierp.controller.compras;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.compras.EnP4mProveedorDao;
import org.epis.minierp.model.EnP4mProveedor;

public class SuppliersController extends HttpServlet {
    private static final long serialVersionUID = 1L;    
       
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EnP4mProveedorDao proveedor = new EnP4mProveedorDao();
        List <EnP4mProveedor> proveedores = proveedor.getAllActive();
        
        request.setAttribute("proveedores",proveedores);        
        request.getRequestDispatcher("/WEB-INF/compras/suppliers.jsp").forward(request, response);
    } 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("accion");
        EnP4mProveedorDao proveedorDao = new EnP4mProveedorDao();
        EnP4mProveedor proveedor = new EnP4mProveedor();
        
        switch(action) {
            case "insert":
                proveedor.setPrvCod(request.getParameter("codPro"));
                proveedor.setPrvDet(request.getParameter("detPro"));
                proveedor.setPrvCon(request.getParameter("conPro"));
                proveedor.setPrvDir(request.getParameter("dirPro"));
                proveedor.setPrvTelFij(request.getParameter("telFijPro"));
                proveedor.setPrvTelCel(request.getParameter("telCelPro"));
                proveedor.setPrvEmail(request.getParameter("emailPro"));
                proveedor.setPrvPagWeb(request.getParameter("pagWebPro"));
                proveedor.setPrvObs(request.getParameter("obsPro"));
                proveedor.setEstRegCod('A');
                proveedorDao.save(proveedor);
                break;
            case "update":
                proveedor.setPrvCod(request.getParameter("proCod"));
                proveedor.setPrvDet(request.getParameter("proDes"));
                proveedor.setPrvCon(request.getParameter("conPro"));
                proveedor.setPrvDir(request.getParameter("dirPro"));
                proveedor.setPrvTelFij(request.getParameter("telFijPro"));
                proveedor.setPrvTelCel(request.getParameter("telCelPro"));
                proveedor.setPrvEmail(request.getParameter("emailPro"));
                proveedor.setPrvPagWeb(request.getParameter("pagWebPro"));
                proveedor.setPrvObs(request.getParameter("obsPro"));
                proveedor.setEstRegCod('A');
                proveedorDao.update(proveedor);
                break;
            case "delete":
                proveedor.setPrvCod(request.getParameter("proCod"));
                proveedor.setPrvDet(request.getParameter("proDet"));
                proveedor.setEstRegCod('*');
                proveedorDao.update(proveedor);
        }
        
        response.sendRedirect(request.getContextPath() + "/secured/compras/proveedores");
    }
}
