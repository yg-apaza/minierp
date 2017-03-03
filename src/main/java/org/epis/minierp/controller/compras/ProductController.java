package org.epis.minierp.controller.compras;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.epis.minierp.business.logistica.EnP2mProductoBusiness;
import org.epis.minierp.dao.general.TaGzzListaPreciosDao;
import org.epis.minierp.dao.general.TaGzzMonedaDao;
import org.epis.minierp.dao.general.TaGzzUnidadMedDao;
import org.epis.minierp.dao.logistica.EnP2mAlmacenDao;
import org.epis.minierp.dao.logistica.EnP2mClaseProductoDao;
import org.epis.minierp.dao.logistica.EnP2mProductoDao;
import org.epis.minierp.dao.logistica.EnP2mSubclaseProductoDao;
import org.epis.minierp.dao.ventas.EnP2mPrecioUnitarioDao;
import org.epis.minierp.model.EnP1mUsuario;
import org.epis.minierp.model.EnP2mPrecioUnitario;
import org.epis.minierp.model.EnP2mPrecioUnitarioId;
import org.epis.minierp.model.EnP2mProducto;
import org.epis.minierp.model.EnP2mProductoId;
import org.epis.minierp.model.EnP2mProductoTemp;
import org.epis.minierp.model.EnP2mSubclaseProducto;
import org.epis.minierp.model.TaGzzListaPrecios;

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
        int myListCod = usuario.getTaGzzListaPrecios().getLisPreCod();
        try {
            canUsuPorAdd = usuario.getTaGzzCanalUsuario().getCanUsuPorAdd();
        } catch (Exception e) {
            canUsuPorAdd = 1;
        }
        
        EnP2mPrecioUnitarioDao preUniDao = new EnP2mPrecioUnitarioDao();
        EnP2mPrecioUnitario preUniTemp;
        
        List<EnP2mProducto> normalProducts = proDao.getAllActive();
        List<EnP2mProducto> disableProducts = proDao.getAllInactive();
        List<EnP2mProductoTemp> myProductsActives = new ArrayList<>();
        List<EnP2mProductoTemp> myProductsDisables = new ArrayList<>();
        
        for(EnP2mProducto prd : normalProducts){
            EnP2mProductoTemp temp = new EnP2mProductoTemp();
            temp.setId(prd.getId());
            temp.setEnP2mAlmacen(prd.getEnP2mAlmacen());
            temp.setEnP2mSubclaseProducto(prd.getEnP2mSubclaseProducto());
            temp.setTaGzzMoneda(prd.getTaGzzMoneda());
            temp.setTaGzzUnidadMed(prd.getTaGzzUnidadMed());
            temp.setEnP2mAlmacen(prd.getEnP2mAlmacen());
            temp.setProCodBar(prd.getProCodBar());
            temp.setProCom(prd.getProCom());
            temp.setProDet(prd.getProDet());
            temp.setProPesNet(prd.getProPesNet());
            temp.setProStk(prd.getProStk());
            temp.setProStkRea(prd.getProStkRea());
            temp.setProStkPreVen(prd.getProStkPreVen());
            temp.setVolUniAlm(prd.getVolUniAlm());
            temp.setProStkMin(prd.getProStkMin());
            temp.setProStkMax(prd.getProStkMax());
            temp.setProObs(prd.getProObs());
            temp.setEstRegCod(prd.getEstRegCod());
            
            preUniTemp = preUniDao.getById(new EnP2mPrecioUnitarioId(prd.getId().getProCod(), prd.getId().getSubClaProCod(), prd.getId().getClaProCod(), myListCod));
            temp.setProPreUniVen(preUniTemp.getPreUniVen());
            temp.setProPreUniCom(preUniTemp.getPreUniCom());
            temp.setProPreUniMar(preUniTemp.getPreUniMar());
            temp.setProPreUniFle(preUniTemp.getPreUniFle());
            
            myProductsActives.add(temp);
        }
        
        for(EnP2mProducto prdd : disableProducts){
            EnP2mProductoTemp temp = new EnP2mProductoTemp();
            temp.setId(prdd.getId());
            temp.setEnP2mAlmacen(prdd.getEnP2mAlmacen());
            temp.setEnP2mSubclaseProducto(prdd.getEnP2mSubclaseProducto());
            temp.setTaGzzMoneda(prdd.getTaGzzMoneda());
            temp.setTaGzzUnidadMed(prdd.getTaGzzUnidadMed());
            temp.setEnP2mAlmacen(prdd.getEnP2mAlmacen());
            temp.setProCodBar(prdd.getProCodBar());
            temp.setProCom(prdd.getProCom());
            temp.setProDet(prdd.getProDet());
            temp.setProPesNet(prdd.getProPesNet());
            temp.setProStk(prdd.getProStk());
            temp.setProStkRea(prdd.getProStkRea());
            temp.setProStkPreVen(prdd.getProStkPreVen());
            temp.setVolUniAlm(prdd.getVolUniAlm());
            temp.setProStkMin(prdd.getProStkMin());
            temp.setProStkMax(prdd.getProStkMax());
            temp.setProObs(prdd.getProObs());
            temp.setEstRegCod(prdd.getEstRegCod());
            
            preUniTemp = preUniDao.getById(new EnP2mPrecioUnitarioId(prdd.getId().getProCod(), prdd.getId().getSubClaProCod(), prdd.getId().getClaProCod(), myListCod));
            temp.setProPreUniVen(preUniTemp.getPreUniVen());
            temp.setProPreUniCom(preUniTemp.getPreUniCom());
            temp.setProPreUniMar(preUniTemp.getPreUniMar());
            temp.setProPreUniFle(preUniTemp.getPreUniFle());
            
            myProductsDisables.add(temp);
        }
        
        request.setAttribute("productos", myProductsActives);
        request.setAttribute("clases", claProDao.getAllActive());
        request.setAttribute("subclases", subClaProDao.getAllActive());
        request.setAttribute("almacenes", almDao.getAllActive());
        request.setAttribute("monedas", monDao.getAllActive());
        request.setAttribute("medidas", uniMedDao.getAllActive());
        request.setAttribute("inactivos", myProductsDisables);
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
                volUniAlm, proStkMin, proStkMax, proPreUniVen;
        boolean proCom;
        
        switch (action) {
            case "create":
                claProCod = request.getParameter("claProCod");
                subClaProCod = request.getParameter("subClaProCod");
                proCod = request.getParameter("proCod");
                proCodBar = request.getParameter("proCodBar");
                proCom = Boolean.parseBoolean(request.getParameter("proCom"));
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
                
                proPreUniVen = proPreUniCom + proPreUniMar + proPreUniFle;
                //iniciando con proStk = 0 y monCod = 1 Soles
                proBusiness.create(claProCod, subClaProCod, proCod, proCodBar, 
                        almCod, proDet, uniMedCod, 1,proPreUniVen,proPreUniCom, 
                        proPreUniMar,proPreUniFle, 0, volUniAlm, proStkMin, 
                        proStkMax, proObs, proPesNet, proCom, 'A');
                
                break;
            
            case "update":
                claProCod = request.getParameter("claProCod");
                subClaProCod = request.getParameter("subClaProCod");
                proCod = request.getParameter("proCod");
                proCodBar = request.getParameter("proCodBar");
                proCom = Boolean.parseBoolean(request.getParameter("proCom"));
                    
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
                        almCod, proDet, uniMedCod, 1, volUniAlm, proStkMin, proStkMax, 
                        proObs, proPesNet, proCom);
                
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
