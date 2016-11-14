package org.epis.minierp.dao.impresora;

import java.io.File;
import org.epis.minierp.business.general.RemisionPrinter;
import org.epis.minierp.business.general.XMLReader;

public class RemisionDAO {
    private XMLReader<RemisionPrinter> xmlFactura;
    private RemisionPrinter printer;
    
    public RemisionDAO(String file) {
        xmlFactura = new XMLReader(RemisionPrinter.class, new File(file));
    }
    
    public RemisionPrinter read(){
        printer = xmlFactura.openXML("remision");
        return printer;
    }
}
