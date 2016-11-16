package org.epis.minierp.dao.impresora;

import java.io.File;
import org.epis.minierp.business.impresora.FacturaPrinter;
import org.epis.minierp.business.impresora.XMLReader;

public class FacturaDAO {
    private XMLReader<FacturaPrinter> xmlFactura;
    private FacturaPrinter printer;
    
    public FacturaDAO(String file) {
        xmlFactura = new XMLReader(FacturaPrinter.class, new File(file));
    }
    
    public FacturaPrinter read(){
        printer = xmlFactura.openXML("factura");
        return printer;
    }
    
    public void save(FacturaPrinter factura){
        xmlFactura.writeXML("factura", factura);
    }
}
