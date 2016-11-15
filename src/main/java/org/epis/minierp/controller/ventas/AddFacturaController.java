package org.epis.minierp.controller.ventas;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
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
import org.epis.minierp.dao.general.EnP1mEmpresaDao;
import org.epis.minierp.dao.general.TaGzzEstadoFacturaDao;
import org.epis.minierp.dao.general.TaGzzMetodoPagoFacturaDao;
import org.epis.minierp.dao.general.TaGzzMonedaDao;
import org.epis.minierp.dao.general.TaGzzTipoPagoFacturaDao;
import org.epis.minierp.dao.ventas.EnP1mClienteDao;
import org.epis.minierp.dao.ventas.EnP1mFacturaVentaCabDao;
import org.epis.minierp.dao.general.EnP1mUsuarioDao;
import org.epis.minierp.dao.logistica.EnP2mProductoDao;
import org.epis.minierp.dao.ventas.EnP1tFacturaVentaDetDao;
import org.epis.minierp.dao.general.TaGzzTipoClienteDao;
import org.epis.minierp.dao.general.TaGzzTipoDescuentoDao;
import org.epis.minierp.model.EnP1mFacturaVentaCab;
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
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        HttpSession session = request.getSession(true);
        metPagFacDao = new TaGzzMetodoPagoFacturaDao();
        monDao = new TaGzzMonedaDao();
        tipPagFacDao = new TaGzzTipoPagoFacturaDao();
        proDao = new EnP2mProductoDao();
        tipCliDao = new TaGzzTipoClienteDao();
        tipDesDao = new TaGzzTipoDescuentoDao();
        empDao = new EnP1mEmpresaDao();
        
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
        try {
            String usuCod = request.getParameter("usuCod");
            List <String> productsAmounts = Arrays.asList((request.getParameter("productsAmounts")).split("\\s*,\\s*"));
            List <String> productsCodes = Arrays.asList((request.getParameter("productsCodes")).split("\\s*,\\s*"));
            List <String> productsPrices = Arrays.asList((request.getParameter("productsPrices")).split("\\s*,\\s*"));
            String facVenCabCod = request.getParameter("facVenCabCod");
            String cliCod = request.getParameter("cliCod");
            int facVenCabIgv = (int)Double.parseDouble(request.getParameter("facVenCabIgv"));
            DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
            Date facVenCabFecEmi = format.parse(request.getParameter("facVenCabFecEmi"));
            Date facVenCabFecVen = format.parse(request.getParameter("facVenCabFecVen"));
            int monCod = Integer.parseInt(request.getParameter("monCod"));
            int metPagCod = Integer.parseInt(request.getParameter("metPagCod"));
            int tipPagCod = Integer.parseInt(request.getParameter("tipPagCod"));
            String facVenCabObs = request.getParameter("facVenCabObs");
            int facVenPorDes = Integer.parseInt(request.getParameter("facVenPorDes"));
            double facVenCabTot = Double.parseDouble(request.getParameter("facVenCabTot"));
            double facVenCabSubTot = Double.parseDouble(request.getParameter("facVenCabSubTot"));
            int tipDesCod = Integer.parseInt(request.getParameter("tipDesCod"));
            char facVenCabModVen = request.getParameter("facVenCabModVen").charAt(0);
            int estFacCod = 1;
            switch(tipPagCod) {
                case 2: estFacCod = 2;
                    break;
            }
            
            EnP1mFacturaVentaCabDao factura = new EnP1mFacturaVentaCabDao();
            EnP1mFacturaVentaCab header = new EnP1mFacturaVentaCab();
            EnP1mUsuario user = (new EnP1mUsuarioDao()).getById(usuCod);
            
            header.setFacVenCabCod(facVenCabCod);            
            header.setEnP1mCliente((new EnP1mClienteDao()).getById(cliCod));
            header.setEnP1mUsuario(user);
            header.setFacVenCabFecEmi(facVenCabFecEmi);
            header.setFacVenCabFecVen(facVenCabFecVen);
            header.setFacVenPorDes(facVenPorDes);
            header.setFacVenCabTot(facVenCabSubTot);//invertido para que funcione correctamente
            header.setFacVenCabSubTot(facVenCabTot);//invertido para que funcione correctament
            header.setFacVenCabIgv(facVenCabIgv);
            header.setFacVenCabObs(facVenCabObs);
            header.setTaGzzEstadoFactura((new TaGzzEstadoFacturaDao()).getById(estFacCod));
            header.setTaGzzMetodoPagoFactura((new TaGzzMetodoPagoFacturaDao()).getById(metPagCod));
            header.setTaGzzTipoPagoFactura((new TaGzzTipoPagoFacturaDao()).getById(tipPagCod));
            header.setTaGzzMoneda((new TaGzzMonedaDao()).getById(monCod));
            header.setTaGzzTipoDescuento((new TaGzzTipoDescuentoDao()).getById(tipDesCod));
            header.setFacVenCabModVen(facVenCabModVen);
            header.setEstRegCod('A');
            
            factura.save(header);
            
            EnP1tFacturaVentaDetDao detalles = new EnP1tFacturaVentaDetDao();
            
            for(int i = 0;i < productsCodes.size();i++) {
                StringTokenizer st = new StringTokenizer(productsCodes.get(i),"-");
            
                EnP2mProductoId productId = new EnP2mProductoId();
                productId.setClaProCod(st.nextToken());
                productId.setSubClaProCod(st.nextToken());                
                productId.setProCod(st.nextToken());
            
                EnP2mProductoDao productDao = new EnP2mProductoDao();
                EnP2mProducto product = productDao.getById(productId);
                product.setProStk(product.getProStk() - Double.parseDouble(productsAmounts.get(i))); /* Updating stock */
                productDao.update(product);
            
                EnP1tFacturaVentaDet det = new EnP1tFacturaVentaDet();
                EnP1tFacturaVentaDetId detId = new EnP1tFacturaVentaDetId();
                detId.setFacVenCabCod(facVenCabCod);
                detId.setFacVenDetCod(i);
                det.setId(detId);
                det.setEnP1mFacturaVentaCab(header);
                det.setEnP2mProducto(product);
                det.setFacVenDetCan(Double.parseDouble(productsAmounts.get(i)));
                det.setFacVenDetValUni(Double.parseDouble(productsPrices.get(i)));
            
                detalles.save(det);
            }
                
            response.sendRedirect(request.getContextPath() + "/secured/ventas/factura/addFactura");
            
        } catch (ParseException ex) {
        }
    }
}
