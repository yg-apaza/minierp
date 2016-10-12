package org.epis.minierp.controller.ventas;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.general.TaGzzEstadoFacturaDao;
import org.epis.minierp.dao.general.TaGzzMetodoPagoFacturaDao;
import org.epis.minierp.dao.general.TaGzzMonedaDao;
import org.epis.minierp.dao.general.TaGzzTipoPagoFacturaDao;
import org.epis.minierp.dao.logistica.EnP2mClaseProductoDao;
import org.epis.minierp.dao.logistica.EnP2mProductoDao;
import org.epis.minierp.dao.logistica.EnP2mSubclaseProductoDao;
import org.epis.minierp.dao.ventas.EnP1mClienteDao;
import org.epis.minierp.dao.ventas.EnP1mFacturaVentaCabDao;
import org.epis.minierp.dao.ventas.EnP1mUsuarioDao;
import org.epis.minierp.model.EnP1mCliente;
import org.epis.minierp.model.EnP1mFacturaVentaCab;
import org.epis.minierp.model.EnP1mUsuario;
import org.epis.minierp.model.EnP1tFacturaVentaDet;
import org.epis.minierp.model.EnP2mClaseProducto;
import org.epis.minierp.model.EnP2mProducto;
import org.epis.minierp.model.EnP2mProductoId;
import org.epis.minierp.model.EnP2mSubclaseProducto;
import org.epis.minierp.model.TaGzzEstadoFactura;
import org.epis.minierp.model.TaGzzMetodoPagoFactura;
import org.epis.minierp.model.TaGzzMoneda;
import org.epis.minierp.model.TaGzzTipoPagoFactura;

public class addFacturaController extends HttpServlet
{	
    private static final long serialVersionUID = 1L;
    private SimpleDateFormat dt= new SimpleDateFormat("dd/MM/yyyy");

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        TaGzzTipoPagoFacturaDao tiposDao=new TaGzzTipoPagoFacturaDao();        
        List<TaGzzTipoPagoFactura> tipoPagos=tiposDao.getAllActive();
        TaGzzMetodoPagoFacturaDao metodoDao=new TaGzzMetodoPagoFacturaDao();
        List<TaGzzMetodoPagoFactura> metodosPago=metodoDao.getAll();        
        TaGzzMonedaDao monedaDao=new TaGzzMonedaDao();
        List<TaGzzMoneda> monedas=monedaDao.getAllActive();
//        EnP2mClaseProductoDao clasesDao=new EnP2mClaseProductoDao();
//        List<EnP2mClaseProducto> clases=clasesDao.getAll();
//        EnP2mSubclaseProductoDao subDao=new EnP2mSubclaseProductoDao();
//        List<EnP2mSubclaseProducto> subclases=subDao.getAllActive();
//        EnP2mProductoDao prodDao=new EnP2mProductoDao();
//        List<EnP2mProducto> productos=prodDao.getAllActive();
//        
        
        request.setAttribute("tipoPagos",tipoPagos);
        request.setAttribute("metodosPago",metodosPago);
        request.setAttribute("monedas",monedas);
//        request.setAttribute("clases",clases);
//        request.setAttribute("subclases",subclases);
//        request.setAttribute("productos",productos);
        
        EnP1mClienteDao clienteDao=new EnP1mClienteDao();
        List<EnP1mCliente> clientes=clienteDao.getAllActive();
        EnP1mUsuarioDao userDao=new EnP1mUsuarioDao();
        List<EnP1mUsuario> users=userDao.getAllActive();
        request.setAttribute("clientes",clientes);
        request.setAttribute("users",users);
        
        request.getRequestDispatcher("/WEB-INF/ventas/factura/addFactura.jsp").forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  
        EnP1mFacturaVentaCabDao facCabDao=new EnP1mFacturaVentaCabDao();
        
        if(request.getParameter("agregarFactura")!=null){
           
            
            EnP1mFacturaVentaCab cabecera= new EnP1mFacturaVentaCab();
            cabecera.setFacVenCabCod(request.getParameter("CodCabFac"));
            EnP1mCliente cliente=new EnP1mCliente();
            System.out.println("HABER: "+request.getParameter("cliCod")+ " "+request.getParameter("CodCabFac"));
            cliente=new EnP1mClienteDao().getById((request.getParameter("cliCod")));       
            cabecera.setEnP1mCliente(cliente);

            EnP1mUsuario user=new EnP1mUsuario();
            user= new EnP1mUsuarioDao().getById(request.getParameter("usuCod"));
            cabecera.setEnP1mUsuario(user);
            Date fecha=new Date();
            cabecera.setFacVenCabFec(fecha);

            cabecera.setFacVenCabDes(0);
            cabecera.setFacVenCabSubTot(Double.parseDouble(request.getParameter("total")));
            cabecera.setFacVenCabTot(Double.parseDouble(request.getParameter("total")));
            cabecera.setFacVenCabIgv(18);
            cabecera.setFacVenCabObs(request.getParameter("obsrs"));
            TaGzzEstadoFactura estFac=new TaGzzEstadoFactura();
            estFac=new TaGzzEstadoFacturaDao().getById(2);
            cabecera.setTaGzzEstadoFactura(estFac);

            TaGzzMetodoPagoFactura metPag=new TaGzzMetodoPagoFactura();
            metPag=new TaGzzMetodoPagoFacturaDao().getById(Integer.parseInt(request.getParameter("selecMetodoPago")));
            cabecera.setTaGzzMetodoPagoFactura(metPag);

            TaGzzTipoPagoFactura tipPag= new TaGzzTipoPagoFactura();

            tipPag= new TaGzzTipoPagoFacturaDao().getById(Integer.parseInt(request.getParameter("selectTipPag")));
            cabecera.setTaGzzTipoPagoFactura(tipPag);
            TaGzzMoneda mon=new TaGzzMoneda();
            mon=new TaGzzMonedaDao().getById(Integer.parseInt(request.getParameter("selectTipMon")));
            cabecera.setTaGzzMoneda(mon);
            cabecera.setEstRegCod('A');

            //CABECERA
            cabecera.setEnP1tFacturaVentaDets(null);
            System.out.println(cabecera.toString());
            facCabDao.save(cabecera);


            //DETALLE
//            System.out.println("TEMP" + request.getParameterValues("detalle"));
//            
//            EnP1tFacturaVentaDet det=new EnP1tFacturaVentaDet();
//            det.setEnP1mFacturaVentaCab(cabecera);
//            EnP2mProductoId id=new EnP2mProductoId();
//            id.setProCod(request.getParameter("productos"));
//            id.setClaProCod(new EnP2mClaseProducto("1",));
//            
//            EnP2mProducto prod= new EnP2mProductoDao().getById();
//            
//            det.setEnP2mProducto();
//            det.setFacVenDetCan(serialVersionUID);
//            det.setFacVenDetValUni(serialVersionUID);
//            det.setId();

            response.sendRedirect(request.getContextPath() + "/secured/ventas/factura");
        }
        
    }
}
