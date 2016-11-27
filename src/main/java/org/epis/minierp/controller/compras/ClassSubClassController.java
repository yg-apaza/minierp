package org.epis.minierp.controller.compras;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.business.contabilidad.CuentaBusiness;
import org.epis.minierp.dao.logistica.EnP2mClaseProductoDao;
import org.epis.minierp.dao.logistica.EnP2mProductoDao;
import org.epis.minierp.dao.logistica.EnP2mSubclaseProductoDao;
import org.epis.minierp.model.EnP2mClaseProducto;
import org.epis.minierp.model.EnP2mProducto;
import org.epis.minierp.model.EnP2mSubclaseProducto;
import org.epis.minierp.model.EnP2mSubclaseProductoId;

public class ClassSubClassController extends HttpServlet {

    private static final long serialVersionUID = 1L;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<EnP2mClaseProducto> clases = (new EnP2mClaseProductoDao()).getAll();
        List<EnP2mSubclaseProducto> subclases = (new EnP2mSubclaseProductoDao()).getAll();
        List<EnP2mClaseProducto> clasesActivas = (new EnP2mClaseProductoDao()).getAllActive();
        
        request.setAttribute("clases", clases);
        request.setAttribute("subclases", subclases);
        request.setAttribute("clasesActivas", clasesActivas);
        
        request.getRequestDispatcher("/WEB-INF/compras/classSubclass.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        EnP2mClaseProducto classProduct;
        EnP2mClaseProductoDao clase;
        EnP2mSubclaseProducto subClassProduct;
        EnP2mSubclaseProductoDao subClase;
        EnP2mSubclaseProductoId id;
        EnP2mProductoDao producto;
        CuentaBusiness cuentaBusiness = new CuentaBusiness();
        
        switch (action) {
            case "addClass":
                String claDetAdd = request.getParameter("claDetAdd");
                classProduct = new EnP2mClaseProducto();
                clase = new EnP2mClaseProductoDao();
                String codeClass = String.valueOf((int) (System.currentTimeMillis() % Integer.MAX_VALUE));
                
                classProduct.setClaProDet(claDetAdd);
                classProduct.setClaProCod(codeClass.substring(codeClass.length() - 2));
                classProduct.setEstRegCod('A');
                classProduct.setEnP3mCuenta(cuentaBusiness.getCuentaVenta4Class(claDetAdd));
                
                clase.save(classProduct);
                break;
            
            case "modifyClass":
                String claCodUpd = request.getParameter("claCodUpd");
                String claDetUpd = request.getParameter("claDetUpd");
                classProduct = (new EnP2mClaseProductoDao()).getById(claCodUpd);
                clase = new EnP2mClaseProductoDao();
                
                classProduct.setClaProDet(claDetUpd);
                
                clase.update(classProduct);
                break;
                
            case "deleteClass":
                String claCodDel = request.getParameter("claCodDel");
                classProduct = (new EnP2mClaseProductoDao()).getById(claCodDel);
                producto = new EnP2mProductoDao();
                subClase = new EnP2mSubclaseProductoDao();
                clase = new EnP2mClaseProductoDao();
                Iterator <EnP2mSubclaseProducto> subclasses = classProduct.getEnP2mSubclaseProductos().iterator();
                
                while(subclasses.hasNext()) {
                    EnP2mSubclaseProducto subClass = subclasses.next();
                    Iterator <EnP2mProducto> products = subClass.getEnP2mProductos().iterator();
                    while(products.hasNext()) {
                        EnP2mProducto product = products.next();
                        product.setEstRegCod('E');
                        producto.update(product);
                    }
                    subClass.setEstRegCod('E');
                    subClase.update(subClass);
                }
                
                classProduct  .setEstRegCod('E');
                clase.update(classProduct);
                break;
                
            case "addSubclass":
                String subDetAdd = request.getParameter("subDetAdd");
                String subClaCodAdd = request.getParameter("subClaCodAdd");
                subClassProduct = new EnP2mSubclaseProducto();
                id = new EnP2mSubclaseProductoId();
                String codeSubClass = String.valueOf((int) (System.currentTimeMillis() % Integer.MAX_VALUE));
                subClase = new EnP2mSubclaseProductoDao();
                                
                id.setClaProCod(subClaCodAdd);
                id.setSubClaProCod(codeSubClass.substring(codeSubClass.length() - 2));
                subClassProduct.setId(id);
                subClassProduct.setSubClaProDet(subDetAdd);
                subClassProduct.setEstRegCod('A');
                
                subClase.save(subClassProduct);
                break;
                
            case "modifySubclass":
                String subCodUpd = request.getParameter("subCodUpd");                
                String subClaCodUpd = request.getParameter("subClaCodUpd");
                String subDetUpd = request.getParameter("subDetUpd");
                id = new EnP2mSubclaseProductoId();
                
                id.setClaProCod(subClaCodUpd);
                id.setSubClaProCod(subCodUpd);
                
                subClassProduct = (new EnP2mSubclaseProductoDao()).getById(id);
                subClase = new EnP2mSubclaseProductoDao();
                
                subClassProduct.setSubClaProDet(subDetUpd);
                
                subClase.update(subClassProduct);
                break;
                
            case "deleteSubclass":
                String subCodDel = request.getParameter("subCodDel");
                String subClaCodDel = request.getParameter("subClaCodDel");
                producto = new EnP2mProductoDao();
                subClase = new EnP2mSubclaseProductoDao();
                id = new EnP2mSubclaseProductoId();
                
                id.setClaProCod(subClaCodDel);
                id.setSubClaProCod(subCodDel);
                
                subClassProduct = (new EnP2mSubclaseProductoDao()).getById(id);
                Iterator <EnP2mProducto> products = subClassProduct.getEnP2mProductos().iterator();

                while(products.hasNext()) {
                    EnP2mProducto product = products.next();
                    product.setEstRegCod('E');
                    producto.update(product);
                }
                
                subClassProduct.setEstRegCod('E');
                subClase.update(subClassProduct);
                break;
        }
        
        response.sendRedirect(request.getContextPath() + "/secured/compras/claseSubclase");
    }
}
