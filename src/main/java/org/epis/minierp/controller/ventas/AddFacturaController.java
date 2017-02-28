package org.epis.minierp.controller.ventas;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.StringTokenizer;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.epis.minierp.business.ventas.EnP1mFacturaVentaBusiness;
import org.epis.minierp.dao.general.EnP1mEmpresaDao;
import org.epis.minierp.dao.general.TaGzzMetodoPagoFacturaDao;
import org.epis.minierp.dao.general.TaGzzMonedaDao;
import org.epis.minierp.dao.general.TaGzzTipoPagoFacturaDao;
import org.epis.minierp.dao.logistica.EnP2mProductoDao;
import org.epis.minierp.dao.general.TaGzzTipoClienteDao;
import org.epis.minierp.dao.general.TaGzzTipoDescuentoDao;
import org.epis.minierp.model.EnP1mPuntoVenta;
import org.epis.minierp.model.EnP1mSucursal;
import org.epis.minierp.model.EnP1mUsuario;
import org.epis.minierp.model.EnP1tFacturaVentaDet;
import org.epis.minierp.model.EnP1tFacturaVentaDetId;
import org.epis.minierp.model.EnP2mProducto;
import org.epis.minierp.model.EnP2mProductoId;
import org.epis.minierp.util.DateUtil;

public class AddFacturaController extends HttpServlet {	
    private static final long serialVersionUID = 1L;
    TaGzzMetodoPagoFacturaDao metPagFacDao;
    TaGzzMonedaDao monDao;
    TaGzzTipoPagoFacturaDao tipPagFacDao;
    EnP2mProductoDao proDao;
    TaGzzTipoClienteDao tipCliDao;
    TaGzzTipoDescuentoDao tipDesDao;
    EnP1mEmpresaDao empDao;
    EnP1mUsuario user;
    EnP1mPuntoVenta punto;
    EnP1mSucursal sucursal;
    EnP1mFacturaVentaBusiness facturaBusiness;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        metPagFacDao = new TaGzzMetodoPagoFacturaDao();
        monDao = new TaGzzMonedaDao();
        tipPagFacDao = new TaGzzTipoPagoFacturaDao();
        proDao = new EnP2mProductoDao();
        tipCliDao = new TaGzzTipoClienteDao();
        tipDesDao = new TaGzzTipoDescuentoDao();
        empDao = new EnP1mEmpresaDao();
        
        HttpSession session = request.getSession(true);
        user = (EnP1mUsuario) session.getAttribute("usuario");
        
        List<EnP1mPuntoVenta> pv = new ArrayList();
        pv.addAll(user.getEnP1mSucursal().getEnP1mPuntoVentas());
        
        punto = pv.get(0); //Getting the first one
        sucursal = user.getEnP1mSucursal();
         
        Date hoy = DateUtil.getthisDate();
        
        String fechaEmision = DateUtil.getString2Date(hoy);
        String fechaVencimiento = DateUtil.getString2Date(DateUtil.addDays(hoy, 1));
        
        request.setAttribute("metodosPagoFactura", metPagFacDao.getAllActive());
        request.setAttribute("monedas", monDao.getAllActive());
        request.setAttribute("tiposPagoFactura", tipPagFacDao.getAllActive());
        request.setAttribute("productos", proDao.getAllActive());
        request.setAttribute("tiposCliente", tipCliDao.getAllActive());
        request.setAttribute("tiposDescuentos", tipDesDao.getAllActive());
        request.setAttribute("empresa", empDao.getAll().get(0));
        request.setAttribute("punto", punto);
        request.setAttribute("usuario", user);
        request.setAttribute("sucursal", sucursal);
        
        request.setAttribute("fechaEmision", fechaEmision);
        request.setAttribute("fechaVencimiento", fechaVencimiento);
        
