package org.epis.minierp.controller.compras;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.epis.minierp.business.logistica.EnP2mProductoBusiness;
import org.epis.minierp.dao.general.TaGzzMonedaDao;
import org.epis.minierp.dao.general.TaGzzUnidadMedDao;
import org.epis.minierp.dao.logistica.EnP2mAlmacenDao;
import org.epis.minierp.dao.logistica.EnP2mClaseProductoDao;
import org.epis.minierp.dao.logistica.EnP2mProductoDao;
import org.epis.minierp.dao.logistica.EnP2mSubclaseProductoDao;
import org.epis.minierp.model.EnP1mUsuario;

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
        
        HttpSession session = request.getSession(true);
        EnP1mUsuario usuario = (EnP1mUsuario) session.getAttribute("usuario");
        double canUsuPorAdd;
        try {
            canUsuPorAdd = usuario.getTaGzzCanalUsuario().getCanUsuPorAdd();
        } catch (Exception e) {
            canUsuPorAdd = 1;
        }
        
        request.setAttribute("productos", proDao.getAllActive());
        request.setAttribute("clases", claProDao.getAllActive());
        request.setAttribute("subclases", subClaProDao.getAllActive());
        request.setAttribute("almacenes", almDao.getAllActive());
        request.setAttribute("monedas", monDao.getAllActive());
        request.setAttribute("medidas", uniMedDao.getAllActive());
        request.setAttribute("inactivos", proDao.getAllInactive());
        request.setAttribute("inactivos", proDao.getAllInactive());
        request.setAttribute("listaprecio", canUsuPorAdd);
        
        request.getRequestDispatcher("/WEB-INF/compras/products.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        proBusiness = new EnP2mProductoBusiness();

        String action = request.getParameter("action");
        
        String claProCod, subClaProCod, proCod, proCodBar, almCod, proDet, proObs;
        int uniMedCod;
        double proPreUniCom, proPreUniMar, proPreUniFle, proPesNet,
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
                volUniAlm = Double.parseDouble(request.getParameter("volUniAlm"));
                proStkMin = Double.parseDouble(request.getParameter("proStkMin"));
                
                proStkMax = Double.parseDouble(request.getParameter("proStkMax"));
                proObs = request.getParameter("proObs");
                proPesNet = Double.parseDouble(request.getParameter("proPesNet"));
                
                //iniciando con proStk = 0 y monCod = 1 Soles
                proBusiness.create(claProCod, subClaProCod, proCod, proCodBar, 
                        almCod, proDet, uniMedCod, proPreUniCom, proPreUniMar, 
                        proPreUniFle, 1, 0, volUniAlm, proStkMin, 
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
                volUniAlm = Double.parseDouble(request.getParameter("volUniAlm"));
                proStkMin = Double.parseDouble(request.getParameter("proStkMin"));
                
                proStkMax = Double.parseDouble(request.getParameter("proStkMax"));
                proObs = request.getParameter("proObs");
                proPesNet = Double.parseDouble(request.getParameter("proPesNet"));
                
                //monCod = 1 Soles
                proBusiness.update(claProCod, subClaProCod, proCod, proCodBar, 
                        almCod, proDet, uniMedCod, proPreUniCom, proPreUniMar, 
                        proPreUniFle, 1, volUniAlm, proStkMin, proStkMax, 
                        proObs, proPesNet);
                
                break;
                
            case "disable":
                claProCod = request.getParameter("claProCod");
                subClaProCod = request.getParameter("subClaProCod");
                proCod = request.getParameter("proCod");
                proBusiness.disable(claProCod, subClaProCod, proCod);
                break;
                
            case "activate":
                claProCod = request.getParameter("claProCod");
                subClaProCod = request.getParameter("subClaProCod");
                proCod = request.getParameter("proCod"); //falta
                proBusiness.activate(claProCod, subClaProCod, proCod);
                break;
                
            case "delete":
                claProCod = request.getParameter("claProCod");
                subClaProCod = request.getParameter("subClaProCod");
                proCod = request.getParameter("proCod"); //falta
                proBusiness.delete(claProCod, subClaProCod, proCod);
                break;
               
        }
        
        response.sendRedirect(request.getContextPath() + "/secured/compras/productos");
    }
}
