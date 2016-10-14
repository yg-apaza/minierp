package org.epis.minierp.controller.general;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.general.Reporte;

public class ReporteController  extends HttpServlet
{
    private static final long serialVersionUID = 1L;
    private static final String VENTAS = "Ventas";
    private static final String CONTABILIDAD = "Contabilidad";
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fileType = request.getParameter("type");
        String report = request.getParameter("report");

        Reporte generador = new Reporte();
        
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
            case "plancontable":
                path = Reporte.class.getClassLoader().getResource("org/epis/minierp/reporte/contabilidad/planContable.jrxml").getPath();
                fileGenerated = generador.report(path, "PlanContable_", fileType, CONTABILIDAD);
                break;
            case "cuentabancaria":
                path = Reporte.class.getClassLoader().getResource("org/epis/minierp/reporte/contabilidad/cuentaBancaria.jrxml").getPath();
                fileGenerated = generador.report(path, "CuentaBancaria_", fileType, CONTABILIDAD);
                break;
            case "registroventas":
                path = Reporte.class.getClassLoader().getResource("org/epis/minierp/reporte/ventas/registroVentas.jrxml").getPath();
                fileGenerated = generador.report(path, "RegistroDeVentas_", fileType, VENTAS);
                break;
            case "clientes":
                path = Reporte.class.getClassLoader().getResource("org/epis/minierp/reporte/ventas/clientes.jrxml").getPath();
                fileGenerated = generador.report(path, "Clientes_", fileType, VENTAS);
                break;
            case "puntodeventas":
                path = Reporte.class.getClassLoader().getResource("org/epis/minierp/reporte/ventas/puntoVentas.jrxml").getPath();
                fileGenerated = generador.report(path, "PuntoDeVentas_", fileType, VENTAS);
                break;
        }
        
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