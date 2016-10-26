package org.epis.minierp.controller.ventas;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.business.general.Reporte;

public class FacturaLotesController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {       
        request.getRequestDispatcher("/WEB-INF/ventas/factura.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String[] values = request.getParameterValues("facCodigos");
        String fileType = "pdf";
        String report = "factura";
        String key = "FAC_COD";
        Reporte generador = null;
        generador = new Reporte(key, values);
                
        String path = getServletContext().getRealPath("/WEB-INF/");
        String fileGenerated = "";

        switch (report) {
            case "factura":
                path = path + "reportes/ventas/factura_cab.jasper";
                fileGenerated = generador.report(path, "Facturas_");
                break;
        }
        File file = new File(fileGenerated);
        response.addHeader("Content-Disposition", "attachment; filename=" + file.getName());
        response.setContentLength((int) file.length());
        FileInputStream fileInputStream = new FileInputStream(file);
        OutputStream responseOutputStream = response.getOutputStream();
        int bytes;
        while ((bytes = fileInputStream.read()) != -1) {
            responseOutputStream.write(bytes);
        }
        //response.sendRedirect(request.getContextPath() + "/secured/ventas/factura");
    }
}