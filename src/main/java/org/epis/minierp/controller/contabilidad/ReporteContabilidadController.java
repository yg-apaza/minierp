package org.epis.minierp.controller.contabilidad;

import java.io.ByteArrayInputStream;
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
        
        switch(report)
        {
            case "plancontable":                
                String path = ReporteContabilidad.class.getClassLoader().getResource("org/epis/minierp/reporte/contabilidad/planContable.jrxml").getPath();
                String fileGenerated = generador.report(path, "PlanContable_");
		File pdfFile = new File(fileGenerated);

		response.setContentType("application/pdf");
		response.addHeader("Content-Disposition", "attachment; filename=" + fileGenerated);
		response.setContentLength((int) pdfFile.length());

		FileInputStream fileInputStream = new FileInputStream(pdfFile);
		OutputStream responseOutputStream = response.getOutputStream();
		int bytes;
		while ((bytes = fileInputStream.read()) != -1) {
                    responseOutputStream.write(bytes);
                }
                break;
        }
        //response.sendRedirect(request.getContextPath() + "/secured/contabilidad");
    }
}