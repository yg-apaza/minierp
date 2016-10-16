package org.epis.minierp.controller.ventas;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
import org.epis.minierp.model.EnP1mCliente;
import org.epis.minierp.model.EnP1mEmpresa;
import org.epis.minierp.model.EnP1mFacturaVentaCab;
import org.epis.minierp.model.EnP1mUsuario;
import org.epis.minierp.model.EnP2mClaseProducto;
import org.epis.minierp.model.EnP2mProducto;
import org.epis.minierp.model.EnP2mSubclaseProducto;
import org.epis.minierp.model.TaGzzEstadoFactura;
import org.epis.minierp.model.TaGzzMetodoPagoFactura;
import org.epis.minierp.model.TaGzzMoneda;
import org.epis.minierp.model.TaGzzTipoPagoFactura;

public class AddFacturaController extends HttpServlet
{	
    private static final long serialVersionUID = 1L;
    private SimpleDateFormat dt= new SimpleDateFormat("dd/MM/yyyy");

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List <TaGzzMetodoPagoFactura> metodosPagoFactura = (new TaGzzMetodoPagoFacturaDao()).getAllActive();
        List <TaGzzMoneda> monedas = (new TaGzzMonedaDao()).getAllActive();
        List <TaGzzTipoPagoFactura> tiposPagoFactura = (new TaGzzTipoPagoFacturaDao()).getAllActive(); 
        List <EnP2mProducto> productos = (new EnP2mProductoDao()).getAllActive(); 
        List <TaGzzEstadoFactura> estados = (new TaGzzEstadoFacturaDao()).getAllActive();
        List <EnP1mCliente> clientes = (new EnP1mClienteDao()).getAllActive();
        List <EnP2mClaseProducto> clases = (new EnP2mClaseProductoDao()).getAllActive();
        List <EnP2mSubclaseProducto> subclases = (new EnP2mSubclaseProductoDao()).getAllActive();
        EnP1mEmpresa empresa = (new EnP1mEmpresaDao()).getAll().get(0);
        System.out.println(empresa.getEmpIgv());
        
        request.setAttribute("metodosPagoFactura", metodosPagoFactura);
        request.setAttribute("monedas", monedas);
        request.setAttribute("tiposPagoFactura", tiposPagoFactura);
        request.setAttribute("productos", productos);
        request.setAttribute("estados", estados);
        request.setAttribute("clientes", clientes);
        request.setAttribute("clases", clases);
        request.setAttribute("subclases", subclases);
        request.setAttribute("empresa", empresa);
        
        request.getRequestDispatcher("/WEB-INF/ventas/factura/addFactura.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        switch (action) {
            case "initialize":
                //response.sendRedirect(request.getContextPath() + "/secured/ventas/factura/addFactura");
                break;
        }
        /*EnP1mFacturaVentaCabDao facCabDao=new EnP1mFacturaVentaCabDao();
        
        if(request.getParameter("agregarFactura")!=null){
           
            
            EnP1mFacturaVentaCab cabecera= new EnP1mFacturaVentaCab();
            cabecera.setFacVenCabCod(request.getParameter("CodCabFac"));
            EnP1mCliente cliente=new EnP1mCliente();
            System.out.println("HABER: "+request.getParameter("cliCod")+ " "+request.getParameter("CodCabFac"));
            cliente=new EnP1mClienteDao().getById((request.getParameter("cliCod")));       
            cabecera.setEnP1mCliente(cliente);

            EnP1mUsuario user = new EnP1mUsuarioDao().getById(request.getParameter("usuCod"));
            cabecera.setEnP1mUsuario(user);
            Date fecha=new Date();
            cabecera.setFacVenCabFec(fecha);

            cabecera.setFacVenCabDes(0);
            cabecera.setFacVenCabSubTot(Double.parseDouble(request.getParameter("total")));
            cabecera.setFacVenCabTot(Double.parseDouble(request.getParameter("total")));
            cabecera.setFacVenCabIgv(18);
            cabecera.setFacVenCabObs(request.getParameter("obsrs"));
            TaGzzEstadoFactura estFac = new TaGzzEstadoFacturaDao().getById(2);
            cabecera.setTaGzzEstadoFactura(estFac);

            TaGzzMetodoPagoFactura metPag = new TaGzzMetodoPagoFacturaDao().getById(Integer.parseInt(request.getParameter("selecMetodoPago")));
            cabecera.setTaGzzMetodoPagoFactura(metPag);

            TaGzzTipoPagoFactura tipPag = new TaGzzTipoPagoFacturaDao().getById(Integer.parseInt(request.getParameter("selectTipPag")));
            cabecera.setTaGzzTipoPagoFactura(tipPag);
            TaGzzMoneda mon = new TaGzzMonedaDao().getById(Integer.parseInt(request.getParameter("selectTipMon")));
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
        }*/
        
    }
}
