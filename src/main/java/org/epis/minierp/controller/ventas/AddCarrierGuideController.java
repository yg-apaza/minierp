package org.epis.minierp.controller.ventas;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.general.EnP1mEmpresaDao;
import org.epis.minierp.dao.general.EnP2mUnidadTransporteDao;
import org.epis.minierp.dao.general.TaGzzTipoDestinatarioDao;
import org.epis.minierp.dao.logistica.EnP2mGuiaRemTransportistaDao;
import org.epis.minierp.dao.logistica.EnP2mTransportistaDao;
import org.epis.minierp.dao.ventas.EnP1mCatalogoRutaDao;
import org.epis.minierp.dao.ventas.EnP1mFacturaVentaCabDao;
import org.epis.minierp.model.EnP1mFacturaVentaCab;
import org.epis.minierp.model.EnP2mGuiaRemTransportista;

public class AddCarrierGuideController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String guiTraEmpDes = request.getParameter("guiTraEmpDes");
        String guiTraFacCod = request.getParameter("guiTraFacCod");
        String guiTraTraNum = request.getParameter("guiTraTraNum");
        String guiTraTraDen = request.getParameter("guiTraTraDen");
        String guiTraNumReg = request.getParameter("guiTraNumReg");
        String guiTraTraDat = request.getParameter("guiTraTraDat");
        String guiTraNumPla = request.getParameter("guiTraNumPla");
        int guiTraRutDes = Integer.parseInt(request.getParameter("guiTraRutDes"));
        int guiTraTipDes = Integer.parseInt(request.getParameter("guiTraTipDes"));
        String guiTraTraDes = request.getParameter("guiTraTraDes");
        EnP2mGuiaRemTransportistaDao guide = new EnP2mGuiaRemTransportistaDao();
        EnP2mGuiaRemTransportista carrierGuide = new EnP2mGuiaRemTransportista();
        
        carrierGuide.setGuiRemTraNum(guiTraTraNum);
        carrierGuide.setGuiRemTraDen(guiTraTraDen);
        carrierGuide.setEnP2mTransportista((new EnP2mTransportistaDao()).getById(guiTraTraDat));
        carrierGuide.setEnP2mUnidadTransporte((new EnP2mUnidadTransporteDao()).getById(guiTraNumPla));
        carrierGuide.setEnP1mEmpresa((new EnP1mEmpresaDao()).getByDes(guiTraEmpDes));
        carrierGuide.setGuiRemTraNumReg(guiTraNumReg);
        carrierGuide.setTaGzzTipoDestinatario((new TaGzzTipoDestinatarioDao()).getById(guiTraTipDes));
        carrierGuide.setGuiRemTraDes(guiTraTraDes);
        carrierGuide.setEstRegCod('A');
        
        guide.save(carrierGuide);
        
        EnP1mFacturaVentaCabDao billDao = new EnP1mFacturaVentaCabDao();
        EnP1mFacturaVentaCab bill = billDao.getById(guiTraFacCod);
        bill.setEnP2mGuiaRemTransportista(carrierGuide);
        bill.setEnP1mCatalogoRuta((new EnP1mCatalogoRutaDao()).getById(guiTraRutDes));
        billDao.update(bill);
        
        response.sendRedirect(request.getContextPath() + "/secured/ventas/factura");
    }
}
