package org.epis.minierp.business.impresora;

import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.print.PrintService;
import javax.print.PrintServiceLookup;
import org.epis.minierp.dao.general.EnP1mEmpresaDao;
import org.epis.minierp.dao.ventas.EnP1mFacturaVentaCabDao;
import org.epis.minierp.model.EnP1mEmpresa;
import org.epis.minierp.model.EnP1mFacturaVentaCab;
import org.epis.minierp.model.EnP1tFacturaVentaDet;
import org.epis.minierp.util.DateUtil;

public class Impresora {
    String extension = ".prn";
    String path;
    SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd_HH-mm-ss");
    DateFormat fecha = new SimpleDateFormat("dd/MM/yyyy");
    Date date = new Date();
    DecimalFormat df = new DecimalFormat("0.00"); 
    
    EnP1mEmpresaDao empDao;
    
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
        empDao = new EnP1mEmpresaDao();
    }

    public String generateFactura(String cod){
        EnP1mEmpresaDao empDao = new EnP1mEmpresaDao();
        EnP1mEmpresa e = empDao.getById(01);
        
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
            numSec = " ";
            dis = " ";
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
                proDes1 = Integer.toString(f.getFacVenPorDes())+"%";
                proDes2 = "0%";
                proValNet = proCan * proValUni;
                fac.writeFacDetalle(Integer.toString(proCod), proCan, proUni, proDes, proValUni, proDes1, proDes2, df.format(proValNet));
            }
            fac.addLines(e.getEmpNumDetFacVen() - proCod); 
            subTotal = f.getFacVenCabSubTot();
            igv = subTotal * f.getFacVenCabIgv() / 100;
            total = f.getFacVenCabTot();
            fac.writeFacTotal(df.format(subTotal), df.format(igv), df.format(total));
            fac.close();
        } catch (IOException ex) {
            Logger.getLogger(Impresora.class.getName()).log(Level.SEVERE, null, ex);
        }
        return file;
    }
    
    public String[] generateFacturas(String[] cods){
        EnP1mEmpresaDao empDao = new EnP1mEmpresaDao();
        EnP1mEmpresa e = empDao.getById(01);
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
                numSec = " ";
                dis = " ";
                rut = Integer.toString(f.getEnP1mCatalogoRuta().getCatRutCod());
                if (f.getEnP2mGuiaRemTransportista() == null)
                        traNom = " ";
                    else
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
                    proDes1 = Integer.toString(f.getFacVenPorDes())+"%";
                    proDes2 = "0%";
                    proValNet = proCan * proValUni;
                    fac.writeFacDetalle(Integer.toString(proCod), proCan, proUni, proDes, proValUni, proDes1, proDes2, df.format(proValNet));
                }
                fac.addLines(e.getEmpNumDetFacVen() - proCod); 
                subTotal = f.getFacVenCabSubTot();
                igv = subTotal * f.getFacVenCabIgv() / 100;
                total = f.getFacVenCabTot();
                fac.writeFacTotal(df.format(subTotal), df.format(igv), df.format(total));
            }
            fac.close();
        } catch (IOException ex) {
                Logger.getLogger(Impresora.class.getName()).log(Level.SEVERE, null, ex);
        }
        String params[] = {file, fac.getName()};
        return params;
    }
    
    public String[] generateBoletas(String[] cods){
        EnP1mEmpresaDao empDao = new EnP1mEmpresaDao();
        EnP1mEmpresa e = empDao.getById(01);
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
                if (f.getEnP1mCatalogoRuta() == null)
                    venRut = " ";
                else
                    venRut = Integer.toString(f.getEnP1mCatalogoRuta().getCatRutCod());
                pdv = " ";
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
                    proDes1 = Integer.toString(f.getFacVenPorDes());
                    proValNet = proCan * proValUni;
                    bol.writeBolDetalle(Integer.toString(proCod), proCan, proUni, proDes, proValUni, proDes1, df.format(proValNet));
                }
                bol.addLines(e.getEmpNumDetBolVen() - proCod); 
                total = f.getFacVenCabTot();
                bol.writeBolTotal(df.format(total));
            }
            bol.close();
        } catch (IOException ex) {
            Logger.getLogger(Impresora.class.getName()).log(Level.SEVERE, null, ex);
        }
        String params[] = {file, bol.getName()};
        return params;
    }
    
    public String[] generateGuiaRemision(String[] cods){
        EnP1mEmpresaDao empDao = new EnP1mEmpresaDao();
        EnP1mEmpresa e = empDao.getById(01);
        String file = "Remision_"+sf.format(date.getTime())+extension;
        ImpresoraMatricial rem = new ImpresoraMatricial(file, path, "remision");
        try {
            for (String cod : cods) {

                EnP1mFacturaVentaCab f = (new EnP1mFacturaVentaCabDao()).getById(cod);
                cliCod = f.getEnP1mCliente().getCliCod();
                cliNom = f.getEnP1mCliente().getCliNom();
                punPar = empDao.getAll().get(0).getEmpDomFis();
                punLle = f.getEnP1mCliente().getCliDir();
                if (f.getEnP2mGuiaRemTransportista() == null)
                    traNom = " ";
                else 
                    traNom = f.getEnP2mGuiaRemTransportista().getEnP2mTransportista().getTraNom();
                rem.writeGuiRemSobCab(cliNom, punPar, punLle, traNom);

                fecVen = fecha.format(f.getFacVenCabFecVen());
                ven = f.getEnP1mUsuario().getUsuCod();
                zon = " ";
                con = f.getTaGzzTipoPagoFactura().getTipPagDet();
                oc = " ";
                facNum = f.getFacVenCabCod();
                hora = DateUtil.getHoraActual();
                numInt = " ";
                rem.writeGuiRemCabecera(fecVen, ven, zon, con, cliCod, oc, facNum, hora, numInt);

                proCod = 0;
                for(EnP1tFacturaVentaDet d : (Set<EnP1tFacturaVentaDet>)f.getEnP1tFacturaVentaDets()){
                    proCod++;
                    proCan = d.getFacVenDetCan();
                    proUni = d.getEnP2mProducto().getTaGzzUnidadMed().getUniMedSim();
                    proDes = d.getEnP2mProducto().getProDet();
                    proValUni = d.getFacVenDetValUni();
                    proDes1 = Integer.toString(f.getFacVenPorDes());
                    proValNet = proCan * proValUni;
                    
                    rem.writeGuiRemDetalle(Integer.toString(proCod), proCan, proUni, proDes, proValUni, proDes1, df.format(proValNet));
                }
                rem.addLines(e.getEmpNumDetGuiRemTra() - proCod);
                rem.writeGuiRemTotal();
            }
        rem.close();
        } catch (IOException ex) {
            Logger.getLogger(Impresora.class.getName()).log(Level.SEVERE, null, ex);
        }     
        String params[] = {file, rem.getName()};
        return params;
    }
    
    public void sendToPrinter(File f, String printerName){
        try {
            //String printerName;
            String ipAddress = "localhost";
            
            PrintService printer = PrintServiceLookup.lookupDefaultPrintService();
            //printerName = printer.getName();
            String printerDevice = "\\\\" + ipAddress + "\\" + printerName;
            
            String file = f.getAbsolutePath();
            ArrayList<String> commands = new ArrayList<>();
            commands.add("cmd.exe");
            commands.add("/B");
            commands.add("/C");
            commands.add("copy "+ file + " " + printerDevice);
            ProcessBuilder pb = new ProcessBuilder(commands);
            Process p = pb.start();
        } catch (IOException ex) {
            Logger.getLogger(Impresora.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}