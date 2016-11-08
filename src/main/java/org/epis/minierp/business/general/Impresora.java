package org.epis.minierp.business.general;

import java.io.IOException;
import java.text.DateFormat;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.epis.minierp.dao.ventas.EnP1mFacturaVentaCabDao;
import org.epis.minierp.model.EnP1mFacturaVentaCab;
import org.epis.minierp.model.EnP1tFacturaVentaDet;

public class Impresora {
    private static final int MAX_FAC_DET = 25;
    private static final int MAX_BOL_DET = 11;
    private static final int MAX_REM_DET = 25;
    
    String extension = ".prn";
    String path;
    SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd_HH-mm-ss");
    DateFormat fecha = new SimpleDateFormat("dd/MM/yyyy");
    Date date = new Date();
    DecimalFormat df = new DecimalFormat("0.00"); 
    
    String cliNom, cliDir, fecEmi;
    //Factura
    String cliCod, conPag, fecVen, venZon, numSec, dis, rut, traNom;
    int proCod;
    String proUni, proDes, proDes1, proDes2;
    Double proCan, proValUni, proValNet;
    Double subTotal, igv, total;
    //Boleta
    String venRut, pdv, obs;
    //Guia remisión
    String punPar, punLle;
    String ven, zon, con, oc, facNum, hora, numInt;

    public Impresora(String path) {
        this.path = path;
    }

    public String generateFactura(String cod){
        String file = "Factura_"+sf.format(date.getTime())+extension;
        ImpresoraMatricial fac = new ImpresoraMatricial(file, path, "factura");
        try {
            EnP1mFacturaVentaCab f = (new EnP1mFacturaVentaCabDao()).getById(cod);
            
            cliNom = f.getEnP1mCliente().getCliNom();
            cliDir = f.getEnP1mCliente().getCliDir();
            fecEmi = fecha.format(f.getFacVenCabFecEmi());
            fac.writeFacSobCab(cliNom, cliDir, fecEmi);
            
            cliCod = f.getEnP1mCliente().getCliCod();
            conPag = f.getTaGzzMetodoPagoFactura().getMetPagDet();
            fecVen = fecha.format(f.getFacVenCabFecVen());
            venZon = f.getEnP1mUsuario().getUsuNom();
            numSec = "1";
            dis = "Cercado";
            rut = Integer.toString(f.getEnP1mCatalogoRuta().getCatRutCod());
            traNom = f.getEnP2mGuiaRemTransportista().getEnP2mTransportista().getTraNom();
            fac.writeFacCabecera(cliCod, conPag, fecVen, venZon, numSec, dis, rut, traNom);
            
            proCod = 0;
            List<EnP1tFacturaVentaDet> detalles = (new EnP1mFacturaVentaCabDao()).getFacVenDets(cod);
            for(EnP1tFacturaVentaDet d : detalles){
                proCod++;
                proCan = d.getFacVenDetCan();
                proUni = d.getEnP2mProducto().getTaGzzUnidadMed().getUniMedSim();
                proDes = d.getEnP2mProducto().getProDet();
                proValUni = d.getFacVenDetValUni();
                proDes1 = "3";
                proDes2 = " ";
                proValNet = proCan * proValUni;
                fac.writeFacDetalle(Integer.toString(proCod), proCan, proUni, proDes, proValUni, proDes1, proDes2, df.format(proValNet));
            }
            fac.addLines(MAX_FAC_DET - proCod); 
            subTotal = f.getFacVenCabSubTot();
            igv = subTotal * f.getFacVenCabIgv();
            total = f.getFacVenCabTot();
            fac.writeFacTotal(subTotal, igv, total);
            fac.close();
        } catch (IOException ex) {
            Logger.getLogger(Impresora.class.getName()).log(Level.SEVERE, null, ex);
        }
        return file;
    }
    
    public String generateFacturas(String[] cods){
        String file = "Facturas_"+sf.format(date.getTime())+extension;
        ImpresoraMatricial fac = new ImpresoraMatricial(file, path, "factura");
        try {
        for (String cod : cods){
            EnP1mFacturaVentaCab f = (new EnP1mFacturaVentaCabDao()).getById(cod);

            cliNom = f.getEnP1mCliente().getCliNom();
            cliDir = f.getEnP1mCliente().getCliDir();
            fecEmi = fecha.format(f.getFacVenCabFecEmi());
            fac.writeFacSobCab(cliNom, cliDir, fecEmi);

            cliCod = f.getEnP1mCliente().getCliCod();
            conPag = f.getTaGzzMetodoPagoFactura().getMetPagDet();
            fecVen = fecha.format(f.getFacVenCabFecVen());
            venZon = f.getEnP1mUsuario().getUsuNom();
            numSec = "num";
            dis = "distrito";
            rut = Integer.toString(f.getEnP1mCatalogoRuta().getCatRutCod());
            traNom = f.getEnP2mGuiaRemTransportista().getEnP2mTransportista().getTraNom();
            fac.writeFacCabecera(cliCod, conPag, fecVen, venZon, numSec, dis, rut, traNom);

            proCod = 0;
            List<EnP1tFacturaVentaDet> detalles = (new EnP1mFacturaVentaCabDao()).getFacVenDets(cod);            
            for(EnP1tFacturaVentaDet d : detalles){
                proCod++;
                proCan = d.getFacVenDetCan();
                proUni = d.getEnP2mProducto().getTaGzzUnidadMed().getUniMedSim();
                proDes = d.getEnP2mProducto().getProDet();
                proValUni = d.getFacVenDetValUni();
                proDes1 = "3";
                proDes2 = " ";
                proValNet = proCan * proValUni;
                fac.writeFacDetalle(Integer.toString(proCod), proCan, proUni, proDes, proValUni, proDes1, proDes2, df.format(proValNet));
            }
            fac.addLines(MAX_FAC_DET - proCod); 
            subTotal = f.getFacVenCabSubTot();
            igv = subTotal * f.getFacVenCabIgv();
            total = f.getFacVenCabTot();
            fac.writeFacTotal(subTotal, igv, total);

            fac.newPage();
        }
        fac.close();
        } catch (IOException ex) {
                Logger.getLogger(Impresora.class.getName()).log(Level.SEVERE, null, ex);
        }
        return file;
    }
    
