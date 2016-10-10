package org.epis.minierp.dao.contabilidad.reporte;

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
import net.sf.jasperreports.engine.query.JRHibernateQueryExecuterFactory;
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
                    JRXlsExporter exporter = new JRXlsExporter();
                    exporter.setParameter(JRExporterParameter.JASPER_PRINT, jasperPrint);
                    exporter.setParameter(JRExporterParameter.OUTPUT_FILE_NAME, fullPath + "." + fileType);
                    exporter.exportReport();
                    break;
            }
        } catch (JRException ex) {
            Logger.getLogger(ReporteContabilidad.class.getName()).log(Level.SEVERE, null, ex);
        }
        return fullPath + "." + fileType;
    }
}
