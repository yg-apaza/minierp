package org.epis.minierp.controller.ventas;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.StringTokenizer;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.general.EnP1mEmpresaDao;
import org.epis.minierp.dao.general.TaGzzMonedaDao;
import org.epis.minierp.dao.ventas.EnP1mClienteDao;
import org.epis.minierp.dao.ventas.EnP1mPreventaCabDao;
import org.epis.minierp.dao.general.EnP1mUsuarioDao;
import org.epis.minierp.dao.general.TaGzzTipoClienteDao;
import org.epis.minierp.dao.general.TaGzzTipoDescuentoDao;
import org.epis.minierp.dao.logistica.EnP2mProductoDao;
import org.epis.minierp.dao.ventas.EnP1tPreventaDetDao;
import org.epis.minierp.model.EnP1mEmpresa;
import org.epis.minierp.model.EnP1mPreventaCab;
import org.epis.minierp.model.EnP1mUsuario;
import org.epis.minierp.model.EnP1tPreventaDet;
import org.epis.minierp.model.EnP1tPreventaDetId;
import org.epis.minierp.model.EnP2mProducto;
import org.epis.minierp.model.EnP2mProductoId;
import org.epis.minierp.model.TaGzzMoneda;
import org.epis.minierp.model.TaGzzTipoCliente;
import org.epis.minierp.model.TaGzzTipoDescuento;
import org.epis.minierp.util.DateUtil;

public class AddPreVentaController extends HttpServlet{
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List <TaGzzMoneda> monedas = (new TaGzzMonedaDao()).getAllActive();
        List <EnP2mProducto> productos = (new EnP2mProductoDao()).getAllActive();        
        List <TaGzzTipoCliente> tiposCliente = (new TaGzzTipoClienteDao()).getAllActive();
        List <TaGzzTipoDescuento> tiposDescuentos = (new TaGzzTipoDescuentoDao()).getAllActive();
        EnP1mEmpresa empresa = (new EnP1mEmpresaDao()).getAll().get(0);
        DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        String fechaActual = format.format(Calendar.getInstance().getTime());
        
        request.setAttribute("monedas", monedas);
        request.setAttribute("productos", productos);
        request.setAttribute("tiposCliente", tiposCliente);
        request.setAttribute("tiposDescuentos", tiposDescuentos);
        request.setAttribute("empresa", empresa);
        request.setAttribute("fechaActual", fechaActual);
        
        request.getRequestDispatcher("/WEB-INF/ventas/preventa/addPreventa.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String usuCod = request.getParameter("usuCod");
            List <String> productsAmounts = Arrays.asList((request.getParameter("productsAmounts")).split("\\s*,\\s*"));
            List <String> productsCodes = Arrays.asList((request.getParameter("productsCodes")).split("\\s*,\\s*"));
            List <String> productsPrices = Arrays.asList((request.getParameter("productsPrices")).split("\\s*,\\s*"));
            String preVenCabCod = request.getParameter("preVenCabCod");
            String cliCod = request.getParameter("cliCod");
            int preVenCabIgv = (int)Double.parseDouble(request.getParameter("preVenCabIgv"));
            DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
            Date preVenCabFecEmi = format.parse(request.getParameter("preVenCabFecEmi"));
            //Date preVenCabFecVen = format.parse(request.getParameter("preVenCabFecVen"));
            Calendar c= new GregorianCalendar();
            c.setTime(preVenCabFecEmi);
            c.set(c.get(Calendar.YEAR),c.get(Calendar.MONTH)+1,c.get(Calendar.DAY_OF_MONTH)+1);
            Date preVenCabFecVen=c.getTime();
            
            int monCod = Integer.parseInt(request.getParameter("monCod")); 
            //int preVenCabPla = Integer.parseInt(request.getParameter("preVenCabPla")); 
            String preVenCabObs = request.getParameter("preVenCabObs");
            int preVenPorDes = Integer.parseInt(request.getParameter("preVenPorDes")); 
            double preVenCabTot = Double.parseDouble(request.getParameter("preVenCabTot"));
            double preVenCabSubTot = Double.parseDouble(request.getParameter("preVenCabSubTot"));
            int tipDesCod = Integer.parseInt(request.getParameter("tipDesCod"));
            
            EnP1mPreventaCabDao preventa = new EnP1mPreventaCabDao();
            EnP1mPreventaCab header = new EnP1mPreventaCab();
            EnP1mUsuario user = (new EnP1mUsuarioDao()).getById(usuCod);
            
            header.setPreVenCabCod(preVenCabCod);
            header.setEnP1mCliente((new EnP1mClienteDao()).getById(cliCod));
            header.setEnP1mUsuario(user);
            header.setPreVenCabFecEmi(preVenCabFecEmi);
            header.setPreVenCabFecVen(preVenCabFecVen);
            header.setPreVenPorDes(preVenPorDes);
            header.setPreVenCabTot(preVenCabTot);
            header.setPreVenCabSubTot(preVenCabSubTot);
            header.setPreVenCabIgv(preVenCabIgv);
            header.setPreVenCabObs(preVenCabObs);
            //header.setPreVenCabPla(preVenCabPla);
            header.setPreVenCabPla(1);
            header.setTaGzzMoneda((new TaGzzMonedaDao()).getById(monCod));
            header.setTaGzzTipoDescuento((new TaGzzTipoDescuentoDao()).getById(tipDesCod));
            header.setEstRegCod('A');

            preventa.save(header);
            
            EnP1tPreventaDetDao detalles = new EnP1tPreventaDetDao();
            
            for(int i = 0;i < productsCodes.size();i++) {
                StringTokenizer st = new StringTokenizer(productsCodes.get(i),"-");
            
                EnP2mProductoId productId = new EnP2mProductoId();
                productId.setClaProCod(st.nextToken());
                productId.setSubClaProCod(st.nextToken());                
                productId.setProCod(st.nextToken());
            
                EnP2mProductoDao productDao = new EnP2mProductoDao();
                EnP2mProducto product = productDao.getById(productId);
                product.setProStkPreVen(product.getProStkPreVen() - Double.parseDouble(productsAmounts.get(i))); /*Updating stock preventa*/ 
                productDao.update(product);
            
                EnP1tPreventaDet det = new EnP1tPreventaDet();
                EnP1tPreventaDetId detId = new EnP1tPreventaDetId();
                detId.setPreVenCabCod(preVenCabCod);
                detId.setPreVenDetCod(i);
                det.setId(detId);
                det.setEnP1mPreventaCab(header);
                det.setEnP2mProducto(product);
                det.setPreVenDetCan(Double.parseDouble(productsAmounts.get(i)));
                det.setPreVenDetValUni(Double.parseDouble(productsPrices.get(i)));
            
                detalles.save(det);
            }
            
            response.sendRedirect(request.getContextPath() + "/secured/ventas/preventa/addPreventa");
        } catch (ParseException ex) {
            Logger.getLogger(AddPreVentaController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
