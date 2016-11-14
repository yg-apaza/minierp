package org.epis.minierp.dao.impresora;

import java.io.File;
import org.epis.minierp.business.general.BoletaPrinter;
import org.epis.minierp.business.general.XMLReader;

public class BoletaDAO {
    private XMLReader<BoletaPrinter> xmlFactura;
    private BoletaPrinter printer;
    
    public BoletaDAO(String file) {
        xmlFactura = new XMLReader(BoletaPrinter.class, new File(file));
    }
    
    public BoletaPrinter read(){
        printer = xmlFactura.openXML("boleta");
        return printer;
    }
}