    public String generateBoletas(String[] cods){
        String file = "Boletas_"+sf.format(date.getTime())+extension;
        ImpresoraMatricial bol = new ImpresoraMatricial(file, path, "boleta");
        try {
            for (String cod : cods) {
                EnP1mFacturaVentaCab f = (new EnP1mFacturaVentaCabDao()).getById(cod);
                cliNom = f.getEnP1mCliente().getCliRazSoc();
                cliDir = f.getEnP1mCliente().getCliDir();
                fecEmi = fecha.format(f.getFacVenCabFecEmi());
                bol.writeBolSobCab(cliNom, cliDir, fecEmi);

                cliCod = f.getEnP1mCliente().getCliCod();
                conPag = f.getTaGzzMetodoPagoFactura().getMetPagDet();
                fecVen = fecha.format(f.getFacVenCabFecVen());
                venRut = Integer.toString(f.getEnP1mCatalogoRuta().getCatRutCod());
                pdv = "pdv";
                obs = f.getFacVenCabObs();
                bol.writeBolCabecera(cliCod, conPag, fecVen, venRut, pdv, obs);

                proCod = 0;
                List<EnP1tFacturaVentaDet> detalles = (new EnP1mFacturaVentaCabDao()).getFacVenDets(cod);            
                for(EnP1tFacturaVentaDet d : detalles){
                    proCod++;
                    proCan = d.getFacVenDetCan();
                    proUni = d.getEnP2mProducto().getTaGzzUnidadMed().getUniMedSim();
                    proDes = d.getEnP2mProducto().getProDet();
                    proValUni = d.getFacVenDetValUni();
                    proDes1 = "3";
                    proValNet = proCan * proValUni;
                    bol.writeBolDetalle(Integer.toString(proCod), proCan, proUni, proDes, proValUni, proDes1, df.format(proValNet));
                }
                bol.addLines(MAX_BOL_DET - proCod); 
                total = f.getFacVenCabTot();
                bol.writeBolTotal(total);

                bol.newPage();
            }
            bol.close();
        } catch (IOException ex) {
            Logger.getLogger(Impresora.class.getName()).log(Level.SEVERE, null, ex);
        }
        return file;
    }
    
    public String generateGuiaRemision(String[] cods){
        String file = "Remision_"+sf.format(date.getTime())+extension;
        ImpresoraMatricial rem = new ImpresoraMatricial(file, path, "guiaRemision");
        try {
            for (String cod : cods) {

                EnP1mFacturaVentaCab f = (new EnP1mFacturaVentaCabDao()).getById(cod);
                cliCod = f.getEnP1mCliente().getCliCod();
                cliNom = f.getEnP1mCliente().getCliNom();
                punPar = " ";
                punLle = f.getEnP1mCliente().getCliDir();
                traNom = f.getEnP2mGuiaRemTransportista().getEnP2mTransportista().getTraNom();
                rem.writeGuiRemSobCab(cliNom, punPar, punLle, traNom);

                fecVen = fecha.format(f.getFacVenCabFecVen());
                ven = f.getEnP1mUsuario().getUsuCod();
                zon = "zona";
                con = "con";
                oc = "oc";
                facNum = f.getFacVenCabCod();
                hora = "hora";
                numInt = "numInt";
                rem.writeGuiRemCabecera(fecVen, ven, zon, con, cliCod, oc, facNum, hora, numInt);

                proCod = 0;
                for(EnP1tFacturaVentaDet d : (Set<EnP1tFacturaVentaDet>)f.getEnP1tFacturaVentaDets()){
                    proCod++;
                    proCan = d.getFacVenDetCan();
                    proUni = d.getEnP2mProducto().getTaGzzUnidadMed().getUniMedSim();
                    proDes = d.getEnP2mProducto().getProDet();
                    proValUni = d.getFacVenDetValUni();
                    proDes1 = "3";
                    proValNet = proCan * proValUni;
                    
                    rem.writeGuiRemDetalle(Integer.toString(proCod), proCan, proUni, proDes, proValUni, proDes1, df.format(proValNet));
                }
                rem.addLines(MAX_REM_DET - proCod); 
                rem.newPage();
            }
        rem.close();
        } catch (IOException ex) {
            Logger.getLogger(Impresora.class.getName()).log(Level.SEVERE, null, ex);
        }     
        return file;
    }
}
