package org.epis.minierp.business.general;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

@SuppressWarnings("unused")
public class PrinterBusiness {

    private static final char ESC = 27; //escape
    private static final char AT = 64; //@
    private static final char TAB = 9; //horizontal tab
    private static final char LF = 10; //new line
    private static final char FF = 12; //form feed
    private static final char CR = 13; //carriage return
    private static final char BACKSLASH = 92;
    
    private static final char P = 80; //10cpi pitch
    private static final char g = 103; //15cpi pitch
     
    private static final char E = 69; //bold font on
    private static final char F = 70; //bold font off
    
    private static final char C = 4; //bold font on
    private static final char D = 5; //bold font off
     
    private static final char k = 107; //used for setting font
    
    private static final char J = 74; //used for advancing paper vertically
   
    private static final char l = 108; //used for setting left margin
    private static final char Q = 81; //used for setting right margin
    
    private static final char $ = 36; //used for absolute horizontal positioning

    private static boolean escp24pin = false; // boolean to indicate whether
    // the printer is a 24 pin esc/p2 epson

    private static int MAX_ADVANCE_9PIN = 216; 
    private static int MAX_ADVANCE_24PIN = 180;
    private static int MAX_UNITS = 127; 
    private static final float CM_PER_INCH = 2.54f;
    
    private FileWriter writer;
    private  XMLReader<FacturaPrinter> xmlFactura;
    private  XMLReader<BoletaPrinter> xmlBoleta;
    private  XMLReader<GuiaRemisionPrinter> xmlGuiaRemision;
    private FacturaPrinter fP;
    private BoletaPrinter bP;
    private GuiaRemisionPrinter gP;
    private String type;
    
