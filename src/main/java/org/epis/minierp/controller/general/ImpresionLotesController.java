package org.epis.minierp.controller.general;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.business.general.Impresora;

public class ImpresionLotesController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {       
        request.getRequestDispatcher("/WEB-INF/ventas/factura.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String[] codigos = request.getParameterValues("codigos");
        String report = request.getParameter("report");

        String path = getServletContext().getRealPath("/WEB-INF/");
        path = path + "ventas/factura";
        Impresora generador = new Impresora(path);

        String fileGenerated = "";

        switch(report){
            case "factura": 
                fileGenerated = generador.generateFacturas(codigos);
                break;
            case "boleta":
                fileGenerated = generador.generateBoletas(codigos);
                break;
            case "guiaRemision":
                fileGenerated =  generador.generateGuiaRemision(codigos);
                break;
        }
        File file = new File(fileGenerated);
        response.addHeader("Content-Disposition", "attachment; filename=" + file.getName());
        response.setContentLength((int) file.length());
        //response.setContentType("text/plain; charset=utf-8");
        //response.setCharacterEncoding("utf-8");
        FileInputStream fileInputStream = new FileInputStream(file);
        OutputStream responseOutputStream = response.getOutputStream();
        int bytes;
        while ((bytes = fileInputStream.read()) != -1) {
            responseOutputStream.write(bytes);
        }
    }
}