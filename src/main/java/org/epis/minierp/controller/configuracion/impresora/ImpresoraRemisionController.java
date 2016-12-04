package org.epis.minierp.controller.configuracion.impresora;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.model.impresora.RemisionPrinter;
import org.epis.minierp.dao.impresora.RemisionDAO;

public class ImpresoraRemisionController extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = getServletContext().getRealPath("/WEB-INF/");
        path = path + "configuracion/impresora";
        
        RemisionDAO remDAO = new RemisionDAO(path);
        RemisionPrinter rPrinter = remDAO.read();
        request.setAttribute("rem", rPrinter);
        
        request.getRequestDispatcher("/WEB-INF/configuracion/impresora/remision.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = getServletContext().getRealPath("/WEB-INF/");
        path = path + "configuracion/impresora";
        RemisionDAO remDAO = new RemisionDAO(path);
        RemisionPrinter rPrinter = remDAO.read();
        
        /* int size = Int.parseInteger(request.getParameter("size")); */
        String name = request.getParameter("name");
        float leftMargin = Float.parseFloat(request.getParameter("leftMargin"));
        float topMargin = Float.parseFloat(request.getParameter("topMargin"));
        float botMargin = Float.parseFloat(request.getParameter("botMargin"));
        float topRemCab = Float.parseFloat(request.getParameter("topRemCab"));
        float topRemDet = Float.parseFloat(request.getParameter("topRemDet"));
        int maxProducts = Integer.parseInt(request.getParameter("maxProducts"));

        float totalMargin = Float.parseFloat(request.getParameter("totalMargin"));
        
        float cliNom = Float.parseFloat(request.getParameter("cliNom"));
        float punPar = Float.parseFloat(request.getParameter("punPar"));
        float punLle = Float.parseFloat(request.getParameter("punLle"));
        float traNom = Float.parseFloat(request.getParameter("traNom"));
        
        float fecVen = Float.parseFloat(request.getParameter("fecVen"));
        float ven = Float.parseFloat(request.getParameter("ven"));
        float zon = Float.parseFloat(request.getParameter("zon"));
        float con = Float.parseFloat(request.getParameter("con"));
        float cliCod = Float.parseFloat(request.getParameter("cliCod"));
        float oc = Float.parseFloat(request.getParameter("oc"));
        float facNum = Float.parseFloat(request.getParameter("facNum"));
        float hora = Float.parseFloat(request.getParameter("hora"));
        float numInt = Float.parseFloat(request.getParameter("numInt"));
        
        float proCod = Float.parseFloat(request.getParameter("proCod"));
        float proCan = Float.parseFloat(request.getParameter("proCan"));
        float proUni = Float.parseFloat(request.getParameter("proUni"));
        float proDes = Float.parseFloat(request.getParameter("proDes"));
        float proValUni = Float.parseFloat(request.getParameter("proValUni"));
        float proDes1 = Float.parseFloat(request.getParameter("proDes1"));
        float proValNet = Float.parseFloat(request.getParameter("proValNet"));
        
        rPrinter.setName(name);
        rPrinter.setCliNom(cliNom);
        rPrinter.setPunPar(punPar);
        rPrinter.setPunLle(punLle);
        rPrinter.setTraNom(traNom);
        
        rPrinter.setFecVen(fecVen);
        rPrinter.setVen(ven);
        rPrinter.setZon(zon);
        rPrinter.setCon(con);
        rPrinter.setCliCod(cliCod);
        rPrinter.setOc(oc);
        rPrinter.setFacNum(facNum);
        rPrinter.setHora(hora);
        rPrinter.setNumInt(numInt);
        
        rPrinter.setProCod(proCod);
        rPrinter.setProCan(proCan);
        rPrinter.setProUni(proUni);
        rPrinter.setProDes(proDes);
        rPrinter.setProValUni(proValUni);
        rPrinter.setProDes1(proDes1);
        rPrinter.setProValNet(proValNet);

        rPrinter.setLeftMargin(leftMargin);
        rPrinter.setTopMargin(topMargin);
        rPrinter.setBotMargin(botMargin);
        rPrinter.setTopRemCab(topRemCab);
        rPrinter.setTopRemDet(topRemDet);
        
        rPrinter.setMaxProducts(maxProducts);
        rPrinter.setTotalMargin(totalMargin);
        remDAO.save(rPrinter);
        
        response.sendRedirect(request.getContextPath() + "/secured/ventas/factura");    
        
    }

}
