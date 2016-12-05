package org.epis.minierp.controller.ventas;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.business.logistica.EnP2mGuiaRemRemitenteBusiness;
import org.epis.minierp.business.logistica.EnP2mGuiaRemTransportistaBusiness;
import org.epis.minierp.business.ventas.EnP1mFacturaVentaBusiness;
import org.epis.minierp.dao.general.EnP1mEmpresaDao;

public class GuiaRemTransportistaController extends HttpServlet {
    EnP1mEmpresaDao empDao;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        empDao = new EnP1mEmpresaDao();

        String[] codigos = request.getParameterValues("codigos");
        String guiRemTraNumIni = request.getParameter("guiTraLotTraNum");
        String traCod = request.getParameter("guiTraLotTraDat");
        String uniTraCod = request.getParameter("guiTraLotNumPla");
        int catRutCod = Integer.parseInt(request.getParameter("guiTraLotRutDes"));
        int motTraCod = Integer.parseInt(request.getParameter("motTraCod"));
        String cliCod = request.getParameter("guiTraMainCli");

        int maxNumDet4GuiRemTra = empDao.getById(01).getEmpNumDetGuiRemTra();

        EnP2mGuiaRemTransportistaBusiness guiaTBusiness = new EnP2mGuiaRemTransportistaBusiness();
        guiaTBusiness.create4Ventas(codigos, guiRemTraNumIni, traCod, uniTraCod, "", cliCod, 'A', maxNumDet4GuiRemTra);

        EnP1mFacturaVentaBusiness facturaVBusiness = new EnP1mFacturaVentaBusiness();
        EnP2mGuiaRemRemitenteBusiness guiaRBusiness = new EnP2mGuiaRemRemitenteBusiness();

        for (int i = 0; i < codigos.length; i++) {
            facturaVBusiness.setCatRutCod(codigos[i], catRutCod);
            guiaRBusiness.create4Ventas(codigos[i], codigos[i], motTraCod, cliCod, 'A');
        }

        response.sendRedirect(request.getContextPath() + "/secured/ventas/factura");
    }
}
