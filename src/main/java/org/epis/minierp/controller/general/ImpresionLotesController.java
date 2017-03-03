package org.epis.minierp.controller.general;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.business.impresora.Impresora;

public class ImpresionLotesController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {       
        request.getRequestDispatcher("/WEB-INF/ventas/factura.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String[] codigos = request.getParameterValues("codigos");
        int[] cods = new int[codigos.length];
        for (int i = 0;i < codigos.length ;i++) {
            cods[i] = Integer.parseInt(codigos[i]);
        }
        String report = request.getParameter("report");

        String path = getServletContext().getRealPath("/WEB-INF/");
        path = path + "configuracion/impresora";
        Impresora generador = new Impresora(path);

        String fileGenerated = "";
        String printerName = "";
        switch(report){
            case "factura": 
                fileGenerated = generador.generateFacturas(cods)[0];
                printerName = generador.generateFacturas(cods)[1];
                break;
            case "boleta":
                fileGenerated = generador.generateBoletas(cods)[0];
                printerName = generador.generateBoletas(cods)[1];
                break;  
            case "guiaRemision":
                fileGenerated =  generador.generateGuiaRemision(cods)[0];
                printerName = generador.generateGuiaRemision(cods)[1];
                break;
        }
        generador.sendToPrinter(new File(fileGenerated), printerName);
        response.sendRedirect(request.getContextPath() + "/secured/ventas/factura");

        /*response.addHeader("Content-Disposition", "attachment; filename=" + file.getName());
        response.setContentLength((int) file.length());
        //response.setContentType("text/plain; charset=utf-8");
        //response.setCharacterEncoding("utf-8");
        FileInputStream fileInputStream = new FileInputStream(file);
        OutputStream responseOutputStream = response.getOutputStream();
        int bytes;
        while ((bytes = fileInputStream.read()) != -1) {
            responseOutputStream.write(bytes);
        }*/
    }
}