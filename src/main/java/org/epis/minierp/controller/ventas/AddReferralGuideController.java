package org.epis.minierp.controller.ventas;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.general.EnP1mEmpresaDao;
import org.epis.minierp.dao.general.TaGzzMotivoTrasladoDao;
import org.epis.minierp.dao.general.TaGzzTipoDestinatarioDao;
import org.epis.minierp.dao.ventas.EnP1mFacturaVentaCabDao;
import org.epis.minierp.dao.ventas.EnP2mGuiaRemRemitenteDao;
import org.epis.minierp.model.EnP1mFacturaVentaCab;
import org.epis.minierp.model.EnP2mGuiaRemRemitente;

public class AddReferralGuideController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String guiRemEmpDes = request.getParameter("guiRemEmpDes");
        String guiRemFacCod = request.getParameter("guiRemFacCod");
        int facVebCabCod = Integer.parseInt(request.getParameter("facVenCabCod"));
        String guiRemRemNum = request.getParameter("guiRemRemNum");
        String guiRemRemDen = request.getParameter("guiRemRemDen");
        int guiRemMotTra = Integer.parseInt(request.getParameter("guiRemMotTra"));
        int guiRemTipDes = Integer.parseInt(request.getParameter("guiRemTipDes"));
        String guiRemRemDes = request.getParameter("guiRemRemDes");
        
        EnP2mGuiaRemRemitenteDao guide = new EnP2mGuiaRemRemitenteDao();
        EnP2mGuiaRemRemitente referralGuide = new EnP2mGuiaRemRemitente();
        
        referralGuide.setGuiRemRemNum(guiRemRemNum);
        referralGuide.setEnP1mEmpresa((new EnP1mEmpresaDao()).getByDes(guiRemEmpDes));
        referralGuide.setGuiRemRemDen(guiRemRemDen);
        referralGuide.setTaGzzMotivoTraslado((new TaGzzMotivoTrasladoDao()).getById(guiRemMotTra));
        referralGuide.setTaGzzTipoDestinatario((new TaGzzTipoDestinatarioDao()).getById(guiRemTipDes));
        referralGuide.setGuiRemRemDes(guiRemRemDes);
        referralGuide.setEstRegCod('A');
        
        guide.save(referralGuide);
        
        EnP1mFacturaVentaCabDao billDao = new EnP1mFacturaVentaCabDao();
        EnP1mFacturaVentaCab bill = billDao.getById(facVebCabCod);
        bill.setEnP2mGuiaRemRemitente(referralGuide);
        billDao.update(bill);
        
        response.sendRedirect(request.getContextPath() + "/secured/ventas/factura");
    }
}
