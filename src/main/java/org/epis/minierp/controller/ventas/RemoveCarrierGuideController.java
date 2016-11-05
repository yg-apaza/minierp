package org.epis.minierp.controller.ventas;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.logistica.EnP2mGuiaRemTransportistaDao;
import org.epis.minierp.dao.ventas.EnP1mFacturaVentaCabDao;
import org.epis.minierp.model.EnP1mFacturaVentaCab;
import org.epis.minierp.model.EnP2mGuiaRemTransportista;

public class RemoveCarrierGuideController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String facVenCabCod = request.getParameter("facVenCabCod");
        EnP1mFacturaVentaCabDao billDao = new EnP1mFacturaVentaCabDao();
        EnP1mFacturaVentaCab bill = billDao.getById(facVenCabCod);
        
        EnP2mGuiaRemTransportistaDao guide = new EnP2mGuiaRemTransportistaDao();
        
        EnP2mGuiaRemTransportista carrierGuide = bill.getEnP2mGuiaRemTransportista();
        carrierGuide.setEstRegCod('I');        
        guide.update(carrierGuide);
        
        bill.setEnP2mGuiaRemTransportista(null);
        bill.setEnP1mCatalogoRuta(null);
        billDao.update(bill);
    }
}
