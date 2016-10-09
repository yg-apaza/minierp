package org.epis.minierp.dao.contabilidad.reporte;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
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
    
    public void report(String path, String fileName) {
        System.out.println("e.e");
        param.put(JRHibernateQueryExecuterFactory.PARAMETER_HIBERNATE_SESSION, session);
        String file = fileName +
                sf.format(date.getTime()) + ".pdf";
        try {
            JasperReport jasperReport = JasperCompileManager.compileReport(path);
            JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, param);
            JasperExportManager.exportReportToPdfFile(jasperPrint, file);
        } catch (JRException ex) {
            Logger.getLogger(ReporteContabilidad.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
