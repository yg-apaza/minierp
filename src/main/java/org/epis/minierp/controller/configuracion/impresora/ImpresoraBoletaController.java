package org.epis.minierp.controller.configuracion.impresora;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.model.impresora.BoletaPrinter;
import org.epis.minierp.dao.impresora.BoletaDAO;

public class ImpresoraBoletaController extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = getServletContext().getRealPath("/WEB-INF/");
        path = path + "configuracion/impresora";
        
        BoletaDAO b = new BoletaDAO(path);
        BoletaPrinter bP = b.read();
        request.setAttribute("bol", bP);
        
        request.getRequestDispatcher("/WEB-INF/configuracion/impresora/boleta.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = getServletContext().getRealPath("/WEB-INF/");
        path = path + "configuracion/impresora";
        BoletaDAO bolDAO = new BoletaDAO(path);
        BoletaPrinter bPrinter = bolDAO.read();
        
        /* int size = Int.parseInteger(request.getParameter("size")); */
        String name = request.getParameter("name");
        float leftMargin = Float.parseFloat(request.getParameter("leftMargin"));
        float topMargin = Float.parseFloat(request.getParameter("topMargin"));
        float botMargin = Float.parseFloat(request.getParameter("botMargin"));
        float topBolCab = Float.parseFloat(request.getParameter("topBolCab"));
        float topBolDet = Float.parseFloat(request.getParameter("topBolDet"));
        
        float totalMargin = Float.parseFloat(request.getParameter("totalMargin"));
        
        float cliNom = Float.parseFloat(request.getParameter("cliNom"));
        float cliDir = Float.parseFloat(request.getParameter("cliDir"));
        float fecEmi = Float.parseFloat(request.getParameter("fecEmi"));
        
        float cliCod = Float.parseFloat(request.getParameter("cliCod"));
        float conPag = Float.parseFloat(request.getParameter("conPag"));
        float fecVen = Float.parseFloat(request.getParameter("fecVen"));
        float venRut = Float.parseFloat(request.getParameter("venRut"));
        float pdv = Float.parseFloat(request.getParameter("pdv"));
        float obs = Float.parseFloat(request.getParameter("obs"));

        float proCod = Float.parseFloat(request.getParameter("proCod"));
        float proCan = Float.parseFloat(request.getParameter("proCan"));
        float proUni = Float.parseFloat(request.getParameter("proUni"));
        float proDes = Float.parseFloat(request.getParameter("proDes"));
        float proValVen = Float.parseFloat(request.getParameter("proValVen"));
        float proDes1 = Float.parseFloat(request.getParameter("proDes1"));
        float proPreNet = Float.parseFloat(request.getParameter("proPreNet"));
        
        bPrinter.setName(name);
        bPrinter.setCliNom(cliNom);
        bPrinter.setCliDir(cliDir);
        bPrinter.setFecEmi(fecEmi);
        
        bPrinter.setCliCod(cliCod);
        bPrinter.setConPag(conPag);
        bPrinter.setFecVen(fecVen);
        bPrinter.setVenRut(venRut);
        bPrinter.setPdv(pdv);
        bPrinter.setObs(obs);
        
        bPrinter.setProCod(proCod);
        bPrinter.setProCan(proCan);
        bPrinter.setProUni(proUni);
        bPrinter.setProDes(proDes);
        bPrinter.setProValVen(proValVen);
        bPrinter.setProDes1(proDes1);
        bPrinter.setProPreNet(proPreNet);

        bPrinter.setLeftMargin(leftMargin);
        bPrinter.setTopMargin(topMargin);
        bPrinter.setBotMargin(botMargin);
        bPrinter.setTopBolCab(topBolCab);
        bPrinter.setTopBolDet(topBolDet);
        bPrinter.setTotalMargin(totalMargin);
        bolDAO.save(bPrinter);
        
        response.sendRedirect(request.getContextPath() + "/secured/ventas/factura");    
    }
}
