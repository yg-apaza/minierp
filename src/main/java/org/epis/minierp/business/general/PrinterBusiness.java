package org.epis.minierp.business.general;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.print.PrintService;

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
    
    private String printerName;
    private String ipAddress;
    private PrintService printService;
    private String printerDevice;
    private FileWriter writer;
    private PrintWriter pWriter;
    private HashMap <String, Float>params;
            
    public PrinterBusiness(String file, String format) {
        try {
            writer = new FileWriter(file);
            params = new HashMap();
            readParameters(file);
            start();
        } catch (IOException ex) {
            Logger.getLogger(PrinterBusiness.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void readParameters(String file){
       XMLReader xr = new XMLReader(file);
       xr.readXML();
       params = xr.getMap();
    }

    public void initialize() throws IOException{
        writer.write(ESC);
        writer.write('C');
        writer.write(23);
    }

    public void start() throws IOException{
        initialize();
        clearStyle();
        if(Math.round(params.get("size")) == 0)
            select10CPI();
        else
            select15CPI();
        setFont("Serif");
        setMargins(Math.round(params.get("leftMargin")), Math.round(params.get("rightMargin")));
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
        advanceVertical(params.get("topMargin"));
        advanceHorizontal(params.get("cliNom"));
        writeLine(cliNom);
        advanceHorizontal(params.get("cliDir"));
        writeLine(cliDir);
        advanceHorizontal(params.get("fecEmi"));
        writeLine(fecEmi);
    }
       
    public void writeFacCabecera(String cliCod, String conPag, String fecVen,
            String venZon, String numSec, String dis, String rut, String traNom) throws IOException{
        advanceVertical(params.get("topFacCab"));
        writer.write(cliCod);
        float val = params.get("cliCod");
        setAbsoluteHorizontalPosition(val);
        writer.write(conPag);
        val += params.get("conPag");
        setAbsoluteHorizontalPosition(val);
        writer.write(fecVen);
        val += params.get("fecVen");
        setAbsoluteHorizontalPosition(val);
        writer.write(venZon);
        val += params.get("venZon");
        setAbsoluteHorizontalPosition(val);
        writer.write(numSec);
        val += params.get("numSec");
        setAbsoluteHorizontalPosition(val);
        writer.write(dis);
        val += params.get("dis");
        setAbsoluteHorizontalPosition(val);
        writer.write(rut);
        val += params.get("rut");
        setAbsoluteHorizontalPosition(val);
        writer.write(traNom);
    }
    
    public void writeFacDetalle(String proCod, Double proCan, String proUni, String proDes, 
            Double proValUni, String proDes1, String proDes2, Double proValNet) throws IOException{
        advanceVertical(params.get("topFacDet"));
        writer.write(proCod);
        float val = params.get("proCod");
        setAbsoluteHorizontalPosition(val);
        writer.write(Double.toString(proCan));
        val += params.get("proCan");
        setAbsoluteHorizontalPosition(val);
        writer.write(proUni);   
        val += params.get("proUni");    
        setAbsoluteHorizontalPosition(val);
        writer.write(proDes);
        val += params.get("proDes");
        setAbsoluteHorizontalPosition(val);
        writer.write(Double.toString(proValUni));
        val += params.get("proValUni");
        setAbsoluteHorizontalPosition(val);
        writer.write(proDes1);
        val += params.get("proDes1");
        setAbsoluteHorizontalPosition(val);
        writer.write(proDes2);
        val += params.get("proDes2");
        setAbsoluteHorizontalPosition(val);
        writer.write(Double.toString(proValNet));
        newLine();
    }
    
    public void writeFacTotal(Double subTotal, Double igv, Double total) throws IOException{
        advanceVertical(7.0f);
        setAbsoluteHorizontalPosition(params.get("totalMargin"));
        writer.write(Double.toString(subTotal));
        newLine();
        setAbsoluteHorizontalPosition(params.get("totalMargin"));
        writer.write(Double.toString(igv));
        newLine();
        setAbsoluteHorizontalPosition(params.get("totalMargin"));
        writer.write(Double.toString(total));
        newLine();
    }
    
    public void close() throws IOException{
        writer.close();
    }         
}
