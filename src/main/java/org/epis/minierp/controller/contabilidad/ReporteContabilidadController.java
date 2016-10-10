package org.epis.minierp.controller.contabilidad;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.OutputStream;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.contabilidad.reporte.ReporteContabilidad;

public class ReporteContabilidadController  extends HttpServlet
{
    private static final long serialVersionUID = 1L;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fileType = request.getParameter("type");
        String report = request.getParameter("report");
        ReporteContabilidad generador = new ReporteContabilidad();
        
        switch(report)
        {
            case "plancontable":
                System.out.println("Generando reporte ...");
                
                String path = ReporteContabilidad.class.getClassLoader().getResource("org/epis/minierp/reporte/contabilidad/planContable.jrxml").getPath();
                System.out.println("Path: " + path);
                generador.report(path, "PlanContable_");
                /*
                String string = "Servlet Technology";
                int size = string.length();
                byte[] bite = string.getBytes();
                byte[] data = new byte[size]; // allocate byte array of right size
                ByteArrayInputStream byteStream = new ByteArrayInputStream(bite);
                int in = byteStream.read( data, 0, size ); // read into byte array

                byteStream.close();
                response.setContentType("application/pdf");

                response.setHeader("Content-Disposition","inline; filename=architect.pdf");
                response.setHeader("Cache-Control", "no-cache");
                response.setDateHeader("Expires", 0);
                response.setHeader("Pragma", "No-cache"); 

                OutputStream OutStream = response.getOutputStream();
                OutStream.write(data);
                OutStream.flush();
                OutStream.close();
                */
                break;
        }
        response.sendRedirect(request.getContextPath() + "/secured/contabilidad");
    }
}