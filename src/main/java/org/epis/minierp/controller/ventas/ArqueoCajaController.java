package org.epis.minierp.controller.ventas;

import java.io.IOException;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.general.EnP1mUsuarioDao;
import org.epis.minierp.dao.ventas.EnP1mFacturaVentaCabDao;
import org.epis.minierp.util.DateUtil;

public class ArqueoCajaController extends HttpServlet {
    
    private static final long serialVersionUID = 1L;
    EnP1mFacturaVentaCabDao facVenCabDao;
    EnP1mUsuarioDao usuDao;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        usuDao = new EnP1mUsuarioDao();

        Date fecIni = DateUtil.getthisDate();
        Date fecFin = DateUtil.addDays(fecIni, 1);
        
        request.setAttribute("usuarios", usuDao.getAllActive());
        request.setAttribute("fecIni", DateUtil.getString2Date(fecIni));
        request.setAttribute("fecFin", DateUtil.getString2Date(fecFin));
        request.setAttribute("consulta", null);

        request.getRequestDispatcher("/WEB-INF/ventas/arqueo/arqueo.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        facVenCabDao = new EnP1mFacturaVentaCabDao();
        usuDao = new EnP1mUsuarioDao();
      
        String usuCod = request.getParameter("usuCod");
        Date fecIni = DateUtil.getDate2String(request.getParameter("fecIni"));
        Date fecFin = DateUtil.getDate2String(request.getParameter("fecFin"));
        List consulta = facVenCabDao.ingresos4Usuario(usuCod, fecIni, fecFin);
        
        request.setAttribute("usuarios", usuDao.getAllActive());
        request.setAttribute("fecIni", DateUtil.getString2Date(fecIni));
        request.setAttribute("fecFin", DateUtil.getString2Date(fecFin));
        request.setAttribute("consulta", consulta);
        
        request.getRequestDispatcher("/WEB-INF/ventas/arqueo/arqueo.jsp").forward(request, response);
        //response.sendRedirect(request.getContextPath() + "/secured/ventas/arqueoCaja");
    }
}