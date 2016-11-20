package org.epis.minierp.dao.impresora;

import java.io.File;
import org.epis.minierp.model.impresora.BoletaPrinter;
import org.epis.minierp.business.impresora.XMLReader;

public class BoletaDAO {
    private XMLReader<BoletaPrinter> xmlBoleta;
    private BoletaPrinter printer;
    
    public BoletaDAO(String file) {
        xmlBoleta = new XMLReader(BoletaPrinter.class, new File(file));
    }
    
    public BoletaPrinter read(){
        printer = xmlBoleta.openXML("boleta");
        return printer;
    }
    
    public void save(BoletaPrinter boleta){
        xmlBoleta.writeXML("boleta", boleta);
    }
}
