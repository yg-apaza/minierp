package org.epis.minierp.controller.ventas;

import java.io.IOException;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.general.TaGzzMonedaDao;
import org.epis.minierp.dao.ventas.EnP1mClienteDao;
import org.epis.minierp.dao.ventas.EnP1mPreventaCabDao;
import org.epis.minierp.dao.general.EnP1mUsuarioDao;
import org.epis.minierp.dao.logistica.EnP2mClaseProductoDao;
import org.epis.minierp.dao.logistica.EnP2mProductoDao;
import org.epis.minierp.dao.logistica.EnP2mSubclaseProductoDao;
import org.epis.minierp.model.EnP1mCliente;
import org.epis.minierp.model.EnP1mPreventaCab;
import org.epis.minierp.model.EnP1mUsuario;
import org.epis.minierp.model.EnP2mClaseProducto;
import org.epis.minierp.model.EnP2mProducto;
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

        List<TaGzzMoneda> monedas = monedaDao.getAll();
        List<EnP1mCliente> clientes = clientDao.getAll();
        List<EnP2mClaseProducto> clases = claseDao.getAllActive();
        List<EnP2mSubclaseProducto> subclases = subclaseDao.getAllActive();
        List<EnP2mProducto> productos = productoDao.getAllActive();
                
        request.setAttribute("monedas", monedas);
        request.setAttribute("clientes", clientes);
        request.setAttribute("clases", clases);
        request.setAttribute("subclases", subclases);
        request.setAttribute("productos", productos);
        request.getRequestDispatcher("/WEB-INF/ventas/preventa/addPreventa.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EnP1mPreventaCabDao preCabDao=new EnP1mPreventaCabDao();
        EnP1mPreventaCab cabecera= new EnP1mPreventaCab();
        cabecera.setPreVenCabCod(request.getParameter("CodCabPre"));
        EnP1mCliente cliente=new EnP1mCliente();
        cliente=new EnP1mClienteDao().getById((request.getParameter("cliCod")));       
        cabecera.setEnP1mCliente(cliente);
        
        EnP1mUsuario user=new EnP1mUsuario();
        user= new EnP1mUsuarioDao().getById(request.getParameter("usuCod"));
        cabecera.setEnP1mUsuario(user);
        Date fecha=new Date();
        cabecera.setPreVenCabFec(fecha);
        cabecera.setPreVenCabPla(Integer.parseInt(request.getParameter("plazo")));
        cabecera.setPreVenCabDes(0);
        cabecera.setPreVenCabSubTot(Double.parseDouble(request.getParameter("total")));
        cabecera.setPreVenCabTot(Double.parseDouble(request.getParameter("total")));
        cabecera.setPreVenCabIgv(18);
        cabecera.setPreVenCabObs(request.getParameter("obsrs"));
                
        TaGzzMoneda mon=new TaGzzMoneda();
        mon=new TaGzzMonedaDao().getById(Integer.parseInt(request.getParameter("tipMon")));
        cabecera.setTaGzzMoneda(mon);
        cabecera.setEstRegCod('A');
        
        //CABECERA
        cabecera.setEnP1tPreventaDets(null);
        System.out.println(cabecera.toString());
        preCabDao.save(cabecera);
        response.sendRedirect(request.getContextPath() + "/secured/general/panel");
    }
}
