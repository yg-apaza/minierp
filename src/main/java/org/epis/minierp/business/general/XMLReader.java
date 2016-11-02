package org.epis.minierp.business.general;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.xml.sax.SAXException;

public class XMLReader {

    HashMap <String, Float> hM;
    File f;
    Document doc;
    
    XMLReader(String file) {
        f = new File(file);
    }
    
    public HashMap getMap(){
        return hM;
    }
    
    public void readXML(){
        try {
            DocumentBuilderFactory docFactory = DocumentBuilderFactory
                    .newInstance();
            DocumentBuilder docBuilder = docFactory.newDocumentBuilder();
            Document doc = docBuilder.parse(f);
            switch(f.getName()){
                case "factura.xml":
                    openFactura();
                    break;
                case "boleta.xml":
                    openBoleta();
                    break;
                case "guiaRemision.xml":
                    openGuiaRem();
                    break;
            }
        } catch (SAXException | IOException | ParserConfigurationException ex) {
            Logger.getLogger(XMLReader.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void openFactura(){
        hM = new HashMap();
        hM.put("size", Float.parseFloat(doc.getElementsByTagName("size").item(0).getNodeValue()));
        hM.put("leftMargin", Float.parseFloat(doc.getElementsByTagName("leftMargin").item(0).getNodeValue()));
        hM.put("rightMargin", Float.parseFloat(doc.getElementsByTagName("rightMargin").item(0).getNodeValue()));
        hM.put("topMargin", Float.parseFloat(doc.getElementsByTagName("topMargin").item(0).getNodeValue())); 
        hM.put("totalMargin", Float.parseFloat(doc.getElementsByTagName("totalMargin").item(0).getNodeValue())); 
        
        hM.put("topFacCab", Float.parseFloat(doc.getElementsByTagName("topFacCab").item(0).getNodeValue())); 
        hM.put("topFacDet", Float.parseFloat(doc.getElementsByTagName("topFacDet").item(0).getNodeValue())); 
       
        hM.put("cliNom", Float.parseFloat(doc.getElementsByTagName("cliNom").item(0).getNodeValue())); 
        hM.put("cliDir", Float.parseFloat(doc.getElementsByTagName("cliDir").item(0).getNodeValue())); 
        hM.put("fecEmi", Float.parseFloat(doc.getElementsByTagName("fecEmi").item(0).getNodeValue())); 
    
        hM.put("cliCod", Float.parseFloat(doc.getElementsByTagName("cliCod").item(0).getNodeValue())); 
        hM.put("conPag", Float.parseFloat(doc.getElementsByTagName("conPag").item(0).getNodeValue())); 
        hM.put("fecVen", Float.parseFloat(doc.getElementsByTagName("fecVen").item(0).getNodeValue())); 
        hM.put("venZon", Float.parseFloat(doc.getElementsByTagName("venZon").item(0).getNodeValue())); 
        hM.put("numSec", Float.parseFloat(doc.getElementsByTagName("numSec").item(0).getNodeValue())); 
        hM.put("dis", Float.parseFloat(doc.getElementsByTagName("dis").item(0).getNodeValue())); 
        hM.put("rut", Float.parseFloat(doc.getElementsByTagName("rut").item(0).getNodeValue())); 
        hM.put("tra", Float.parseFloat(doc.getElementsByTagName("tra").item(0).getNodeValue())); 

        hM.put("proCod", Float.parseFloat(doc.getElementsByTagName("proCod").item(0).getNodeValue())); 
        hM.put("proCan", Float.parseFloat(doc.getElementsByTagName("proCan").item(0).getNodeValue())); 
        hM.put("proUni", Float.parseFloat(doc.getElementsByTagName("proUni").item(0).getNodeValue())); 
        hM.put("proDes", Float.parseFloat(doc.getElementsByTagName("proDes").item(0).getNodeValue())); 
        hM.put("proValUni", Float.parseFloat(doc.getElementsByTagName("proValUni").item(0).getNodeValue())); 
        hM.put("proDes1", Float.parseFloat(doc.getElementsByTagName("proDes1").item(0).getNodeValue())); 
        hM.put("proDes2", Float.parseFloat(doc.getElementsByTagName("proDes2").item(0).getNodeValue())); 
        hM.put("proValNet", Float.parseFloat(doc.getElementsByTagName("proValNet").item(0).getNodeValue())); 
    }
    
    public void openBoleta(){
        hM = new HashMap();
    }
    
    public void openGuiaRem(){
        hM = new HashMap();
    }
    
    public void saveXML(){
        try {
            Node startdate = doc.getElementsByTagName("startdate").item(0);
            
            String currentStartdate = startdate.getNodeValue();
            startdate.setTextContent(currentStartdate);

            TransformerFactory transformerFactory = TransformerFactory
                    .newInstance();
            Transformer transformer = transformerFactory.newTransformer();
            DOMSource source = new DOMSource(doc);
            StreamResult result = new StreamResult(f);
            transformer.transform(source, result);
        } catch (TransformerException ex) {
            Logger.getLogger(XMLReader.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}

