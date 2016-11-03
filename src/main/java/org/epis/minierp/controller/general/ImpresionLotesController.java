package org.epis.minierp.controller.general;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Set;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.business.general.PrinterBusiness;
import org.epis.minierp.dao.ventas.EnP1mFacturaVentaCabDao;
import org.epis.minierp.model.EnP1mFacturaVentaCab;
import org.epis.minierp.model.EnP1tFacturaVentaDet;

public class ImpresionLotesController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {       
        request.getRequestDispatcher("/WEB-INF/ventas/factura.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String[] cods = request.getParameterValues("codigos");
        String report = request.getParameter("report");
        String fileGenerated = "documento.prn";

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

        DateFormat fecha = new SimpleDateFormat("dd/MM/yyyy");
        
        String path = getServletContext().getRealPath("/WEB-INF/");
        path = path + "ventas/factura";
        
        switch(report){
            case "factura":
                PrinterBusiness fac = new PrinterBusiness(fileGenerated, path, "factura");
                for (String cod : cods) {
                    EnP1mFacturaVentaCab f = (new EnP1mFacturaVentaCabDao()).getById(cod);
                    
                    cliNom = f.getEnP1mCliente().getCliRazSoc();
                    cliDir = f.getEnP1mCliente().getCliDir();
                    fecEmi = fecha.format(f.getFacVenCabFecEmi());
                    fac.writeFacSobCab(cliNom, cliDir, fecEmi);
                    
                    cliCod = f.getEnP1mCliente().getCliCod();
                    conPag = f.getTaGzzMetodoPagoFactura().getMetPagDet();
                    fecVen = "11/11/16";
                    venZon = f.getEnP1mUsuario().getUsuNom();
                    numSec = "1";
                    dis = "Cercado";
                    rut = "1";//+f.getEnP1mCatalogoRuta().getCatRutCod();
                    traNom = "Carlos";//f.getEnP2mGuiaRemTransportista().getEnP2mTransportista().getTraNomCom();
                    fac.writeFacCabecera(cliCod, conPag, fecVen, venZon, numSec, dis, rut, traNom);
                   
                    proCod = 0;
                    for(EnP1tFacturaVentaDet d : (Set<EnP1tFacturaVentaDet>)f.getEnP1tFacturaVentaDets()){
                        proCod++;
                        proCan = d.getFacVenDetCan();
                        proUni = d.getEnP2mProducto().getTaGzzUnidadMed().getUniMedDet();
                        proDes = d.getEnP2mProducto().getProDet();
                        proValUni = d.getFacVenDetValUni();
                        proDes1 = "3";
                        proDes2 = "5";
                        proValNet = proCan * proValUni;
                        fac.writeFacDetalle(Integer.toString(proCod), proCan, proUni, proDes, proValUni, proDes1, proDes2, proValNet);
                    }

                    subTotal = f.getFacVenCabSubTot();
                    igv = subTotal * f.getFacVenCabIgv();
                    total = f.getFacVenCabTot();
                    fac.writeFacTotal(subTotal, igv, total);
                    
                    fac.newPage();
                }
                fac.close();
                break;
                
            case "boleta":
                PrinterBusiness bol = new PrinterBusiness(fileGenerated, path, "boleta");
                for (String cod : cods) {
                    EnP1mFacturaVentaCab f = (new EnP1mFacturaVentaCabDao()).getById(cod);
                    cliNom = f.getEnP1mCliente().getCliRazSoc();
                    cliDir = f.getEnP1mCliente().getCliDir();
                    fecEmi = fecha.format(f.getFacVenCabFecEmi());
                    bol.writeBolSobCab(cliNom, cliDir, fecEmi);
                    
                    cliCod = f.getEnP1mCliente().getCliCod();
                    conPag = f.getTaGzzMetodoPagoFactura().getMetPagDet();
                    fecVen = "11/11/2016";
                    venRut = " ";
                    pdv = " ";
                    obs = " ";
                    bol.writeBolCabecera(cliCod, conPag, fecVen, venRut, pdv, obs);
                    
                    proCod = 0;
                    for(EnP1tFacturaVentaDet d : (Set<EnP1tFacturaVentaDet>)f.getEnP1tFacturaVentaDets()){
                        proCan = d.getFacVenDetCan();
                        proUni = d.getEnP2mProducto().getTaGzzUnidadMed().getUniMedDet();
                        proDes = d.getEnP2mProducto().getProDet();
                        proValUni = d.getFacVenDetValUni();
                        proDes1 = "3%";
                        proValNet = proCan * proValUni;
                        bol.writeBolDetalle(Integer.toString(proCod), proCan, proUni, proDes, proValUni, proDes1, proValNet);
                    }
                    total = f.getFacVenCabTot();
                    bol.writeBolTotal(total);

                    bol.newPage();
                }
                bol.close();
                break;
            case "guiaRemision":
                PrinterBusiness rem = new PrinterBusiness(fileGenerated, path, "guiaRemision");
                for (String cod : cods) {
                    EnP1mFacturaVentaCab f = (new EnP1mFacturaVentaCabDao()).getById(cod);
                    cliCod = f.getEnP1mCliente().getCliCod();
                    cliNom = f.getEnP1mCliente().getCliRazSoc();
                    punPar = " ";
                    punLle = f.getEnP1mCliente().getCliDir();
                    traNom = " ";
                    rem.writeGuiRemSobCab(cliNom, punPar, punLle, traNom);

                    fecVen = "11/11/2016";
                    ven = " ";
                    zon = " ";
                    con = " ";
                    oc = " ";
                    facNum = f.getFacVenCabCod();
                    hora = " ";
                    numInt = " ";
                    rem.writeGuiRemCabecera(fecVen, ven, zon, con, cliCod, oc, facNum, hora, numInt);
                    
                    proCod = 0;
                    for(EnP1tFacturaVentaDet d : (Set<EnP1tFacturaVentaDet>)f.getEnP1tFacturaVentaDets()){
                        proCan = d.getFacVenDetCan();
                        proUni = d.getEnP2mProducto().getTaGzzUnidadMed().getUniMedDet();
                        proDes = d.getEnP2mProducto().getProDet();
                        proValUni = d.getFacVenDetValUni();
                        proDes1 = "3%";
                        proValNet = proCan * proValUni;
                        rem.writeGuiRemDetalle(Integer.toString(proCod), proCan, proUni, proDes, proValUni, proDes1, proValNet);
                    }
                    rem.newPage();
                }
                rem.close();
                break;
        }

        File file = new File(fileGenerated);
        response.setContentType("text/plain");
        response.setHeader("Content-Type", "text/plain");
        response.setContentLength((int) file.length());
        FileInputStream fileInputStream = new FileInputStream(file);
        OutputStream responseOutputStream = response.getOutputStream();
        int bytes;
        while ((bytes = fileInputStream.read()) != -1) {
            responseOutputStream.write(bytes);
        }
        //response.sendRedirect(request.getContextPath() + "/secured/ventas/factura");
    }
}
