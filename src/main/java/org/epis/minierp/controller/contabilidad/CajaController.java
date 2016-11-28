package org.epis.minierp.controller.contabilidad;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.contabilidad.CajaDAO;
import org.epis.minierp.dao.contabilidad.LibroDiarioDao;
import org.epis.minierp.dao.general.EnP1mEmpresaDao;
import org.epis.minierp.model.EnP3mLibroDiario;

public class CajaController extends HttpServlet{
    private static final long serialVersionUID = 1L;
    String fecha_filtro = "";
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CajaDAO cajaDAO = new CajaDAO();
        EnP1mEmpresaDao empDao = new EnP1mEmpresaDao();
        EnP3mLibroDiario libros = null;
        
        if(fecha_filtro.isEmpty()){
            request.setAttribute("operaciones",cajaDAO.getCaja());
            request.setAttribute("totales", cajaDAO.getTotal());
        }else{
            request.setAttribute("operaciones",cajaDAO.getCaja(fecha_filtro));
            request.setAttribute("totales", cajaDAO.getTotal(fecha_filtro));
        }
        try{libros = (new LibroDiarioDao()).getAll().get(0);}catch(Exception e){}
        request.setAttribute("libros",libros);
        request.setAttribute("empresa", empDao.getAll().get(0));
        
        request.setAttribute("fecha_Filtro", fecha_filtro);
        request.getRequestDispatcher("/WEB-INF/contabilidad/cajaBancos/caja.jsp").forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String fechFiltro = request.getParameter("fechFiltro");

            fecha_filtro = fechFiltro;
            response.sendRedirect(request.getContextPath() + "/secured/contabilidad/caja");
    }
}

