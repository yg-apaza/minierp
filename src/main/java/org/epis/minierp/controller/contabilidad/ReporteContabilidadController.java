package org.epis.minierp.controller.contabilidad;

import java.io.File;
import java.io.FileInputStream;
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
        
        switch(fileType)
        {
            case "pdf":
                response.setContentType("application/pdf");
                break;
            case "xls":
                response.setContentType("application/vnd.ms-excel");
                break;
        }
        
        String path = "";
        String fileGenerated = "";
        
        switch(report)
        {
            case "plancontable":
                path = ReporteContabilidad.class.getClassLoader().getResource("org/epis/minierp/reporte/contabilidad/planContable.jrxml").getPath();
                fileGenerated = generador.report(path, "PlanContable_", fileType);
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