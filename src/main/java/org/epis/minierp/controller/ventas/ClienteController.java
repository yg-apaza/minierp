package org.epis.minierp.controller.ventas;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.ventas.EnP1mClienteDao;
import org.epis.minierp.model.EnP1mCliente;

public class ClienteController extends HttpServlet
{	
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EnP1mClienteDao clienteDao=new EnP1mClienteDao();
        List<EnP1mCliente> clientes=clienteDao.getAllActive();    
        request.setAttribute("clientes",clientes);
        request.getRequestDispatcher("/WEB-INF/ventas/cliente/cliente.jsp").forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EnP1mClienteDao clienteDao=new EnP1mClienteDao();                
        if(request.getParameter("buscarCliente")!=null){
            EnP1mCliente cliente=clienteDao.getById(request.getParameter("dniCli"));
            List<EnP1mCliente> clientes=new ArrayList<>();
            clientes.add(cliente);
            request.setAttribute("clientes", clientes);
            request.getRequestDispatcher("/WEB-INF/ventas/cliente/cliente.jsp").forward(request, response);
        }else if(request.getParameter("todos")!=null){
            List<EnP1mCliente> clientes=clienteDao.getAll();    
            request.setAttribute("clientes",clientes);
            request.getRequestDispatcher("/WEB-INF/ventas/cliente/cliente.jsp").forward(request, response);
        }else if(request.getParameter("eliminarCliente")!=null){            
            EnP1mCliente t=new EnP1mCliente();
            t.setCliCod(request.getParameter("eliminarCliente"));
            System.out.println("Codigo: "+request.getParameter("eliminarCliente"));
            clienteDao.delete(t);
            System.out.println("ELIMINO");
            List<EnP1mCliente> clientes=clienteDao.getAllActive();    
            request.setAttribute("clientes",clientes);
            request.getRequestDispatcher("/WEB-INF/ventas/cliente/cliente.jsp").forward(request, response);
        }
//        else if(request.getParameter("modificarCliente")!=null){
//            EnP1mCliente t=clienteDao.getById(request.getParameter("modificarCliente"));
//            request.setAttribute("codCli", t);
//            request.setAttribute("nomCli", t);
//            request.setAttribute("apePatCli", t);
//            request.setAttribute("apeMatCli", t);
//            request.setAttribute("dirCli", t);
//            request.setAttribute("estCivCod", t);
//            request.setAttribute("cliSex", t);
//               request.setAttribute("telFijCli", t);
//            request.setAttribute("telCelCli", t);
//            request.setAttribute("cliSex", t);
//            
//            request.getRequestDispatcher("/WEB-INF/ventas/cliente/cliente.jsp").forward(request, response);
//        }
        
    }
    
    
}
