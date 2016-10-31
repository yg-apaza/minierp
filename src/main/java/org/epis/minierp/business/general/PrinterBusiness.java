package org.epis.minierp.business.general;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
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
    
    public PrinterBusiness(String file) {
        try {
            writer = new FileWriter(file);
        } catch (IOException ex) {
            Logger.getLogger(PrinterBusiness.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void initialize() throws IOException{
        writer.write(ESC);
        writer.write('C');
        writer.write(23);
    }

    public String getPrinter() {
        boolean printerDeviceSet = false;

        if (printerDevice != null) {
            if (printerDevice.length() > 0)
                printerDeviceSet = true;
        }

        if (!printerDeviceSet)
            return "\\\\" + ipAddress + "\\" + printerName;
        else
            return printerDevice;
    }

    public String getPrinterName() {
        return printerName;
    }

    public void setPrinterName(String printerName) {
        this.printerName = printerName;
    }

    public String getIpAddress() {
        return ipAddress;
    }

    public void setIpAddress(String ipAddress) {
        this.ipAddress = ipAddress;
    }

    public String getPrinterDevice() {
        return printerDevice;
    }

    public void setPrinterDevice(String printerDevice) {
        this.printerDevice = printerDevice;
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
        advanceVertical(3.0f);
        advanceHorizontal(2.0f);
        writeLine(cliNom);
        advanceHorizontal(2.0f);
        writeLine(cliDir);
        advanceHorizontal(16.0f);
        writeLine(fecEmi);
    }
       
    public void writeFacCabecera(String cliCod, String conPag, String fecVto,
            String venNom, String nSec, String dis, String rut, String traNom) throws IOException{
        advanceVertical(1.0f);
        writer.write(cliCod);
        setAbsoluteHorizontalPosition(2.0f);
        writer.write(conPag);
        setAbsoluteHorizontalPosition(4.5f);
        writer.write(fecVto);
        setAbsoluteHorizontalPosition(7.0f);
        writer.write(venNom);
        setAbsoluteHorizontalPosition(9.6f);
        writer.write(nSec);
        setAbsoluteHorizontalPosition(11.1f);
        writer.write(dis);
        setAbsoluteHorizontalPosition(14.5f);
        writer.write(rut);
        setAbsoluteHorizontalPosition(15.4f);
        writer.write(traNom);
        advanceVertical(1.0f);
    }
    
    public void writeFacDetalle(String cod, Double can, String uni, String des, 
            Double preUni, String proDes1, String proDes2, Double preTotal) throws IOException{
        setAbsoluteHorizontalPosition(0.1f);
        writer.write(cod);
        setAbsoluteHorizontalPosition(2.0f);
        writer.write(Double.toString(can));
        setAbsoluteHorizontalPosition(3.6f);
        writer.write(uni);       
        setAbsoluteHorizontalPosition(4.9f);
        writer.write(des);
        setAbsoluteHorizontalPosition(14.0f);
        writer.write(Double.toString(preUni));
        setAbsoluteHorizontalPosition(16.0f);
        writer.write(proDes1);
        setAbsoluteHorizontalPosition(17.2f);
        writer.write(proDes2);
        setAbsoluteHorizontalPosition(19.0f);
        writer.write(Double.toString(preTotal));
        newLine();
    }
    
    public void writeFacTotal(Double subTotal, Double igv, Double total) throws IOException{
        advanceVertical(7.0f);
        setAbsoluteHorizontalPosition(19.0f);
        writer.write(Double.toString(subTotal));newLine();
        setAbsoluteHorizontalPosition(19.0f);
        writer.write(Double.toString(igv));newLine();
        setAbsoluteHorizontalPosition(19.0f);
        writer.write(Double.toString(total));newLine();
    }
    
    public void start() throws IOException{
        initialize();
        clearStyle();
        select10CPI();
        setFont("Serif");
        setMargins(8, 6);
    }
    
    public void close() throws IOException{
        writer.close();
    }         
}