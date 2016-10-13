/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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
import org.epis.minierp.dao.ventas.EnP1mUsuarioDao;
import org.epis.minierp.model.EnP1mCliente;
import org.epis.minierp.model.EnP1mPreventaCab;
import org.epis.minierp.model.EnP1mUsuario;
import org.epis.minierp.model.TaGzzMoneda;

/**
 *
 * @author Ylnner
 */
public class VentasPreVentaController extends HttpServlet{
       private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        TaGzzMonedaDao monedaDao=new TaGzzMonedaDao();
        EnP1mClienteDao clientDao=new EnP1mClienteDao(); 
        List<TaGzzMoneda> monedas = monedaDao.getAll();
        List<EnP1mCliente> clientes = clientDao.getAll();
        request.setAttribute("monedas", monedas);
        request.setAttribute("clientes", clientes);
        request.getRequestDispatcher("/WEB-INF/ventas/preventa/preventa.jsp").forward(request, response);
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
        response.sendRedirect(request.getContextPath() + "/secured/ventas");
    }
}
