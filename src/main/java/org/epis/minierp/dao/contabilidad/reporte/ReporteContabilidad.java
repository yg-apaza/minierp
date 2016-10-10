package org.epis.minierp.dao.contabilidad.reporte;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JRExporterParameter;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.export.JRXlsExporter;
import net.sf.jasperreports.engine.export.ooxml.JRDocxExporter;
import net.sf.jasperreports.engine.query.JRHibernateQueryExecuterFactory;
import net.sf.jasperreports.export.Exporter;
import net.sf.jasperreports.export.SimpleExporterInput;
import net.sf.jasperreports.export.SimpleOutputStreamExporterOutput;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.Session;

public class ReporteContabilidad {
    
    private Session session;
    private Map<String, Object> param = new HashMap<String, Object>();
    private Date date = new Date();
    private SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd_HH-mm-ss");
        
    public ReporteContabilidad(){
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }
    
    public String report(String path, String fileName, String fileType) {
        param.put(JRHibernateQueryExecuterFactory.PARAMETER_HIBERNATE_SESSION, session);
        String file = fileName + sf.format(date.getTime());
        String fullPath = ReporteContabilidad.class.getClassLoader().getResource("org/epis/minierp/reporte/contabilidad/").getPath() + file;
        
        try {
            JasperReport jasperReport = JasperCompileManager.compileReport(path);
            JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, param);
            switch(fileType)
            {
                case "pdf":
                    JasperExportManager.exportReportToPdfFile(jasperPrint, fullPath + "." + fileType);
                    break;
                case "xls":
                    JRXlsExporter exporterXls = new JRXlsExporter();
                    exporterXls.setParameter(JRExporterParameter.JASPER_PRINT, jasperPrint);
                    exporterXls.setParameter(JRExporterParameter.OUTPUT_FILE_NAME, fullPath + "." + fileType);
                    exporterXls.exportReport();
                    break;
                case "doc":
                    Exporter exporterDoc = new JRDocxExporter();
                    exporterDoc.setExporterInput(new SimpleExporterInput(jasperPrint));
                    File docFile = new File(fullPath + "." + fileType);
                    exporterDoc.setExporterOutput(new SimpleOutputStreamExporterOutput(docFile));
                    System.out.println("Doc exportando ...........");
                    exporterDoc.exportReport();
                    break;
            }
        } catch (JRException ex) {
            Logger.getLogger(ReporteContabilidad.class.getName()).log(Level.SEVERE, null, ex);
        }
        return fullPath + "." + fileType;
    }
}
