package org.epis.minierp.controller.ventas;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.StringTokenizer;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.general.EnP1mEmpresaDao;
import org.epis.minierp.dao.general.TaGzzMonedaDao;
import org.epis.minierp.dao.ventas.EnP1mClienteDao;
import org.epis.minierp.dao.ventas.EnP1mPreventaCabDao;
import org.epis.minierp.dao.general.EnP1mUsuarioDao;
import org.epis.minierp.dao.logistica.EnP2mClaseProductoDao;
import org.epis.minierp.dao.logistica.EnP2mProductoDao;
import org.epis.minierp.dao.logistica.EnP2mSubclaseProductoDao;
import org.epis.minierp.dao.ventas.EnP1tPreventaDetDao;
import org.epis.minierp.model.EnP1mCliente;
import org.epis.minierp.model.EnP1mEmpresa;
import org.epis.minierp.model.EnP1mPreventaCab;
import org.epis.minierp.model.EnP1mUsuario;
import org.epis.minierp.model.EnP1tPreventaDet;
import org.epis.minierp.model.EnP1tPreventaDetId;
import org.epis.minierp.model.EnP2mClaseProducto;
import org.epis.minierp.model.EnP2mProducto;
import org.epis.minierp.model.EnP2mProductoId;
import org.epis.minierp.model.EnP2mSubclaseProducto;
import org.epis.minierp.model.TaGzzMoneda;

public class AddPreVentaController extends HttpServlet{
       private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        TaGzzMonedaDao monedaDao = new TaGzzMonedaDao();
        EnP1mClienteDao clientDao = new EnP1mClienteDao(); 
        EnP2mClaseProductoDao claseDao = new EnP2mClaseProductoDao();
        EnP2mSubclaseProductoDao subclaseDao = new EnP2mSubclaseProductoDao();
        EnP2mProductoDao productoDao = new EnP2mProductoDao();
        EnP1mEmpresa empresa = (new EnP1mEmpresaDao()).getAll().get(0);

        List<TaGzzMoneda> monedas = monedaDao.getAll();
        List<EnP1mCliente> clientes = clientDao.getAllActive();
        List<EnP2mClaseProducto> clases = claseDao.getAllActive();
        List<EnP2mSubclaseProducto> subclases = subclaseDao.getAllActive();
        List<EnP2mProducto> productos = productoDao.getAllActive();
                        
        request.setAttribute("monedas", monedas);
        request.setAttribute("clientes", clientes);
        request.setAttribute("clases", clases);
        request.setAttribute("subclases", subclases);
        request.setAttribute("productos", productos);
        request.setAttribute("empresa", empresa);
        request.getRequestDispatcher("/WEB-INF/ventas/preventa/addPreventa.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        try {
            EnP1mPreventaCabDao preCabDao = new EnP1mPreventaCabDao();
            EnP1mPreventaCab cabecera = new EnP1mPreventaCab();
            String preCabCod = request.getParameter("CodCabPre");

            cabecera.setPreVenCabCod(preCabCod);
            EnP1mCliente cliente = new EnP1mCliente();
            cliente = new EnP1mClienteDao().getById((request.getParameter("cliCod")));       
            cabecera.setEnP1mCliente(cliente);

            EnP1mUsuario user = new EnP1mUsuario();
            
            user = new EnP1mUsuarioDao().getById(request.getParameter("usuCodigo"));
            cabecera.setEnP1mUsuario(user);
            DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
            Date fecha = format.parse(request.getParameter("fecCabPre"));
            cabecera.setPreVenCabFec(fecha);
            cabecera.setPreVenCabPla(Integer.parseInt(request.getParameter("plazo")));
            cabecera.setPreVenCabTot(Double.parseDouble(request.getParameter("totCabPre")));
            //cabecera.setPreVenCabDes(Double.parseDouble(request.getParameter("desCabPre")));
            cabecera.setPreVenCabSubTot(Double.parseDouble(request.getParameter("subTotCabPre")));
            cabecera.setPreVenCabSubTot(Integer.parseInt(request.getParameter("igvCabPre")));
            cabecera.setPreVenCabObs(request.getParameter("obsCabPre"));
            TaGzzMoneda mon=new TaGzzMoneda();
            mon=new TaGzzMonedaDao().getById(Integer.parseInt(request.getParameter("tipMon")));
            cabecera.setTaGzzMoneda(mon);
            cabecera.setEstRegCod('A');
            cabecera.setEnP1tPreventaDets(null);
            preCabDao.save(cabecera);
            
            List <String> productsAmounts = Arrays.asList((request.getParameter("productsAmounts")).split("\\s*,\\s*"));
            List <String> productsCodes = Arrays.asList((request.getParameter("productsCodes")).split("\\s*,\\s*"));
            List <String> productsPrices = Arrays.asList((request.getParameter("productsPrices")).split("\\s*,\\s*"));
            
            EnP1tPreventaDetDao detalles = new EnP1tPreventaDetDao();
            
            for(int i = 0;i < productsCodes.size();i++) {
                StringTokenizer st = new StringTokenizer(productsCodes.get(i),"-");
            
                EnP2mProductoId productId = new EnP2mProductoId();
                productId.setClaProCod(st.nextToken());
                productId.setSubClaProCod(st.nextToken());                
                productId.setProCod(st.nextToken());
                
            
                EnP2mProductoDao productDao = new EnP2mProductoDao();
                EnP2mProducto product = productDao.getById(productId);
                product.setProStkPreVen(product.getProStkPreVen() + Double.parseDouble(productsAmounts.get(i)));
                productDao.update(product);
            
                EnP1tPreventaDet det = new EnP1tPreventaDet();
                EnP1tPreventaDetId detId = new EnP1tPreventaDetId();
                detId.setPreVenCabCod(preCabCod);
                detId.setPreVenDetCod((int) (System.currentTimeMillis() % Integer.MAX_VALUE));
                det.setId(detId);
                det.setEnP2mProducto(product);
                det.setPreVenDetCan(Double.parseDouble(productsAmounts.get(i)));
                det.setPreVenDetValUni(Double.parseDouble(productsPrices.get(i)));
            
                detalles.save(det);
            }
            
            response.sendRedirect(request.getContextPath() + "/secured/ventas/preventa");

        } catch (ParseException ex) {
        }
    }
}
