package org.epis.minierp.controller.ventas;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.business.ventas.EnP1mPagosCuotasBusiness;
import org.epis.minierp.dao.ventas.EnP1mPagosCuotasCabDao;
import org.epis.minierp.dao.ventas.EnP1tPagosCuotasDetDao;
import org.epis.minierp.model.EnP1mPagosCuotasCab;

public class PagosController extends HttpServlet {
        private static final long serialVersionUID = 1L;
        EnP1mPagosCuotasCabDao pagosCuotasCabDao;
        EnP1tPagosCuotasDetDao pagosCuotasDetDao;
        EnP1mPagosCuotasBusiness pagosCuotasBusiness;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        pagosCuotasCabDao = new EnP1mPagosCuotasCabDao();
        pagosCuotasDetDao = new EnP1tPagosCuotasDetDao();
        
        request.setAttribute("cabeceraPagos", pagosCuotasCabDao.getAll());
        request.setAttribute("detallesPagos", pagosCuotasDetDao.getAllOrdered());
        request.setAttribute("inactivos", pagosCuotasCabDao.getAllInactives());
        request.getRequestDispatcher("/WEB-INF/ventas/pagos/pagos.jsp").forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("accion");
        pagosCuotasBusiness = new EnP1mPagosCuotasBusiness();
        pagosCuotasCabDao = new EnP1mPagosCuotasCabDao();
        pagosCuotasDetDao = new EnP1tPagosCuotasDetDao();
        
        if(action!=null){
        switch(action) {
            case "addPago":
                String facVenCabCod = request.getParameter("facVenCabCod"); 
                double montoPagado = Double.parseDouble(request.getParameter("pagCuoTotPag"));
                pagosCuotasBusiness.update4pagos(facVenCabCod, montoPagado);
                response.sendRedirect(request.getContextPath() + "/secured/ventas/pagos");
                break;
            
            case "filter":
                String filter = request.getParameter("facVenCabCod");
                request.setAttribute("cabeceraPagos", pagosCuotasCabDao.getFiltered(filter));
                request.setAttribute("detallesPagos", pagosCuotasDetDao.getAllOrderedFiltered(filter));
                request.setAttribute("inactivos", pagosCuotasCabDao.getAllInactives());
                request.getRequestDispatcher("/WEB-INF/ventas/pagos/pagos.jsp").forward(request, response);
                break;
            
            case "all":
                request.setAttribute("cabeceraPagos", pagosCuotasCabDao.getAllActive());
                request.setAttribute("detallesPagos", pagosCuotasDetDao.getAllOrdered());
                request.setAttribute("inactivos", pagosCuotasCabDao.getAllInactives());
                request.getRequestDispatcher("/WEB-INF/ventas/pagos/pagos.jsp").forward(request, response);
                break;
            }
        }else{
            if(request.getParameter("buscarFactura")!=null){
                    EnP1mPagosCuotasCab p=pagosCuotasCabDao.getById(request.getParameter("CodCabFac"));
                    List<EnP1mPagosCuotasCab> cabeceraPagos=new ArrayList<EnP1mPagosCuotasCab>();
                    cabeceraPagos.add(p);
                    request.setAttribute("cabeceraPagos",cabeceraPagos);
                    request.getRequestDispatcher("/WEB-INF/ventas/pagos/pagos.jsp").forward(request, response);
                }else if(request.getParameter("todos")!=null){
                    List<EnP1mPagosCuotasCab> cabeceraPagos=pagosCuotasCabDao.getAll();
                    request.setAttribute("cabeceraPagos",cabeceraPagos);
                    request.getRequestDispatcher("/WEB-INF/ventas/pagos/pagos.jsp").forward(request, response);
                }
        }
        
        
    }
}
