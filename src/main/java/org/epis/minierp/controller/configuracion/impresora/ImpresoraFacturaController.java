package org.epis.minierp.controller.configuracion.impresora;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.business.general.FacturaPrinter;
import org.epis.minierp.dao.impresora.FacturaDAO;

public class ImpresoraFacturaController extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = getServletContext().getRealPath("/WEB-INF/");
        path = path + "configuracion/impresora";
        
        FacturaDAO f = new FacturaDAO(path);
        FacturaPrinter fP = f.read();
        request.setAttribute("fac", fP);
        
        request.getRequestDispatcher("/WEB-INF/configuracion/impresora/factura.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = getServletContext().getRealPath("/WEB-INF/");
        path = path + "configuracion/impresora";
        FacturaDAO facDAO = new FacturaDAO(path);
        FacturaPrinter fPrinter = facDAO.read();
        
        /* int size = Int.parseInteger(request.getParameter("size")); */
        
        int leftMargin = Integer.parseInt(request.getParameter("leftMargin"));
        float topMargin = Float.parseFloat(request.getParameter("topMargin"));
        float topFacCab = Float.parseFloat(request.getParameter("topFacCab"));
        float topFacDet = Float.parseFloat(request.getParameter("topFacDet"));
        
        float totalMargin = Float.parseFloat(request.getParameter("totalMargin"));
        
        float cliNom = Float.parseFloat(request.getParameter("cliNom"));
        float cliDir = Float.parseFloat(request.getParameter("cliDir"));
        float fecEmi = Float.parseFloat(request.getParameter("fecEmi"));
        
        float cliCod = Float.parseFloat(request.getParameter("cliCod"));
        float conPag = Float.parseFloat(request.getParameter("conPag"));
        float fecVen = Float.parseFloat(request.getParameter("fecVen"));
        float venZon = Float.parseFloat(request.getParameter("venZon"));
        float numSec = Float.parseFloat(request.getParameter("numSec"));
        float dis = Float.parseFloat(request.getParameter("dis"));
        float rut = Float.parseFloat(request.getParameter("rut"));
        float tra = Float.parseFloat(request.getParameter("tra"));
        
        float proCod = Float.parseFloat(request.getParameter("proCod"));
        float proCan = Float.parseFloat(request.getParameter("proCan"));
        float proUni = Float.parseFloat(request.getParameter("proUni"));
        float proDes = Float.parseFloat(request.getParameter("proDes"));
        float proValUni = Float.parseFloat(request.getParameter("proValUni"));
        float proDes1 = Float.parseFloat(request.getParameter("proDes1"));
        float proDes2 = Float.parseFloat(request.getParameter("proDes2"));
        float proValNet = Float.parseFloat(request.getParameter("proValNet"));
               
        fPrinter.setCliNom(cliNom);
        fPrinter.setCliDir(cliDir);
        fPrinter.setFecEmi(fecEmi);
        
        fPrinter.setCliCod(cliCod);
        fPrinter.setConPag(conPag);
        fPrinter.setFecVen(fecVen);
        fPrinter.setVenZon(venZon);
        fPrinter.setNumSec(numSec);
        fPrinter.setDis(dis);
        fPrinter.setRut(rut);
        fPrinter.setTra(tra);
        
        fPrinter.setProCod(proCod);
        fPrinter.setProCan(proCan);
        fPrinter.setProUni(proUni);
        fPrinter.setProDes(proDes);
        fPrinter.setProValUni(proValUni);
        fPrinter.setProDes1(proDes1);
        fPrinter.setProDes2(proDes2);
        fPrinter.setProValNet(proValNet);

        fPrinter.setLeftMargin(leftMargin);
        fPrinter.setTopMargin(topMargin);
        fPrinter.setTopFacCab(topFacCab);
        fPrinter.setTopFacDet(topFacDet);
        fPrinter.setTotalMargin(totalMargin);
        facDAO.save(fPrinter);
        
        response.sendRedirect(request.getContextPath() + "/secured/ventas/factura");    
    }
}
