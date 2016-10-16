package org.epis.minierp.controller.compras;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.compras.EnP4mProveedorDao;
import org.epis.minierp.model.EnP4mProveedor;

public class AddSupplierController extends HttpServlet {
    private static final long serialVersionUID = 1L;    
       
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EnP4mProveedorDao proveedorDao = new EnP4mProveedorDao();
        EnP4mProveedor proveedor = new EnP4mProveedor();
        proveedor.setProCod(request.getParameter("codPro"));
        proveedor.setProDet(request.getParameter("detPro"));
        proveedor.setProCon(request.getParameter("conPro"));
        proveedor.setProDir(request.getParameter("dirPro"));
        proveedor.setProTelFij(request.getParameter("telFijPro"));
        proveedor.setProTelCel(request.getParameter("telCelPro"));
        proveedor.setProEmail(request.getParameter("emailPro"));
        proveedor.setProPagWeb(request.getParameter("pagWebPro"));
        proveedor.setProObs(request.getParameter("obsPro"));
        proveedor.setEstRegCod('A');
        proveedorDao.save(proveedor);
        response.sendRedirect(request.getContextPath() + "/secured/compras/proveedores");
    }
}
