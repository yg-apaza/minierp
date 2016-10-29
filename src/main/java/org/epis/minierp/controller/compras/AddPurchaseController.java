package org.epis.minierp.controller.compras;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
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
import org.epis.minierp.model.EnP2mProducto;
import org.epis.minierp.model.EnP2mProductoId;
import org.epis.minierp.model.EnP4mFacturaCompraCab;
import org.epis.minierp.model.TaGzzMetodoPagoFactura;
import org.epis.minierp.model.TaGzzMoneda;
import org.epis.minierp.model.EnP4mProveedor;
import org.epis.minierp.model.EnP4tFacturaCompraDet;
import org.epis.minierp.model.EnP4tFacturaCompraDetId;
import org.epis.minierp.model.TaGzzEstadoFactura;
import org.epis.minierp.model.TaGzzTipoPagoFactura;

public class AddPurchaseController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List <EnP4mProveedor> proveedores = (new EnP4mProveedorDao()).getAllActive();
        List <TaGzzMetodoPagoFactura> metodosPagoFactura = (new TaGzzMetodoPagoFacturaDao()).getAll();
        List <TaGzzMoneda> monedas = (new TaGzzMonedaDao()).getAll();
        List <TaGzzTipoPagoFactura> tiposPagoFactura = (new TaGzzTipoPagoFacturaDao()).getAll(); 
        List <EnP2mProducto> productos = (new EnP2mProductoDao()).getAll(); 
        List <TaGzzEstadoFactura> estados = (new TaGzzEstadoFacturaDao().getAll());
        
        request.setAttribute("proveedores", proveedores);
        request.setAttribute("metodosPagoFactura", metodosPagoFactura);
        request.setAttribute("monedas", monedas);
        request.setAttribute("tiposPagoFactura", tiposPagoFactura);
        request.setAttribute("productos", productos);
        request.setAttribute("estados", estados);
        
        request.getRequestDispatcher("/WEB-INF/compras/factura/addPurchase.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String facComCabCod = request.getParameter("facComCabCod");
            String proCod = request.getParameter("proCod");
            String proDet = request.getParameter("proDet");
            String usuCod = request.getParameter("usuCod");
            DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
            Date facComCabFec = format.parse(request.getParameter("facComCabFec"));
            int monCod = Integer.parseInt(request.getParameter("monCod"));
            int tipPagCod = Integer.parseInt(request.getParameter("tipPagCod"));
            int metPagCod = Integer.parseInt(request.getParameter("metPagCod"));
            String facComCabObs = request.getParameter("facComCabObs");
            int facComCabIgv = Integer.parseInt(request.getParameter("facComCabIgv"));
            int estFacCod = Integer.parseInt(request.getParameter("estFacCod"));
            double facComCabTot = Double.parseDouble(request.getParameter("facComCabTot"));
            double facComCabDes = Double.parseDouble(request.getParameter("facComCabDes"));
            double facComCabSubTot = Double.parseDouble(request.getParameter("facComCabSubTot"));
            List <String> productsAmounts = Arrays.asList((request.getParameter("productsAmounts")).split("\\s*,\\s*"));
            List <String> productsDescriptions = Arrays.asList((request.getParameter("productsDescriptions")).split("\\s*,\\s*"));
            List <String> productsPrices = Arrays.asList((request.getParameter("productsPrices")).split("\\s*,\\s*"));
                     
            EnP4mFacturaCompraCabDao factura = new EnP4mFacturaCompraCabDao();
            EnP4mFacturaCompraCab header = new EnP4mFacturaCompraCab();
            
            header.setFacComCabCod(facComCabCod);
            
            EnP4mProveedorDao proveedorDao = new EnP4mProveedorDao();
            EnP4mProveedor proveedor = proveedorDao.getById(proCod);
            if(proveedor != null)
            {
                proveedor.setPrvDet(proDet);
                header.setEnP4mProveedor(proveedor);
            }
            else
            {
                EnP4mProveedor proveedorNew = new EnP4mProveedor();
                proveedorNew.setPrvCod(proCod);
                proveedorNew.setPrvDet(proDet);
                proveedorNew.setEstRegCod('A');
                proveedorDao.save(proveedorNew);
                header.setEnP4mProveedor(proveedorNew);
            }
            
            header.setEnP1mUsuario((new EnP1mUsuarioDao()).getById(usuCod));
            header.setFacComCabFec(facComCabFec);
            header.setFacComCabTot(facComCabTot);
            header.setFacComCabDes(facComCabDes);
            header.setFacComCabSubTot(facComCabSubTot);
            header.setFacComCabIgv(facComCabIgv);
            header.setFacComCabObs(facComCabObs);
            header.setTaGzzEstadoFactura((new TaGzzEstadoFacturaDao()).getById(estFacCod));
            header.setTaGzzMetodoPagoFactura((new TaGzzMetodoPagoFacturaDao()).getById(metPagCod));
            header.setTaGzzTipoPagoFactura((new TaGzzTipoPagoFacturaDao()).getById(tipPagCod));
            header.setTaGzzMoneda((new TaGzzMonedaDao()).getById(monCod));
            header.setEstRegCod('A');
            
            factura.save(header);
            
            EnP4tFacturaCompraDetDao detalles = new EnP4tFacturaCompraDetDao();
            
            for(int i = 0;i < productsDescriptions.size();i++) {
                StringTokenizer st = new StringTokenizer(productsDescriptions.get(i),"/");
                
                EnP2mProductoId productId = new EnP2mProductoId();                
                productId.setProCod(st.nextToken());
                productId.setSubClaProCod(st.nextToken());
                productId.setClaProCod(st.nextToken());
                
                EnP2mProductoDao productDao = new EnP2mProductoDao();
                EnP2mProducto product = productDao.getById(productId);
                product.setProStk(product.getProStk() + Double.parseDouble(productsAmounts.get(i))); /* Updating stock */
                productDao.update(product);
                                
                EnP4tFacturaCompraDet det = new EnP4tFacturaCompraDet();
                EnP4tFacturaCompraDetId detId = new EnP4tFacturaCompraDetId();
                detId.setFacComCabCod(facComCabCod);
                detId.setFacComDetCod((int) (System.currentTimeMillis() % Integer.MAX_VALUE));
                det.setId(detId);
                det.setEnP4mFacturaCompraCab(header);
                det.setEnP2mProducto(product);
                det.setFacComDetCan(Double.parseDouble(productsAmounts.get(i)));
                det.setFacComDetValUni(Double.parseDouble(productsPrices.get(i)));
                
                detalles.save(det);                                
            }                 
            response.sendRedirect(request.getContextPath() + "/secured/general/panel");
        } catch (ParseException ex) {
            Logger.getLogger(AddPurchaseController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
