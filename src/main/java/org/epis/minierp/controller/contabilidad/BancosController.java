package org.epis.minierp.controller.contabilidad;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.contabilidad.BancosDAO;
import org.epis.minierp.dao.contabilidad.LibroDiarioDao;
import org.epis.minierp.dao.general.EnP1mEmpresaDao;
import org.epis.minierp.model.EnP3mLibroDiario;

public class BancosController extends HttpServlet{
    private static final long serialVersionUID = 1L;
    String codigo_cuenta ="10411";
    String fecha_filtro = "";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BancosDAO bancosDAO = new BancosDAO();
        EnP1mEmpresaDao empDao = new EnP1mEmpresaDao();
        EnP3mLibroDiario libros = null;
        
        if(fecha_filtro.isEmpty()){
            request.setAttribute("operaciones",bancosDAO.getBancos(codigo_cuenta));
            request.setAttribute("totales", bancosDAO.getTotal(codigo_cuenta));
        }else{
            request.setAttribute("operaciones",bancosDAO.getBancos(codigo_cuenta,fecha_filtro));
            request.setAttribute("totales", bancosDAO.getTotal(codigo_cuenta,fecha_filtro));
        }
        
        try{libros = (new LibroDiarioDao()).getAll().get(0);}catch(Exception e){}
        request.setAttribute("libros",libros);
        request.setAttribute("cuenta", bancosDAO.getCuenta(codigo_cuenta));
        request.setAttribute("empresa", empDao.getAll().get(0));
        request.setAttribute("fecha_Filtro", fecha_filtro);
        request.getRequestDispatcher("/WEB-INF/contabilidad/cajaBancos/bancos.jsp").forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String codCue = request.getParameter("codCue");
            String fechFiltro = request.getParameter("fechFiltro");

            codigo_cuenta = codCue;
            fecha_filtro = fechFiltro;
            response.sendRedirect(request.getContextPath() + "/secured/contabilidad/bancos");
    }
}
