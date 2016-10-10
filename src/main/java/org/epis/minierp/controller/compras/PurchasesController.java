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
import org.epis.minierp.dao.compras.EstadoFacturaDao;
import org.epis.minierp.dao.compras.FacturaCompraCabeceraDao;
import org.epis.minierp.dao.compras.FacturaCompraDetalleDao;
import org.epis.minierp.dao.compras.MetodoPagoFacturaDao;
import org.epis.minierp.dao.compras.MonedaDao;
import org.epis.minierp.dao.compras.ProductoDao;
import org.epis.minierp.dao.compras.ProveedorDao;
import org.epis.minierp.dao.compras.TipoPagoFacturaDao;
import org.epis.minierp.dao.general.UsuarioDao;
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

public class PurchasesController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List <EnP4mProveedor> proveedores = (new ProveedorDao()).getAll();
        List <TaGzzMetodoPagoFactura> metodosPagoFactura = (new MetodoPagoFacturaDao()).getAll();
        List <TaGzzMoneda> monedas = (new MonedaDao()).getAll();
        List <TaGzzTipoPagoFactura> tiposPagoFactura = (new TipoPagoFacturaDao()).getAll(); 
        List <EnP2mProducto> productos = (new ProductoDao()).getAll(); 
        List <TaGzzEstadoFactura> estados = (new EstadoFacturaDao().getAll());
        
        request.setAttribute("proveedores", proveedores);
        request.setAttribute("metodosPagoFactura", metodosPagoFactura);
        request.setAttribute("monedas", monedas);
        request.setAttribute("tiposPagoFactura", tiposPagoFactura);
        request.setAttribute("productos", productos);
        request.setAttribute("estados", estados);
        
        request.getRequestDispatcher("/WEB-INF/compras/purchases.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String facComCabCod = request.getParameter("facComCabCod");
            String proCod = request.getParameter("supplierCode");
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
         
            System.out.println("Estado Extraído " + estFacCod);
            System.out.println("Numero Extraído " + facComCabCod);
            System.out.println("Codigo Extraído " + proCod);
            System.out.println("Fecha Extraído " + facComCabFec);
            System.out.println("Moneda Extraído " + monCod);
            System.out.println("Tipo Pago Extraído " + tipPagCod);
            System.out.println("Metodo Pago Extraído " + metPagCod);
            System.out.println("Observaciones Extraídas " + facComCabObs);
            System.out.println("IGV Extraído " + facComCabIgv);
            System.out.println("Total Extraído " + facComCabTot);
            System.out.println("Descuento Extraído " + facComCabDes);
            System.out.println("Subtotal Extraído " + facComCabSubTot);
            System.out.println("List A " + productsAmounts);
            System.out.println("List D " + productsDescriptions);
            System.out.println("List P " + productsPrices);
            
            FacturaCompraCabeceraDao factura = new FacturaCompraCabeceraDao();
            EnP4mFacturaCompraCab header = new EnP4mFacturaCompraCab();
            
            header.setFacComCabCod(facComCabCod);
            header.setEnP4mProveedor((new ProveedorDao()).getById(proCod));
            header.setEnP1mUsuario((new UsuarioDao()).getById(usuCod));
            header.setFacComCabFec(facComCabFec);
            header.setFacComCabTot(facComCabTot);
            header.setFacComCabDes(facComCabDes);
            header.setFacComCabSubTot(facComCabSubTot);
            header.setFacComCabIgv(facComCabIgv);
            header.setFacComCabObs(facComCabObs);
            header.setTaGzzEstadoFactura((new EstadoFacturaDao()).getById(estFacCod));
            header.setTaGzzMetodoPagoFactura((new MetodoPagoFacturaDao()).getById(metPagCod));
            header.setTaGzzTipoPagoFactura((new TipoPagoFacturaDao()).getById(tipPagCod));
            header.setTaGzzMoneda((new MonedaDao()).getById(monCod));
            header.setEstRegCod('A');
            
            factura.save(header);
            
            FacturaCompraDetalleDao detalles = new FacturaCompraDetalleDao();
            
            for(int i = 0;i < productsDescriptions.size();i++) {
                StringTokenizer st = new StringTokenizer(productsDescriptions.get(i),"/");
                
                EnP2mProductoId productId = new EnP2mProductoId();                
                productId.setProCod(st.nextToken());
                productId.setSubClaProCod(st.nextToken());
                productId.setClaProCod(st.nextToken());
                
                ProductoDao productDao = new ProductoDao();
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
            response.sendRedirect(request.getContextPath() + "/secured/compras");
        } catch (ParseException ex) {
            Logger.getLogger(PurchasesController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
