package org.epis.minierp.controller.configuracion;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.general.TaGzzTipoDocClienteDao;
import org.epis.minierp.dao.ventas.EnP1mClienteDao;
import org.epis.minierp.dao.ventas.EnP1mDocumentoClienteDao;
import org.epis.minierp.model.EnP1mCliente;
import org.epis.minierp.model.EnP1mDocumentoCliente;
import org.epis.minierp.model.EnP1mDocumentoClienteId;
import org.epis.minierp.model.TaGzzTipoDocCliente;


public class DocumentoClienteController extends HttpServlet {

    

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EnP1mDocumentoClienteDao docCliDAO = new EnP1mDocumentoClienteDao();
        List <EnP1mDocumentoCliente> docClientes = docCliDAO.getAllActive();
        EnP1mClienteDao clienteDAO = new EnP1mClienteDao();
        List<EnP1mCliente> cliente = clienteDAO.getAllActive();
        TaGzzTipoDocClienteDao tipDocCliDAO = new TaGzzTipoDocClienteDao();
        List <TaGzzTipoDocCliente> tipDocCli = tipDocCliDAO.getAllActive();
        request.setAttribute("docClientes", docClientes);
        request.setAttribute("cliente", cliente);
        request.setAttribute("tipDocCli", tipDocCli);
        request.getRequestDispatcher("/WEB-INF/configuracion/documentoCliente.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String action = request.getParameter("accion");
        
        EnP1mDocumentoClienteDao documento = new EnP1mDocumentoClienteDao();
        EnP1mDocumentoCliente dc = new EnP1mDocumentoCliente();
        
        TaGzzTipoDocClienteDao tipoDCDAO = new TaGzzTipoDocClienteDao();
        TaGzzTipoDocCliente tipoDC;
        
        EnP1mDocumentoClienteId docId = new EnP1mDocumentoClienteId();
        
        EnP1mClienteDao cliDAO = new EnP1mClienteDao();
        EnP1mCliente cli;
        
        switch(action) {
            case "create":
                
                String cliCod = request.getParameter("cliCod");
                int tipDocCliCod = Integer.parseInt(request.getParameter("tipDocCliCod"));
                String docCliNum = request.getParameter("docCliNum");
                
                //docID
                docId.setCliCod(cliCod);
                docId.setTipDocCliCod(tipDocCliCod);
                dc.setId(docId);
                
                //cliente
                cli = cliDAO.getById(cliCod);
                dc.setEnP1mCliente(cli);
                
                //tipoDC
                tipoDC = tipoDCDAO.getById(tipDocCliCod);
                dc.setTaGzzTipoDocCliente(tipoDC);
                
                //nuevo Doc Cli
                dc.setDocCliNum(docCliNum);
                
                dc.setEstRegCod('A');
                documento.save(dc);
                break;
            case "update":
                String updateCliCod = request.getParameter("cliCod");
                int updateTipDocCliCod = Integer.parseInt(request.getParameter("tipDocCliCod"));
                String updateDocCliNum = request.getParameter("docCliNum");
                //docID
                docId.setCliCod(updateCliCod);
                docId.setTipDocCliCod(updateTipDocCliCod);
                dc.setId(docId);
                
                dc.setDocCliNum(updateDocCliNum);
                
                dc.setEstRegCod('A');
                documento.update(dc);
                break;
            case "delete":
                String deleteCliCod = request.getParameter("cliCod");
                int deleteTipDocCliCod = Integer.parseInt(request.getParameter("tipDocCliCod"));
                String deleteDocCliNum = request.getParameter("docCliNum");
                
                //docID
                docId.setCliCod(deleteCliCod);
                docId.setTipDocCliCod(deleteTipDocCliCod);
                dc.setId(docId);
                
                //doc Num
                dc.setDocCliNum(deleteDocCliNum);
                
                dc.setEstRegCod('*');
                documento.delete(dc);
        }
        
        response.sendRedirect(request.getContextPath() + "/secured/configuracion/documentoCliente");
    }

}
