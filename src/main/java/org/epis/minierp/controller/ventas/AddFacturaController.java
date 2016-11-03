package org.epis.minierp.controller.ventas;

import org.epis.minierp.dao.general.TaGzzTipoComprobanteDao;
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
import javax.servlet.http.HttpSession;
import org.epis.minierp.dao.general.EnP1mEmpresaDao;
import org.epis.minierp.dao.general.TaGzzEstadoFacturaDao;
import org.epis.minierp.dao.general.TaGzzMetodoPagoFacturaDao;
import org.epis.minierp.dao.general.TaGzzMonedaDao;
import org.epis.minierp.dao.general.TaGzzTipoPagoFacturaDao;
import org.epis.minierp.dao.ventas.EnP1mClienteDao;
import org.epis.minierp.dao.ventas.EnP1mFacturaVentaCabDao;
import org.epis.minierp.dao.general.EnP1mUsuarioDao;
import org.epis.minierp.dao.logistica.EnP2mClaseProductoDao;
import org.epis.minierp.dao.logistica.EnP2mProductoDao;
import org.epis.minierp.dao.logistica.EnP2mSubclaseProductoDao;
import org.epis.minierp.dao.ventas.EnP1mCatalogoRutaDao;
import org.epis.minierp.dao.ventas.EnP1mDocumentoClienteDao;
import org.epis.minierp.dao.ventas.EnP1mMovimientoPuntoVenDao;
import org.epis.minierp.dao.ventas.EnP1tFacturaVentaDetDao;
import org.epis.minierp.dao.general.TaGzzTipoClienteDao;
import org.epis.minierp.dao.general.TaGzzTipoDescuentoDao;
import org.epis.minierp.model.EnP1mDocumentoCliente;
import org.epis.minierp.model.EnP1mEmpresa;
import org.epis.minierp.model.EnP1mFacturaVentaCab;
import org.epis.minierp.model.EnP1mMovimientoPuntoVen;
import org.epis.minierp.model.EnP1mMovimientoPuntoVenId;
import org.epis.minierp.model.EnP1mPuntoVenta;
import org.epis.minierp.model.EnP1mSucursal;
import org.epis.minierp.model.EnP1mUsuario;
import org.epis.minierp.model.EnP1tFacturaVentaDet;
import org.epis.minierp.model.EnP1tFacturaVentaDetId;
import org.epis.minierp.model.EnP2mClaseProducto;
import org.epis.minierp.model.EnP2mProducto;
import org.epis.minierp.model.EnP2mProductoId;
import org.epis.minierp.model.EnP2mSubclaseProducto;
import org.epis.minierp.model.TaGzzEstadoFactura;
import org.epis.minierp.model.TaGzzMetodoPagoFactura;
import org.epis.minierp.model.TaGzzMoneda;
import org.epis.minierp.model.TaGzzTipoCliente;
import org.epis.minierp.model.TaGzzTipoDescuento;
import org.epis.minierp.model.TaGzzTipoPagoFactura;

public class AddFacturaController extends HttpServlet {	
    private static final long serialVersionUID = 1L;
    private SimpleDateFormat dt= new SimpleDateFormat("dd/MM/yyyy");

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        EnP1mUsuario user = (EnP1mUsuario) session.getAttribute("usuario");
        
        List <TaGzzMetodoPagoFactura> metodosPagoFactura = (new TaGzzMetodoPagoFacturaDao()).getAllActive();
        List <TaGzzMoneda> monedas = (new TaGzzMonedaDao()).getAllActive();
        List <TaGzzTipoPagoFactura> tiposPagoFactura = (new TaGzzTipoPagoFacturaDao()).getAllActive(); 
        List <EnP2mProducto> productos = (new EnP2mProductoDao()).getAllActive();
        List <TaGzzTipoCliente> tiposCliente = (new TaGzzTipoClienteDao()).getAllActive();
        List <TaGzzTipoDescuento> tiposDescuentos = (new TaGzzTipoDescuentoDao()).getAllActive();
        EnP1mEmpresa empresa = (new EnP1mEmpresaDao()).getAll().get(0);
        EnP1mPuntoVenta punto = (EnP1mPuntoVenta) user.getEnP1mSucursal().getEnP1mPuntoVentas().iterator().next(); //Getting the first one

