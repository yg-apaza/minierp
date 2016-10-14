package org.epis.minierp.controller.ventas;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.ventas.reporte.ReporteVentas;

public class ReporteVentasController  extends HttpServlet
{
    private static final long serialVersionUID = 1L;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fileType = request.getParameter("type");
        String report = request.getParameter("report");
        ReporteVentas generador = new ReporteVentas();
        
        switch(fileType)
        {
            case "pdf":
                response.setContentType("application/pdf");
                break;
            case "xls":
                response.setContentType("application/vnd.ms-excel");
                break;
            case "doc":
                response.setContentType("application/msword");
                break;
        }
        
        String path = "";
        String fileGenerated = "";
        
        switch(report)
        {
            case "registroventas":
                path = ReporteVentas.class.getClassLoader().getResource("org/epis/minierp/reporte/ventas/registroVentas.jrxml").getPath();
                fileGenerated = generador.report(path, "RegistroDeVentas_", fileType);
                break;
            case "clientes":
                path = ReporteVentas.class.getClassLoader().getResource("org/epis/minierp/reporte/ventas/clientes.jrxml").getPath();
                fileGenerated = generador.report(path, "Clientes_", fileType);
                break;
            case "puntodeventas":
                path = ReporteVentas.class.getClassLoader().getResource("org/epis/minierp/reporte/ventas/puntoVentas.jrxml").getPath();
                fileGenerated = generador.report(path, "PuntoDeVentas_", fileType);
                break;
        }
        System.out.println("fileGenerated");
        File file = new File(fileGenerated);
        response.addHeader("Content-Disposition", "attachment; filename=" + file.getName());
        response.setContentLength((int) file.length());
        FileInputStream fileInputStream = new FileInputStream(file);
        OutputStream responseOutputStream = response.getOutputStream();
        int bytes;
        while ((bytes = fileInputStream.read()) != -1)
            responseOutputStream.write(bytes);
    }
}
