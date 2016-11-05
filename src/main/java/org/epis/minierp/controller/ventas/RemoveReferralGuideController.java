package org.epis.minierp.controller.ventas;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.logistica.EnP2mGuiaRemRemitenteDao;
import org.epis.minierp.dao.ventas.EnP1mFacturaVentaCabDao;
import org.epis.minierp.model.EnP1mFacturaVentaCab;
import org.epis.minierp.model.EnP2mGuiaRemRemitente;

public class RemoveReferralGuideController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String facVenCabCod = request.getParameter("facVenCabCod");
        EnP1mFacturaVentaCabDao billDao = new EnP1mFacturaVentaCabDao();
        EnP1mFacturaVentaCab bill = billDao.getById(facVenCabCod);
        
        EnP2mGuiaRemRemitenteDao guide = new EnP2mGuiaRemRemitenteDao();
        
        EnP2mGuiaRemRemitente referralGuide = bill.getEnP2mGuiaRemRemitente();
        referralGuide.setEstRegCod('I');        
        guide.update(referralGuide);
        
        bill.setEnP2mGuiaRemRemitente(null);
        billDao.update(bill);
    }
}
