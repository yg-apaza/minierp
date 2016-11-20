package org.epis.minierp.dao.impresora;

import java.io.File;
import org.epis.minierp.model.impresora.RemisionPrinter;
import org.epis.minierp.business.impresora.XMLReader;

public class RemisionDAO {
    private XMLReader<RemisionPrinter> xmlRemision;
    private RemisionPrinter printer;
    
    public RemisionDAO(String file) {
        xmlRemision = new XMLReader(RemisionPrinter.class, new File(file));
    }
    
    public RemisionPrinter read(){
        printer = xmlRemision.openXML("remision");
        return printer;
    }
    
    public void save(RemisionPrinter remision){
        xmlRemision.writeXML("remision", remision);
    }
}
