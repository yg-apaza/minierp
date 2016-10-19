package org.epis.minierp.controller.ventas;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.general.EnP1mEmpresaDao;
import org.epis.minierp.dao.ventas.EnP1mFacturaVentaCabDao;
import org.epis.minierp.model.EnP1mEmpresa;
import org.epis.minierp.model.EnP1mFacturaVentaCab;

public class ImprimirController extends HttpServlet
{	
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EnP1mFacturaVentaCabDao facCabDao = new EnP1mFacturaVentaCabDao();
        EnP1mEmpresaDao empDao = new EnP1mEmpresaDao();
        
        EnP1mFacturaVentaCab factura = facCabDao.getById(request.getParameter("facCod"));
        EnP1mEmpresa empresa = empDao.getAll().get(0);

        request.setAttribute("factura", factura);
        request.setAttribute("empresa", empresa);

        request.getRequestDispatcher("/WEB-INF/ventas/factura/imprimir.jsp").forward(request, response);
    }
}