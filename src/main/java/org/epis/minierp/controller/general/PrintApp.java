package org.epis.minierp.controller.general;

import java.awt.print.PrinterException;
import java.awt.print.PrinterJob;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.print.PrintService;
import javax.print.PrintServiceLookup;
import net.sf.jasperreports.engine.*;
import java.applet.*;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.sql.Connection;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import static java.util.Collections.list;
import java.util.Date;
import java.util.Map;
import net.sf.jasperreports.engine.export.JRPdfExporter;
import net.sf.jasperreports.engine.query.JRHibernateQueryExecuterFactory;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.Session;

public class PrintApp {

    private Session session;
    private Connection sessionc;
    private Map<String, Object> param = new HashMap<String, Object>();
    private Date date = new Date();
    private SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd_HH-mm-ss");
    String key, value;
    
    public PrintApp() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }
    
    public void print() {
        try {
            session = HibernateUtil.getSessionFactory().getCurrentSession();
            param.put(JRHibernateQueryExecuterFactory.PARAMETER_HIBERNATE_SESSION, session);
            String path= "D:/UNSA/2016/TI/Proyecto/minierp/src/main/webapp/WEB-INF/reportes/ventas/report1.jasper";

            JasperPrint jasperPrint = JasperFillManager.fillReport(path, param);
            
            String selectedPrinter = "foxit";
            PrinterJob printerJob = PrinterJob.getPrinterJob();
            PrintService[] services = PrintServiceLookup.lookupPrintServices(null, null);
            PrintService selectedService = null;
            if(services.length != 0 || services != null){
                for(PrintService service : services){
                    String existingPrinter = service.getName().toLowerCase();
                    if(existingPrinter.equals(selectedPrinter)){
                        selectedService = service;
                        break;
                    }
                }
                if(selectedService != null){
                    try {
                        printerJob.setPrintService(selectedService);
                        boolean printSucceed = JasperPrintManager.printReport(jasperPrint, false);
                    } catch (PrinterException ex) {
                        Logger.getLogger(PrintApp.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }
            }
        } catch (JRException ex) {
            Logger.getLogger(PrintApp.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public static void main(String args[]){
        PrintApp p = new PrintApp();
        p.print();
    }
    
    public void batch(){
        try {
            ArrayList jasperPrintList = new ArrayList();//[Your logic for creating the list]
            
            ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
            
            JRPdfExporter exporter = new JRPdfExporter();
            
            exporter.setParameter(JRExporterParameter.JASPER_PRINT_LIST, jasperPrintList);
            exporter.setParameter(JRExporterParameter.OUTPUT_STREAM, outputStream);
            
            exporter.exportReport();
             
            //inputStreamForStruts2 = new ByteArrayInputStream(outputStream.toByteArray());
        } catch (JRException ex) {
            Logger.getLogger(PrintApp.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void barCode(){
        ArrayList list = new ArrayList();
        String templateStr="temp";
        String barcode = "12345";
        String barcode1;
        
        if (templateStr != null) {
            try {
                for(int i=0;i<5;i++)
                {
                    if(i>=1){
                        barcode1=barcode+"_"+i;
                        param.put("Barcode",barcode1);
                    }
                    JasperPrint jasperPrint = JasperFillManager.fillReport(/*servletContext.getRealPath("/pages/reports/" + templateStr)*/"a", param, new JREmptyDataSource());
                    System.out.println("Jasper print done");
                    list.add(jasperPrint);
                    System.out.println("Jasper print added to list");
                }
                ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
                JRPdfExporter exporter = new JRPdfExporter();
                exporter.setParameter(JRExporterParameter.JASPER_PRINT_LIST, list);
                exporter.setParameter(JRExporterParameter.OUTPUT_STREAM, outputStream);
                exporter.exportReport();
            } catch (JRException ex) {
                Logger.getLogger(PrintApp.class.getName()).log(Level.SEVERE, null, ex);
            }
        } 
    }
}