        request.getRequestDispatcher("/WEB-INF/ventas/factura/addFactura.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        facturaBusiness = new EnP1mFacturaVentaBusiness();
        empDao = new EnP1mEmpresaDao();
        
        String facVenCabNum = request.getParameter("facVenCabCod");
        String cliCod = request.getParameter("cliCod");
        String usuCod = request.getParameter("usuCod");
        char facVenCabModVen = request.getParameter("facVenCabModVen").charAt(0);
        Date facVenCabFecEmi = DateUtil.getDate2String(request.getParameter("facVenCabFecEmi"));
        Date facVenCabFecVen = DateUtil.getDate2String(request.getParameter("facVenCabFecVen"));
        double facVenCabTot = Double.parseDouble(request.getParameter("facVenCabTot")); //autocalculables
        int tipDesCod = Integer.parseInt(request.getParameter("tipDesCod"));
        int facVenPorDes = Integer.parseInt(request.getParameter("facVenPorDes"));
        double facVenCabSubTot = Double.parseDouble(request.getParameter("facVenCabSubTot")); //autocalculables
        int facVenCabIgv = (int)Double.parseDouble(request.getParameter("facVenCabIgv"));
        String facVenCabObs = request.getParameter("facVenCabObs");
        
        int estFacCod = 1; //cancelado
        
        int metPagCod = Integer.parseInt(request.getParameter("metPagCod"));
        int tipPagCod = Integer.parseInt(request.getParameter("tipPagCod"));
        int monCod = Integer.parseInt(request.getParameter("monCod"));
        
        if(tipPagCod == 2 ) estFacCod = 2; //pagando
        
        List <String> productsCodes = Arrays.asList((request.getParameter("productsCodes")).split("\\s*,\\s*"));
        List <String> productsPrices = Arrays.asList((request.getParameter("productsPrices")).split("\\s*,\\s*"));
        List <String> productsAmounts = Arrays.asList((request.getParameter("productsAmounts")).split("\\s*,\\s*"));
    
        List<EnP1tFacturaVentaDet> detalles = new ArrayList<>();
        
        StringTokenizer st;
        EnP2mProductoId pId;
        EnP2mProducto p;
        EnP1tFacturaVentaDet temp;
        for(int i = 0;i < productsCodes.size();i++) {
            st = new StringTokenizer(productsCodes.get(i),"-");
            pId = new EnP2mProductoId();
            pId.setClaProCod(st.nextToken());
            pId.setSubClaProCod(st.nextToken());                
            pId.setProCod(st.nextToken());
            
            p = new EnP2mProducto();
            p.setId(pId);
            
            temp = new EnP1tFacturaVentaDet();
            temp.setId(new EnP1tFacturaVentaDetId(i+1, 1)); //1 es relativo
            temp.setEnP2mProducto(p);
            temp.setFacVenDetCan(Double.parseDouble(productsAmounts.get(i)));
            temp.setFacVenDetValUni(Double.parseDouble(productsPrices.get(i)));
            detalles.add(temp);
        }
        
        //pagos por cuotas activo
        String numCuo = request.getParameter("numCuo");
        int pagCuoNum;
        if(numCuo == null){
            pagCuoNum = 0;
        }else{
            try {
                pagCuoNum = Integer.parseInt(numCuo);
            } catch (Exception e) {
                pagCuoNum = 0;
            }

        }
        
        
                
        //maxDet4FacVen std = 15
        int maxDet4FacVen = 15;
        if(facVenCabModVen == 'F') {
            maxDet4FacVen = empDao.getById(01).getEmpNumDetFacVen();
        }
        if(facVenCabModVen == 'B') {
            maxDet4FacVen = empDao.getById(01).getEmpNumDetBolVen();
        }
        
        facturaBusiness.create(facVenCabNum, cliCod, usuCod, facVenCabModVen, 
                facVenCabFecEmi, facVenCabFecVen, tipDesCod, facVenPorDes, 
                facVenCabIgv, facVenCabObs, estFacCod, metPagCod, tipPagCod, 
                monCod, pagCuoNum, 'A', detalles, maxDet4FacVen);        
        
        JsonObject data = new JsonObject();
        data.addProperty("state", true);
        data.addProperty("redirect", request.getContextPath() + "/secured/ventas/factura/addFactura");
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(new Gson().toJson(data));  
    }
}
