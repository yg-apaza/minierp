package org.epis.minierp.controller.ventas;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.general.TaGzzEstadoCivilDao;
import org.epis.minierp.dao.ventas.EnP1mClienteDao;
import org.epis.minierp.model.EnP1mCliente;
import org.epis.minierp.model.TaGzzEstadoCivil;

public class AddClienteController extends HttpServlet
{	
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("Lllegue");
        TaGzzEstadoCivilDao daoEstCiv = new TaGzzEstadoCivilDao();
        List<TaGzzEstadoCivil> estados = daoEstCiv.getAllActive();
        request.setAttribute("estados", estados);        
         request.getRequestDispatcher("/WEB-INF/ventas/cliente/addCliente.jsp").forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EnP1mClienteDao clienteDao=new EnP1mClienteDao();
        EnP1mCliente cliente=new EnP1mCliente();
        cliente.setCliCod(request.getParameter("codCli"));
        
        cliente.setCliNom(request.getParameter("nomCli"));
        cliente.setCliApePat(request.getParameter("apePatCli"));
        cliente.setCliApeMat(request.getParameter("apeMatCli"));
        cliente.setCliDir(request.getParameter("dirCli"));
        TaGzzEstadoCivil estadoCiv = new TaGzzEstadoCivil();
        estadoCiv.setEstCivCod(Integer.parseInt(request.getParameter("estCivCod")));
        cliente.setTaGzzEstadoCivil(estadoCiv);
        cliente.setCliSex(request.getParameter("cliSex").charAt(0));
        cliente.setCliTelFij(request.getParameter("telFijCli"));
        cliente.setCliTelCel(request.getParameter("telCelCli"));
        cliente.setCliEmail(request.getParameter("emailCli"));
        cliente.setEstRegCod('A');
        clienteDao.save(cliente);
        response.sendRedirect(request.getContextPath() + "/secured/clientes");
    }
}
