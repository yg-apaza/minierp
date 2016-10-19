package org.epis.minierp.controller.compras;

import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.IOException;
import java.util.List;
import java.util.StringTokenizer;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.general.TaGzzMonedaDao;
import org.epis.minierp.dao.general.TaGzzUnidadMedDao;
import org.epis.minierp.dao.logistica.EnP2mAlmacenDao;
import org.epis.minierp.dao.logistica.EnP2mClaseProductoDao;
import org.epis.minierp.dao.logistica.EnP2mProductoDao;
import org.epis.minierp.dao.logistica.EnP2mSubclaseProductoDao;
import org.epis.minierp.model.EnP2mAlmacen;
import org.epis.minierp.model.EnP2mClaseProducto;
import org.epis.minierp.model.EnP2mProducto;
import org.epis.minierp.model.EnP2mProductoId;
import org.epis.minierp.model.EnP2mSubclaseProducto;
import org.epis.minierp.model.TaGzzMoneda;
import org.epis.minierp.model.TaGzzUnidadMed;

public class ProductController extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<EnP2mProducto> productos = (new EnP2mProductoDao()).getAll();
        List<EnP2mClaseProducto> clases = (new EnP2mClaseProductoDao()).getAll();
        List<EnP2mSubclaseProducto> subclases = (new EnP2mSubclaseProductoDao()).getAll();
        List<EnP2mAlmacen> almacenes = (new EnP2mAlmacenDao()).getAll();
        List<TaGzzMoneda> monedas = (new TaGzzMonedaDao()).getAll();
        List<TaGzzUnidadMed> medidas = (new TaGzzUnidadMedDao()).getAll();

        request.setAttribute("productos", productos);
        request.setAttribute("clases", clases);
        request.setAttribute("subclases", subclases);
        request.setAttribute("almacenes", almacenes);
        request.setAttribute("monedas", monedas);
        request.setAttribute("medidas", medidas);
        request.getRequestDispatcher("/WEB-INF/compras/products.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        EnP2mProductoId productId = new EnP2mProductoId();
        EnP2mProducto product = new EnP2mProducto();
        EnP2mProductoDao producto = new EnP2mProductoDao();
        
        switch (action) {
            case "add":
                String claProCod = request.getParameter("claProCodAdd");
                String subClaProCod = request.getParameter("subClaProCodAdd");
                String proDet = request.getParameter("proDetAdd");
                String almCod = request.getParameter("almCodAdd");
                int monCod = Integer.parseInt(request.getParameter("monCodAdd"));
                int uniMedCod = Integer.parseInt(request.getParameter("uniMedCodAdd"));
                double proStkMax = Double.parseDouble(request.getParameter("proStkMaxAdd"));
                double proStkMin = Double.parseDouble(request.getParameter("proStkMinAdd"));
                double volUniAlm = Double.parseDouble(request.getParameter("volUniAlmAdd"));
                double proPreUni = Double.parseDouble(request.getParameter("proPreUniAdd"));
                String proObs = request.getParameter("proObsAdd");

                productId = new EnP2mProductoId();  
                productId.setClaProCod(claProCod);
                productId.setSubClaProCod(subClaProCod);
                productId.setProCod(String.valueOf((int) (System.currentTimeMillis() % Integer.MAX_VALUE)));
                
                product = new EnP2mProducto(); 
                product.setId(productId);
                product.setEnP2mAlmacen((new EnP2mAlmacenDao()).getById(almCod));
                product.setEstRegCod('A');
                product.setProDet(proDet);
                product.setProObs(proObs);
                product.setProPreUni(proPreUni);
                product.setProStk(0);
                product.setProStkMax(proStkMax);
                product.setProStkMin(proStkMin);
                product.setProStkPreVen(0);
                product.setTaGzzMoneda((new TaGzzMonedaDao()).getById(monCod));
                product.setTaGzzUnidadMed((new TaGzzUnidadMedDao()).getById(uniMedCod));
                product.setVolUniAlm(volUniAlm);

                producto.save(product);
                break;
            
            case "modify":
                String proCod = request.getParameter("proCodUpd");
                claProCod = request.getParameter("claProCodUpd");
                subClaProCod = request.getParameter("subClaProCodUpd");
                proDet = request.getParameter("proDetUpd");
                almCod = request.getParameter("almCodUpd");
                monCod = Integer.parseInt(request.getParameter("monCodUpd"));
                uniMedCod = Integer.parseInt(request.getParameter("uniMedCodUpd"));
                proStkMax = Double.parseDouble(request.getParameter("proStkMaxUpd"));
                proStkMin = Double.parseDouble(request.getParameter("proStkMinUpd"));
                volUniAlm = Double.parseDouble(request.getParameter("volUniAlmUpd"));
                proPreUni = Double.parseDouble(request.getParameter("proPreUniUpd"));
                proObs = request.getParameter("proObsUpd");

                productId = new EnP2mProductoId();  
                productId.setClaProCod(claProCod);
                productId.setSubClaProCod(subClaProCod);
                productId.setProCod(proCod);
                
                EnP2mProductoDao productDao = new EnP2mProductoDao();
                product = productDao.getById(productId);
                product.setEnP2mAlmacen((new EnP2mAlmacenDao()).getById(almCod));
                product.setProDet(proDet);
                product.setProObs(proObs);
                product.setProPreUni(proPreUni);
                product.setProStkMax(proStkMax);
                product.setProStkMin(proStkMin);
                product.setTaGzzMoneda((new TaGzzMonedaDao()).getById(monCod));
                product.setTaGzzUnidadMed((new TaGzzUnidadMedDao()).getById(uniMedCod));
                product.setVolUniAlm(volUniAlm);

                producto.update(product);
                break;
                
            case "delete":
                proCod = request.getParameter("proCodDel");
                StringTokenizer st = new StringTokenizer(proCod,"/");
                
                productId = new EnP2mProductoId();                
                productId.setProCod(st.nextToken());
                productId.setSubClaProCod(st.nextToken());
                productId.setClaProCod(st.nextToken());
                
                product = new EnP2mProducto(); 
                product = producto.getById(productId);
                product.setEstRegCod('E');
                
                producto.update(product);
                break;
        }
        
        response.sendRedirect(request.getContextPath() + "/secured/compras/productos");
    }
}
