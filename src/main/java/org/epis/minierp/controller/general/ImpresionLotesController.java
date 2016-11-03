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
        
        String cliCod;
        String cliNom;
        String cliDir;
        String fecEmi;
        String fecVen;
        String conPag;
        String venNom;
        String numSec;
        String dis;
        String rut;
        String traNom;
        String venRut;
        String pdv;
        String obs;
        String ven;
        String zon;
        String con;
        String oc;
        String facNum;
        String hora;
        String numInt;
        String punPar;
        String punLle;
        DateFormat day = new SimpleDateFormat("dd");
        DateFormat month = new SimpleDateFormat("MM");
        DateFormat year = new SimpleDateFormat("yyyy");
        DateFormat fecha = new SimpleDateFormat("dd/MM/yyyy");
        String []meses = {"", "enero", "febrero", "marzo", "abril", "mayo" , "junio",
        "julio", "agosto", "setiembre", "octubre", "noviembre", "diciembre"};

        String path = getServletContext().getRealPath("/WEB-INF/");
        path = path + "ventas/factura";
        
        switch(report){
            case "factura":
                PrinterBusiness pF = new PrinterBusiness(fileGenerated, path, "factura");
                for (String cod : cods) {
                    EnP1mFacturaVentaCab f = (new EnP1mFacturaVentaCabDao()).getById(cod);
                    cliCod = f.getEnP1mCliente().getCliCod();
                    cliNom = f.getEnP1mCliente().getCliRazSoc();
                    cliDir = f.getEnP1mCliente().getCliDir();
                    fecEmi = fecha.format(f.getFacVenCabFec());
                    pF.writeFacSobCab(cliNom, cliDir, fecEmi);

                    conPag = f.getTaGzzMetodoPagoFactura().getMetPagDet();
                    fecVen = "10/12/16";
                    venNom = ""; //f.getEnP1mUsuario().getUsuNom();
                    numSec = "1";
                    dis = "Cercado";
                    rut = "2";//+f.getEnP1mCatalogoRuta().getCatRutCod();
                    traNom = "";//f.getEnP2mGuiaRemTransportista().getEnP2mTransportista().getTraNomCom();
                    pF.writeFacCabecera(cliCod, conPag, fecVen, venNom, numSec, dis, rut, traNom);

                    for(EnP1tFacturaVentaDet d : (Set<EnP1tFacturaVentaDet>)f.getEnP1tFacturaVentaDets()){
                        pF.writeFacDetalle("10",d.getFacVenDetCan(), d.getEnP2mProducto().getTaGzzUnidadMed().getUniMedDet(), d.getEnP2mProducto().getProDet(), d.getFacVenDetValUni(), "", "",d.getFacVenDetCan()*d.getFacVenDetValUni());
                    }

                    pF.writeFacTotal(f.getFacVenCabSubTot(), f.getFacVenCabSubTot()*f.getFacVenCabIgv(), f.getFacVenCabTot());
                    pF.newPage();
                }
                pF.close();
                break;
            case "boleta":
                PrinterBusiness pB = new PrinterBusiness(fileGenerated, path, "boleta");
                for (String cod : cods) {
                    EnP1mFacturaVentaCab f = (new EnP1mFacturaVentaCabDao()).getById(cod);
                    cliCod = f.getEnP1mCliente().getCliCod();
                    cliNom = f.getEnP1mCliente().getCliRazSoc();
                    cliDir = f.getEnP1mCliente().getCliDir();
                    fecEmi = fecha.format(f.getFacVenCabFec());
                    pB.writeBolSobCab(cliNom, cliDir, fecEmi);

                    conPag = f.getTaGzzMetodoPagoFactura().getMetPagDet();
                    fecVen = " ";
                    venRut = " ";
                    pdv = " ";
                    obs = " ";
                    pB.writeBolCabecera(cliCod, conPag, fecVen, venRut, pdv, obs);

                    for(EnP1tFacturaVentaDet d : (Set<EnP1tFacturaVentaDet>)f.getEnP1tFacturaVentaDets()){
                        pB.writeBolDetalle("10",d.getFacVenDetCan(), d.getEnP2mProducto().getTaGzzUnidadMed().getUniMedDet(), d.getEnP2mProducto().getProDet(), d.getFacVenDetValUni(), "", d.getFacVenDetCan()*d.getFacVenDetValUni());
                    }
                    pB.writeBolTotal(f.getFacVenCabTot());

                    pB.newPage();
                }
                pB.close();
                break;
            case "guiaRemision":
                PrinterBusiness pG = new PrinterBusiness(fileGenerated, path, "guiaRemision");
                for (String cod : cods) {
                    EnP1mFacturaVentaCab f = (new EnP1mFacturaVentaCabDao()).getById(cod);
                    cliCod = f.getEnP1mCliente().getCliCod();
                    cliNom = f.getEnP1mCliente().getCliRazSoc();
                    punPar = " ";
                    punLle = f.getEnP1mCliente().getCliDir();
                    traNom = " ";
                    pG.writeGuiRemSobCab(cliNom, punPar, punLle, traNom);

                    fecVen = " ";
                    ven = " ";
                    zon = " ";
                    con = " ";
                    oc = " ";
                    facNum = f.getFacVenCabCod();
                    hora = " ";
                    numInt = " ";
                    pG.writeGuiRemCabecera(fecVen, ven, zon, con, cliCod, oc, facNum, hora, numInt);

                    for(EnP1tFacturaVentaDet d : (Set<EnP1tFacturaVentaDet>)f.getEnP1tFacturaVentaDets()){
                        pG.writeGuiRemDetalle("10",d.getFacVenDetCan(), d.getEnP2mProducto().getTaGzzUnidadMed().getUniMedDet(), d.getEnP2mProducto().getProDet(), d.getFacVenDetValUni(), "", d.getFacVenDetCan()*d.getFacVenDetValUni());
                    }
                    pG.newPage();
                }
                pG.close();
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