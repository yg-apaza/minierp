package org.epis.minierp.controller.compras;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.StringTokenizer;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.general.TaGzzEstadoFacturaDao;
import org.epis.minierp.dao.compras.EnP4mFacturaCompraCabDao;
import org.epis.minierp.dao.compras.EnP4tFacturaCompraDetDao;
import org.epis.minierp.dao.general.TaGzzMetodoPagoFacturaDao;
import org.epis.minierp.dao.general.TaGzzMonedaDao;
import org.epis.minierp.dao.logistica.EnP2mProductoDao;
import org.epis.minierp.dao.compras.EnP4mProveedorDao;
import org.epis.minierp.dao.general.TaGzzTipoPagoFacturaDao;
import org.epis.minierp.dao.general.EnP1mUsuarioDao;
import org.epis.minierp.dao.general.TaGzzTipoDescuentoDao;
import org.epis.minierp.model.EnP2mProducto;
import org.epis.minierp.model.EnP2mProductoId;
import org.epis.minierp.model.EnP4mFacturaCompraCab;
import org.epis.minierp.model.TaGzzMetodoPagoFactura;
import org.epis.minierp.model.TaGzzMoneda;
import org.epis.minierp.model.EnP4mProveedor;
import org.epis.minierp.model.EnP4tFacturaCompraDet;
import org.epis.minierp.model.EnP4tFacturaCompraDetId;
import org.epis.minierp.model.TaGzzEstadoFactura;
import org.epis.minierp.model.TaGzzTipoDescuento;
import org.epis.minierp.model.TaGzzTipoPagoFactura;