    public PrinterBusiness(String file, String dir, String type) {
        try {
            writer = new FileWriter(file);
            this.type = type;
            xmlFactura = new XMLReader(FacturaPrinter.class, new File(dir));
            xmlBoleta = new XMLReader(BoletaPrinter.class, new File(dir));
            xmlGuiaRemision = new XMLReader(GuiaRemisionPrinter.class, new File(dir));
            switch(type){
                case "factura":
                    fP = xmlFactura.openXML(type);
                    break;
                case "boleta":
                    bP = xmlBoleta.openXML(type);
                    break;
                case "guiaRemision":
                    gP = xmlGuiaRemision.openXML(type);
                    break;
            }
            start();
        } catch (IOException ex) {
            Logger.getLogger(PrinterBusiness.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void initialize() throws IOException{
        writer.write(ESC);
        writer.write('C');
        writer.write(23);
    }

    public void start() throws IOException{
        initialize();
        clearStyle();
        setFont("Serif");
        switch(type){
            case "factura":
                if(fP.getSize() == 0)
                    select10CPI();
                else
                    select15CPI(); 
                setMargins(fP.getLeftMargin(), fP.getRightMargin());
                break;
            case "boleta":
                if(bP.getSize() == 0)
                    select10CPI();
                else
                    select15CPI(); 
                System.out.println("margen izq: "+bP.getLeftMargin());
                setMargins(bP.getLeftMargin(), bP.getRightMargin());
                break;
            case "guiaRemision":
                if(gP.getSize() == 0)
                    select10CPI();
                else
                    select15CPI();
                setMargins(gP.getLeftMargin(), gP.getRightMargin());
                break;
        }       
    }

    public void clearStyle() throws IOException {
        bold(false);
        italic(false);
    }
    
    public void newLine() throws IOException{
        writer.write(CR);
        writer.write(LF);
    }
    
    public void newPage() throws IOException{
        writer.write(CR);
        writer.write(FF);
    }
    
    public void setFont(String font) throws IOException{
        switch(font){
            case "Serif":
                writer.write(ESC);
                writer.write(k);
                writer.write(1);
                break;
            case "Arial":
                writer.write(ESC);
                writer.write(k);
                writer.write(0);
                break;
        }
    }
    
    public void select10CPI() throws IOException {
        writer.write(ESC);
        writer.write(P);
    }
    
    public void select15CPI() throws IOException {
        writer.write(ESC);
        writer.write(g);
    }
    
    public void bold(boolean bold) throws IOException {
        writer.write(ESC);
        if (bold)
            writer.write(E);
        else
            writer.write(F);
    }
    
    public void italic(boolean italic) throws IOException {
        writer.write(ESC);
        if (italic)
            writer.write(C);
        else
            writer.write(D);
    }
    
    public void advanceVertical(float centimeters) throws IOException {
        //pre: centimeters >= 0 (cm)
        //post: advances vertical print position approx. y centimeters (not precise due to truncation)
        float inches = centimeters / CM_PER_INCH;
        int units = (int) (inches * (escp24pin ? MAX_ADVANCE_24PIN : MAX_ADVANCE_9PIN));
        
        while (units > 0) {
            char n;
            if (units > MAX_UNITS)
                n = (char) MAX_UNITS; //want to move more than range of parameter allows (0 - 255) so move max amount
            else
                n = (char) units; //want to move a distance which fits in range of parameter (0 - 255)
                        
            writer.write(ESC);
            writer.write(J);
            writer.write(n);
            
            units -= MAX_UNITS;
        }
    }
    
    public void advanceHorizontal(float centimeters) throws IOException {
        //pre: centimeters >= 0
        //post: advances horizontal print position approx. centimeters
        float inches = centimeters / CM_PER_INCH;
        int units_low = (int) (inches * 120) % 256;
        int units_high = (int) (inches * 120) / 256;
        
        writer.write(ESC);       
        writer.write(BACKSLASH);
        writer.write((char) units_low);
        writer.write((char) units_high);
    }
    
    public void setAbsoluteHorizontalPosition(float centimeters) throws IOException {
        //pre: centimenters >= 0 (cm)
        //post: sets absolute horizontal print position to x centimeters from left margin
        float inches = centimeters / CM_PER_INCH;
        int units_low = (int) (inches * 60) % 256;
        int units_high = (int) (inches * 60) / 256;
        
        writer.write(ESC);
        writer.write($);
        writer.write((char) units_low);
        writer.write((char) units_high);
    }
    
    public void setAbsoluteVerticalPosition(float centimeters) throws IOException {
        //pre: centimenters >= 0 (cm)
        //post: sets absolute vertical print position to x centimeters
        float inches = centimeters / CM_PER_INCH;
        int units_low = (int) (inches * 60) % 256;
        int units_high = (int) (inches * 60) / 256;
        
        writer.write(ESC);
        writer.write(40);
        writer.write(86);
        writer.write((char) units_low);
        writer.write((char) units_high);
    }
    
    public void horizontalTab(int tabs) throws IOException {
        //pre: tabs >= 0
        //post: performs horizontal tabs tabs number of times
        for (int i = 0; i < tabs; i++)
            writer.write(TAB);
    }
    
    public void setMargins(int columnsLeft, int columnsRight) throws IOException {
        //pre: columnsLeft > 0 && <= 255, columnsRight > 0 && <= 255
        //post: sets left margin to columnsLeft columns and right margin to columnsRight columns
        //left
        writer.write(ESC);
        writer.write(l);
        writer.write((char) columnsLeft);
        
        //right
        writer.write(ESC);
        writer.write(Q);
        writer.write((char) columnsRight);
    }
    
    public void writeLine(String val) throws IOException{
        writer.write(val);
        newLine();
    }
    
    public void writeFacSobCab(String cliNom, String cliDir, String fecEmi) throws IOException{
        advanceVertical(fP.getTopMargin());
        advanceHorizontal(fP.getCliNom());
        writeLine(cliNom);
        advanceHorizontal(fP.getCliDir());
        writeLine(cliDir);
        advanceHorizontal(fP.getFecEmi());
        writeLine(fecEmi);
    }
    
    public void writeBolSobCab(String cliNom, String cliDir, String fecEmi) throws IOException{
        advanceVertical(bP.getTopMargin());
        advanceHorizontal(bP.getCliNom());
        writeLine(cliNom);
        advanceHorizontal(bP.getCliDir());
        writer.write(cliDir);
        advanceHorizontal(bP.getFecEmi());
        writeLine(fecEmi);
    }
    
    public void writeGuiRemSobCab(String cliNom, String punPar, String punLle, String traNom) throws IOException{
        advanceVertical(gP.getTopMargin());
        advanceHorizontal(gP.getCliNom());
        writeLine(cliNom);
        advanceHorizontal(gP.getPunPar());
        writeLine(punPar);
        advanceHorizontal(gP.getPunLle());
        writeLine(punLle);
        advanceHorizontal(gP.getTraNom());
        writeLine(traNom);
    }

    public void writeFacCabecera(String cliCod, String conPag, String fecVen,
            String venZon, String numSec, String dis, String rut, String traNom) throws IOException{
        advanceVertical(fP.getTopFacCab());
        writer.write(cliCod);
        float val = fP.getCliCod();
        setAbsoluteHorizontalPosition(val);
        System.out.println(val);
        writer.write(conPag);
        val += fP.getConPag();
        System.out.println(val);
        setAbsoluteHorizontalPosition(val);
        writer.write(fecVen);
        val += fP.getFecVen();
        System.out.println(val);
        setAbsoluteHorizontalPosition(val);
        writer.write(venZon);
        val += fP.getVenZon();
        System.out.println(val);
        setAbsoluteHorizontalPosition(val);
        writer.write(numSec);
        val += fP.getNumSec();
        System.out.println(val);
        setAbsoluteHorizontalPosition(val);
        writer.write(dis);
        val += fP.getDis();
        System.out.println(val);
        setAbsoluteHorizontalPosition(val);
        writer.write(rut);
        val += fP.getRut();
        System.out.println(val);
        setAbsoluteHorizontalPosition(val);
        writer.write(traNom);
        newLine();
    }
    
    public void writeBolCabecera(String cliCod, String conPag, String fecVen,
            String venRut, String pdv, String obs) throws IOException{
        advanceVertical(bP.getTopFacCab());
        writer.write(cliCod);
        float val = bP.getCliCod();
        setAbsoluteHorizontalPosition(val);
        writer.write(conPag);
        val += bP.getConPag();
        setAbsoluteHorizontalPosition(val);
        writer.write(fecVen);
        val += bP.getFecVen();
        setAbsoluteHorizontalPosition(val);
        writer.write(venRut);
        val += bP.getVenRut();
        setAbsoluteHorizontalPosition(val);
        writer.write(pdv);
        val += bP.getObs();
        setAbsoluteHorizontalPosition(val);
        writer.write(obs);
        newLine();
    }
    
    public void writeGuiRemCabecera(String fecVen, String ven, String zon,
            String con, String cliCod, String oc, String facNum, String hora, String numInt) throws IOException{
        advanceVertical(gP.getTopFacCab());
        writer.write(fecVen);
        float val = gP.getFecVen();
        setAbsoluteHorizontalPosition(val);
        writer.write(ven);
        val += gP.getVen();
        setAbsoluteHorizontalPosition(val);
        writer.write(zon);
        val += gP.getZon();
        setAbsoluteHorizontalPosition(val);
        writer.write(con);
        val += gP.getCon();
        setAbsoluteHorizontalPosition(val);
        writer.write(cliCod);
        val += gP.getCliCod();
        setAbsoluteHorizontalPosition(val);
        writer.write(oc);
        val += gP.getOc();
        setAbsoluteHorizontalPosition(val);
        writer.write(facNum);
        val += gP.getFacNum();
        setAbsoluteHorizontalPosition(val);
        writer.write(hora);
        val += gP.getHora();
        setAbsoluteHorizontalPosition(val);
        writer.write(numInt);
        newLine();
    }
    
    public void writeFacDetalle(String proCod, double proCan, String proUni, String proDes, 
            double proValUni, String proDes1, String proDes2, double proValNet) throws IOException{
        advanceVertical(fP.getTopFacDet());
        writer.write(proCod);
        float val = fP.getProCod();
        setAbsoluteHorizontalPosition(val);
        writer.write(Double.toString(proCan));
        val += fP.getProCan();
        setAbsoluteHorizontalPosition(val);
        writer.write(proUni);   
        val += fP.getProUni();    
        setAbsoluteHorizontalPosition(val);
        writer.write(proDes);
        val += fP.getProDes();
        setAbsoluteHorizontalPosition(val);
        writer.write(Double.toString(proValUni));
        val += fP.getProValUni();
        setAbsoluteHorizontalPosition(val);
        writer.write(proDes1);
        val += fP.getProDes1();
        setAbsoluteHorizontalPosition(val);
        writer.write(proDes2);
        val += fP.getProDes2();
        setAbsoluteHorizontalPosition(val);
        writer.write(Double.toString(proValNet));
        newLine();
    }
    
    public void writeBolDetalle(String proCod, double proCan, String proUni, String proDes, 
            double proValVen, String proDes1, double proValNet) throws IOException{
        advanceVertical(bP.getTopFacDet());
        writer.write(proCod);
        float val = bP.getProCod();
        setAbsoluteHorizontalPosition(val);
        writer.write(Double.toString(proCan));
        val += bP.getProCan();
        setAbsoluteHorizontalPosition(val);
        writer.write(proUni);   
        val += bP.getProUni();    
        setAbsoluteHorizontalPosition(val);
        writer.write(proDes);
        val += bP.getProDes();
        setAbsoluteHorizontalPosition(val);
        writer.write(Double.toString(proValVen));
        val += bP.getProValVen();
        setAbsoluteHorizontalPosition(val);
        writer.write(proDes1);
        val += bP.getProDes1();
        setAbsoluteHorizontalPosition(val);
        writer.write(Double.toString(proValNet));
        newLine();
    }
    
    public void writeGuiRemDetalle(String proCod, double proCan, String proUni, String proDes, 
            double proValUni, String proDes1, double proValNet) throws IOException{
        advanceVertical(gP.getTopFacDet());
        writer.write(proCod);
        float val = gP.getProCod();
        setAbsoluteHorizontalPosition(val);
        writer.write(Double.toString(proCan));
        val += gP.getProCan();
        setAbsoluteHorizontalPosition(val);
        writer.write(proUni);   
        val += gP.getProUni();    
        setAbsoluteHorizontalPosition(val);
        writer.write(proDes);
        val += gP.getProDes();
        setAbsoluteHorizontalPosition(val);
        writer.write(Double.toString(proValUni));
        val += gP.getProValUni();
        setAbsoluteHorizontalPosition(val);
        writer.write(proDes1);
        val += gP.getProDes1();
        setAbsoluteHorizontalPosition(val);
        writer.write(Double.toString(proValNet));
        newLine();
    }

    public void writeFacTotal(double subTotal, double igv, double total) throws IOException{
        advanceVertical(7.0f);
        setAbsoluteHorizontalPosition(fP.getTotalMargin());
        writer.write(Double.toString(subTotal));
        newLine();
        setAbsoluteHorizontalPosition(fP.getTotalMargin());
        writer.write(Double.toString(igv));
        newLine();
        setAbsoluteHorizontalPosition(fP.getTotalMargin());
        writer.write(Double.toString(total));
        newLine();
    }
    
    public void writeBolTotal( double total) throws IOException{
        advanceVertical(7.0f);
        setAbsoluteHorizontalPosition(bP.getTotalMargin());
        writer.write(Double.toString(total));
        newLine();
    }
    
    public void close() throws IOException{
        writer.close();
    }         
}
