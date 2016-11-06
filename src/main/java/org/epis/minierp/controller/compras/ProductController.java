package org.epis.minierp.controller.compras;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.business.logistica.EnP2mProductoBusiness;
import org.epis.minierp.dao.general.TaGzzMonedaDao;
import org.epis.minierp.dao.general.TaGzzUnidadMedDao;
import org.epis.minierp.dao.logistica.EnP2mAlmacenDao;
import org.epis.minierp.dao.logistica.EnP2mClaseProductoDao;
import org.epis.minierp.dao.logistica.EnP2mProductoDao;
import org.epis.minierp.dao.logistica.EnP2mSubclaseProductoDao;

public class ProductController extends HttpServlet {

    private static final long serialVersionUID = 1L;
    
    EnP2mProductoDao proDao;
    EnP2mClaseProductoDao claProDao;
    EnP2mSubclaseProductoDao subClaProDao;
    EnP2mAlmacenDao almDao;
    TaGzzMonedaDao monDao;
    TaGzzUnidadMedDao uniMedDao;
    EnP2mProductoBusiness proBusiness;
    

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        proDao = new EnP2mProductoDao();
        claProDao = new EnP2mClaseProductoDao();
        subClaProDao = new EnP2mSubclaseProductoDao();
        almDao = new EnP2mAlmacenDao();
        monDao = new TaGzzMonedaDao();
        uniMedDao = new TaGzzUnidadMedDao();
        
        request.setAttribute("productos", proDao.getAllActive());
        request.setAttribute("clases", claProDao.getAllActive());
        request.setAttribute("subclases", subClaProDao.getAllActive());
        request.setAttribute("almacenes", almDao.getAllActive());
        request.setAttribute("monedas", monDao.getAllActive());
        request.setAttribute("medidas", uniMedDao.getAllActive());
        
        request.getRequestDispatcher("/WEB-INF/compras/products.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        proBusiness = new EnP2mProductoBusiness();

        String action = request.getParameter("action");
        
        String claProCod, subClaProCod, proCod, proCodBar, almCod, proDet, proObs;
        int uniMedCod, monCod;
        double proPreUniCom, proPreUniMar, proPreUniFle, proPesNet, proStk, 
                volUniAlm, proStkMin, proStkMax;
        
        switch (action) {
            case "create":
                claProCod = request.getParameter("claProCod");
                subClaProCod = request.getParameter("subClaProCod");
                proCod = request.getParameter("proCod");
                proCodBar = request.getParameter("proCodBar");
                
                almCod = request.getParameter("almCod");
                proDet = request.getParameter("proDet");
                uniMedCod = Integer.parseInt(request.getParameter("uniMedCod"));
                proPreUniCom = Double.parseDouble(request.getParameter("proPreUniCom"));
                proPreUniMar = Double.parseDouble(request.getParameter("proPreUniMar"));
                
                proPreUniFle = Double.parseDouble(request.getParameter("proPreUniFle"));
                monCod = Integer.parseInt(request.getParameter("monCodAdd"));
                volUniAlm = Double.parseDouble(request.getParameter("volUniAlmAdd"));
                proStkMin = Double.parseDouble(request.getParameter("proStkMinAdd"));
                
                proStkMax = Double.parseDouble(request.getParameter("proStkMaxAdd"));
                proObs = request.getParameter("proObsAdd");
                proPesNet = Double.parseDouble(request.getParameter("proPesNet"));
                
                //iniciando con proStk = 0
                proBusiness.create(claProCod, subClaProCod, proCod, proCodBar, 
                        almCod, proDet, uniMedCod, proPreUniCom, proPreUniMar, 
                        proPreUniFle, monCod, 0, volUniAlm, proStkMin, 
                        proStkMax, proObs, proPesNet, 'A');
                
                break;
            
            case "update":
                claProCod = request.getParameter("claProCod");
                subClaProCod = request.getParameter("subClaProCod");
                proCod = request.getParameter("proCod");
                proCodBar = request.getParameter("proCodBar");
                
                almCod = request.getParameter("almCod");
                proDet = request.getParameter("proDet");
                uniMedCod = Integer.parseInt(request.getParameter("uniMedCod"));
                proPreUniCom = Double.parseDouble(request.getParameter("proPreUniCom"));
                proPreUniMar = Double.parseDouble(request.getParameter("proPreUniMar"));
                
                proPreUniFle = Double.parseDouble(request.getParameter("proPreUniFle"));
                monCod = Integer.parseInt(request.getParameter("monCodAdd"));
                volUniAlm = Double.parseDouble(request.getParameter("volUniAlmAdd"));
                proStkMin = Double.parseDouble(request.getParameter("proStkMinAdd"));
                
                proStkMax = Double.parseDouble(request.getParameter("proStkMaxAdd"));
                proObs = request.getParameter("proObsAdd");
                proPesNet = Double.parseDouble(request.getParameter("proPesNet"));
                
                proBusiness.update(claProCod, subClaProCod, proCod, proCodBar, 
                        almCod, proDet, uniMedCod, proPreUniCom, proPreUniMar, 
                        proPreUniFle, monCod, volUniAlm, proStkMin, proStkMax, 
                        proObs, proPesNet);
                
                break;
                
            case "disable":
                claProCod = request.getParameter("claProCodAdd");
                subClaProCod = request.getParameter("subClaProCodAdd");
                proCod = request.getParameter("proCodAdd");
                proBusiness.disable(claProCod, subClaProCod, proCod);
                break;
                
            case "activate":
                claProCod = request.getParameter("claProCodAdd");
                subClaProCod = request.getParameter("subClaProCodAdd");
                proCod = request.getParameter("proCodAdd"); //falta
                proBusiness.activate(claProCod, subClaProCod, proCod);
                break;
                
            case "delete":
                claProCod = request.getParameter("claProCodAdd");
                subClaProCod = request.getParameter("subClaProCodAdd");
                proCod = request.getParameter("proCodAdd"); //falta
                proBusiness.delete(claProCod, subClaProCod, proCod);
                break;
               
        }
        
        response.sendRedirect(request.getContextPath() + "/secured/compras/productos");
    }
}