        request.setAttribute("metodosPagoFactura", metodosPagoFactura);
        request.setAttribute("monedas", monedas);
        request.setAttribute("tiposPagoFactura", tiposPagoFactura);
        request.setAttribute("productos", productos);
        request.setAttribute("tiposCliente", tiposCliente);
        request.setAttribute("tiposDescuentos", tiposDescuentos);
        request.setAttribute("empresa", empresa);
        request.setAttribute("punto", punto);
        
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
            Date facVenCabFec = format.parse(request.getParameter("facVenCabFec"));
            int monCod = Integer.parseInt(request.getParameter("monCod"));
            int metPagCod = Integer.parseInt(request.getParameter("metPagCod"));
            int tipPagCod = Integer.parseInt(request.getParameter("tipPagCod"));
            String facVenCabObs = request.getParameter("facVenCabObs");
            double facVenCabTot = Double.parseDouble(request.getParameter("facVenCabTot"));
            double facVenCabSubTot = Double.parseDouble(request.getParameter("facVenCabSubTot"));
            int rutCod = Integer.parseInt(request.getParameter("rutCod"));
            int tipDesCod = Integer.parseInt(request.getParameter("tipDesCod"));
            
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
            header.setFacVenCabFec(facVenCabFec);
            header.setFacVenCabTot(facVenCabTot);
            header.setFacVenCabSubTot(facVenCabSubTot);
            header.setFacVenCabIgv(facVenCabIgv);
            header.setFacVenCabObs(facVenCabObs);
            header.setTaGzzEstadoFactura((new TaGzzEstadoFacturaDao()).getById(estFacCod));
            header.setTaGzzMetodoPagoFactura((new TaGzzMetodoPagoFacturaDao()).getById(metPagCod));
            header.setTaGzzTipoPagoFactura((new TaGzzTipoPagoFacturaDao()).getById(tipPagCod));
            header.setTaGzzMoneda((new TaGzzMonedaDao()).getById(monCod));
            header.setEnP1mCatalogoRuta((new EnP1mCatalogoRutaDao()).getById(rutCod));
            header.setTaGzzTipoDescuento((new TaGzzTipoDescuentoDao()).getById(tipDesCod));
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
            
            EnP1mMovimientoPuntoVenDao movPunVenDao = new EnP1mMovimientoPuntoVenDao(); 
            EnP1mMovimientoPuntoVen movPunVen = new EnP1mMovimientoPuntoVen();
            EnP1mSucursal brachOffice = user.getEnP1mSucursal();
            EnP1mPuntoVenta salePoint = (EnP1mPuntoVenta) brachOffice.getEnP1mPuntoVentas().iterator().next(); //Getting the first one
            
            EnP1mMovimientoPuntoVenId movPunVenId = new EnP1mMovimientoPuntoVenId();
            movPunVenId.setSucCod(brachOffice.getSucCod());
            movPunVenId.setPunVenCod(salePoint.getId().getPunVenCod());
            movPunVenId.setMovPunVenCod((int) (System.currentTimeMillis() % Integer.MAX_VALUE));
            
            movPunVen.setId(movPunVenId);
            movPunVen.setEnP1mUsuario(user);
            movPunVen.setEstRegCod('A');
            movPunVen.setTaGzzTipoComprobante((new TaGzzTipoComprobanteDao()).getById(1));
            movPunVen.setMovPunVenFec(facVenCabFec);
            movPunVen.setMovPunVenMon(facVenCabTot);
            movPunVen.setMovPunVenComCod(facVenCabCod);
            
            movPunVenDao.save(movPunVen);       
            
            response.sendRedirect(request.getContextPath() + "/secured/ventas/factura/addFactura");
        } catch (ParseException ex) {
            Logger.getLogger(AddFacturaController.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
}
