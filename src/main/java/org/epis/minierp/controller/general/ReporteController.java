package org.epis.minierp.controller.general;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.business.general.Reporte;

public class ReporteController  extends HttpServlet
{
    private static final long serialVersionUID = 1L;
    private static final String VENTAS = "Ventas";
    private static final String COMPRAS = "Compras";
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
        
        String path = getServletContext().getRealPath("/WEB-INF/");
        String fileGenerated = "";
        
        switch(report)
        {
            //Reportes de Contabilidad
            case "plancontable":
                path=path+"reportes/contabilidad/planContable.jrxml";
                fileGenerated = generador.report(path, "PlanContable_", fileType);
                break;
            case "cuentabancaria":
                path=path+"reportes/contabilidad/cuentaBancaria.jrxml";
                fileGenerated = generador.report(path, "CuentaBancaria_", fileType);
                break;
            
            //Reportes de Ventas
            case "registroventas":
                 path=path+"reportes/ventas/registroVentas.jrxml";
                fileGenerated = generador.report(path, "RegistroDeVentas_", fileType);
                break;
            case "clientes":
                 path=path+"reportes/ventas/clientes.jrxml";
                fileGenerated = generador.report(path, "Clientes_", fileType);
                break;
            case "puntodeventas":
                 path=path+"reportes/ventas/puntoVentas.jrxml";
                fileGenerated = generador.report(path, "PuntoDeVentas_", fileType);
                break;
                
            //Reportes de Compras
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