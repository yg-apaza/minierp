package org.epis.minierp.controller.ventas;

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
import org.epis.minierp.model.EnP1mDocumentoCliente;
import org.epis.minierp.model.EnP1tFacturaVentaDet;

public class FacturaLotesController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {       
        request.getRequestDispatcher("/WEB-INF/ventas/factura.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String[] values = request.getParameterValues("facCodigos");
        String fileGenerated = "facturaLote.prn";
        String facCabFec;
        String cliCod;
        String cliNom;
        String cliDir;
        String cliDoc;
        String fecEmi;
        String conPag;
        String fecVto;
        String venNom;
        String nSec;
        String dis;
        String rut;
        String traNom;
        DateFormat day = new SimpleDateFormat("dd");
        DateFormat month = new SimpleDateFormat("MM");
        DateFormat year = new SimpleDateFormat("yyyy");
        DateFormat fecha = new SimpleDateFormat("dd/MM/yyyy");
        String []meses = {"", "enero", "febrero", "marzo", "abril", "mayo" , "junio",
        "julio", "agosto", "setiembre", "octubre", "noviembre", "diciembre"};
        
        PrinterBusiness p = new PrinterBusiness(fileGenerated);
        p.start();
        
        for (String value : values) {
            EnP1mFacturaVentaCab f = (new EnP1mFacturaVentaCabDao()).getById(value);
            facCabFec = day.format(f.getFacVenCabFec()) + " de " + meses[Integer.parseInt(month.format(f.getFacVenCabFec()))] + " del " + year.format(f.getFacVenCabFec());
            cliCod = f.getEnP1mCliente().getCliCod();
            cliNom = f.getEnP1mCliente().getCliRazSoc();
            cliDir = f.getEnP1mCliente().getCliDir();
            fecEmi = fecha.format(f.getFacVenCabFec());
            p.writeFacSobCab(cliNom, cliDir, fecEmi);
            
            EnP1mDocumentoCliente doc = (EnP1mDocumentoCliente) f.getEnP1mCliente().getEnP1mDocumentoClientes().iterator().next();
            cliDoc = doc.getDocCliNum();
            conPag = f.getTaGzzMetodoPagoFactura().getMetPagDet();
            fecVto = " ";
            venNom = f.getEnP1mUsuario().getUsuNom()+" "+f.getEnP1mUsuario().getUsuApePat()+" "+f.getEnP1mCliente().getCliApeMat();
            nSec = " ";
            dis = " ";
            rut = " ";//+f.getEnP1mCatalogoRuta().getCatRutCod();
            traNom = " ";//f.getEnP2mGuiaRemTransportista().getEnP2mTransportista().getTraNomCom();
            p.writeFacCabecera(cliCod, conPag, fecVto, venNom, nSec, dis, rut, traNom);
            for(EnP1tFacturaVentaDet d : (Set<EnP1tFacturaVentaDet>)f.getEnP1tFacturaVentaDets()){
                p.writeFacDetalle("10",d.getFacVenDetCan(), d.getEnP2mProducto().getTaGzzUnidadMed().getUniMedDet(), d.getEnP2mProducto().getProDet(), d.getFacVenDetValUni(), "", "",d.getFacVenDetCan()*d.getFacVenDetValUni());
            }
            p.writeFacTotal(f.getFacVenCabSubTot(), f.getFacVenCabSubTot()*f.getFacVenCabIgv(), f.getFacVenCabTot());
            p.newPage();
        }
        p.close();

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