public class AddPurchaseController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List <TaGzzMetodoPagoFactura> metodosPagoFactura = (new TaGzzMetodoPagoFacturaDao()).getAll();
        List <TaGzzMoneda> monedas = (new TaGzzMonedaDao()).getAll();
        List <TaGzzTipoPagoFactura> tiposPagoFactura = (new TaGzzTipoPagoFacturaDao()).getAll(); 
        List <EnP2mProducto> productos = (new EnP2mProductoDao()).getAll(); 
        List <TaGzzEstadoFactura> estadosFactura = (new TaGzzEstadoFacturaDao().getAll());
        List <TaGzzTipoDescuento> tiposDescuentos = (new TaGzzTipoDescuentoDao()).getAllActive();
        DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        String fechaActual = format.format(Calendar.getInstance().getTime());
            
        request.setAttribute("metodosPagoFactura", metodosPagoFactura);
        request.setAttribute("monedas", monedas);
        request.setAttribute("tiposPagoFactura", tiposPagoFactura);
        request.setAttribute("productos", productos);
        request.setAttribute("estadosFactura", estadosFactura);
        request.setAttribute("tiposDescuentos", tiposDescuentos);
        request.setAttribute("fechaActual", fechaActual);
        
        request.getRequestDispatcher("/WEB-INF/compras/factura/addPurchase.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String facComCabCod = request.getParameter("facComCabCod");
            String prvCod = request.getParameter("prvCod");
            String usuCod = request.getParameter("usuCod");
            DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
            Date facComCabFecEmi = format.parse(request.getParameter("facComCabFecEmi"));
            Date facComCabFecVen = format.parse(request.getParameter("facComCabFecVen"));
            String prvType = request.getParameter("prvType");
            String prvDes = request.getParameter("prvDes");
            int monCod = Integer.parseInt(request.getParameter("monCod"));
            int tipPagCod = Integer.parseInt(request.getParameter("tipPagCod"));
            int metPagCod = Integer.parseInt(request.getParameter("metPagCod"));
            int estFacCod = Integer.parseInt(request.getParameter("estFacCod"));
            String facComCabObs = request.getParameter("facComCabObs");
            int tipDesCod = Integer.parseInt(request.getParameter("tipDesCod"));
            int facComCabPorDes = Integer.parseInt(request.getParameter("facComCabPorDes"));
            int facComCabIgv = Integer.parseInt(request.getParameter("facComCabIgv"));
            double facComCabSubTot = Double.parseDouble(request.getParameter("facComCabSubTot"));
            double facComCabTot = Double.parseDouble(request.getParameter("facComCabTot"));
            List <String> productsAmounts = Arrays.asList((request.getParameter("productsAmounts")).split("\\s*,\\s*"));
            List <String> productsCodes = Arrays.asList((request.getParameter("productsCodes")).split("\\s*,\\s*"));
            List <String> productsPrices = Arrays.asList((request.getParameter("productsPrices")).split("\\s*,\\s*"));
            
            EnP4mFacturaCompraCabDao factura = new EnP4mFacturaCompraCabDao();
            EnP4mFacturaCompraCab header = new EnP4mFacturaCompraCab();
            EnP4mProveedorDao proveedorDao = new EnP4mProveedorDao();
            
            header.setFacComCabCod(facComCabCod);
            if(prvCod.isEmpty()) {
                EnP4mProveedor newSupplier = new EnP4mProveedor();
                newSupplier.setPrvCod(String.valueOf(System.currentTimeMillis()));
                newSupplier.setPrvDet(prvDes);
                if(prvType.equals("1")) {
                    newSupplier.setPrvRazSoc(prvDes);
                } else if(prvType.equals("2")) {
                    newSupplier.setPrvNomCom(prvDes);
                }
                newSupplier.setEstRegCod('A');
                proveedorDao.save(newSupplier);
                header.setEnP4mProveedor(newSupplier);
            } else {
                header.setEnP4mProveedor(proveedorDao.getById(prvCod));
            }
            header.setEnP1mUsuario((new EnP1mUsuarioDao()).getById(usuCod));
            header.setFacComCabFecEmi(facComCabFecEmi);
            header.setFacComCabFecVen(facComCabFecVen);
            header.setTaGzzMoneda((new TaGzzMonedaDao()).getById(monCod));
            header.setTaGzzMetodoPagoFactura((new TaGzzMetodoPagoFacturaDao()).getById(metPagCod));
            header.setTaGzzEstadoFactura((new TaGzzEstadoFacturaDao()).getById(estFacCod));            
            header.setTaGzzTipoPagoFactura((new TaGzzTipoPagoFacturaDao()).getById(tipPagCod));
            header.setTaGzzTipoDescuento((new TaGzzTipoDescuentoDao()).getById(tipDesCod));
            header.setFacComCabObs(facComCabObs);
            header.setFacComPorDes(facComCabPorDes);
            header.setFacComCabIgv(facComCabIgv);
            header.setFacComCabSubTot(facComCabSubTot);
            header.setFacComCabTot(facComCabTot);
            header.setEstRegCod('A');            
            factura.save(header);
            
            EnP4tFacturaCompraDetDao detalles = new EnP4tFacturaCompraDetDao();
            
            for(int i = 0;i < productsCodes.size();i++) {
                StringTokenizer st = new StringTokenizer(productsCodes.get(i),"-");
                
                EnP2mProductoId productId = new EnP2mProductoId();
                productId.setClaProCod(st.nextToken());
                productId.setSubClaProCod(st.nextToken());                
                productId.setProCod(st.nextToken());
            
                EnP2mProductoDao productDao = new EnP2mProductoDao();
                EnP2mProducto product = productDao.getById(productId);
                product.setProStk(product.getProStk() + Double.parseDouble(productsAmounts.get(i))); /* Updating stock */
                productDao.update(product);
                                
                EnP4tFacturaCompraDet det = new EnP4tFacturaCompraDet();
                EnP4tFacturaCompraDetId detId = new EnP4tFacturaCompraDetId();
                detId.setFacComCabCod(facComCabCod);
                detId.setFacComDetCod(i);
                det.setId(detId);
                det.setEnP4mFacturaCompraCab(header);
                det.setEnP2mProducto(product);
                det.setFacComDetCan(Double.parseDouble(productsAmounts.get(i)));
                det.setFacComDetValUni(Double.parseDouble(productsPrices.get(i)));
                
                detalles.save(det);                                
            } 
            
            JsonObject data = new JsonObject();
            data.addProperty("state", true);
            data.addProperty("redirect", request.getContextPath() + "/secured/compras/factura/addFactura");
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write(new Gson().toJson(data));  
        } catch (ParseException ex) {
            Logger.getLogger(AddPurchaseController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
