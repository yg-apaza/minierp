package org.epis.minierp.controller.ventas;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.epis.minierp.dao.ventas.EnP1mPagosCuotasCabDao;
import org.epis.minierp.dao.ventas.EnP1tPagosCuotasDetDao;
import org.epis.minierp.model.EnP1mPagosCuotasCab;
import org.epis.minierp.model.EnP1tPagosCuotasDet;
import org.epis.minierp.model.EnP1tPagosCuotasDetId;

public class AddPagoController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession misession= (HttpSession) request.getSession();
        String cod=misession.getAttribute("cod").toString();
        EnP1mPagosCuotasCabDao pagosDao=new EnP1mPagosCuotasCabDao();
        EnP1mPagosCuotasCab p=pagosDao.getById(cod);
        request.setAttribute("CodCabFac",p.getEnP1mFacturaVentaCab().getFacVenCabCod());
        request.setAttribute("deuTot",p.getPagCuoDeuTot());
        request.getRequestDispatcher("/WEB-INF/ventas/pagos/addPago.jsp").forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        EnP1tPagosCuotasDetDao pagosDao=new EnP1tPagosCuotasDetDao();
        EnP1tPagosCuotasDet det=new EnP1tPagosCuotasDet();                
        EnP1tPagosCuotasDetId t=new EnP1tPagosCuotasDetId();
        
        t.setFacVenCabCod(request.getParameter("CodCabFac"));
        t.setPagCuoDetCod(Integer.parseInt(request.getParameter("codPagCuo")));
        
        det.setId(t);        
        det.setPagCuoDetTotPag(Double.parseDouble(request.getParameter("monPagCuo")));
        pagosDao.save(det);
        
        EnP1mPagosCuotasCabDao cabDao=new EnP1mPagosCuotasCabDao();
        EnP1mPagosCuotasCab cab=cabDao.getById(request.getParameter("CodCabFac"));
        cab.setPagCuoNumPag(cab.getPagCuoNumPag()+1);
        cab.setPagCuoTotPag(cab.getPagCuoTotPag()+det.getPagCuoDetTotPag());
        cabDao.update(cab);
        response.sendRedirect(request.getContextPath() + "/secured/ventas/pagos");
    }
}
