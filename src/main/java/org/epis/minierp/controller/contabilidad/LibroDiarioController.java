package org.epis.minierp.controller.contabilidad;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.contabilidad.AsientoCabDao;
import org.epis.minierp.dao.contabilidad.AsientoDetDao;
import org.epis.minierp.dao.contabilidad.CuentaDao;
import org.epis.minierp.dao.contabilidad.LibroDiarioDao;
import org.epis.minierp.dao.general.TaGzzMonedaDao;
import org.epis.minierp.dao.general.TaGzzTipoComprobanteDao;
import org.epis.minierp.model.EnP3mAsientoCab;
import org.epis.minierp.model.EnP3mAsientoCabId;
import org.epis.minierp.model.EnP3mCuenta;
import org.epis.minierp.model.EnP3mLibroDiario;
import org.epis.minierp.model.EnP3tAsientoDet;
import org.epis.minierp.model.EnP3tAsientoDetId;
import org.epis.minierp.model.TaGzzMoneda;
import org.epis.minierp.model.TaGzzTipoComprobante;

public class LibroDiarioController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    int libDiaCod=0;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {   
        
        List <TaGzzMoneda> monedas = (new TaGzzMonedaDao()).getAll();
        List <TaGzzTipoComprobante> comprobantes = (new TaGzzTipoComprobanteDao()).getAll();
        List <EnP3mLibroDiario> libros = (new LibroDiarioDao()).getAll();
        List <EnP3mCuenta> cuentas = (new CuentaDao()).getAllActive();
        request.setAttribute("libDiaCod",libDiaCod);
        request.setAttribute("libros",libros);
        request.setAttribute("monedas", monedas);
        request.setAttribute("comprobantes", comprobantes);
        request.setAttribute("cuentas",cuentas);
        request.getRequestDispatcher("/WEB-INF/contabilidad/libroDiario/libroDiario_Principal.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        AsientoCabDao daoAsientoCab = new AsientoCabDao();
        AsientoDetDao daoAsientoDet = new AsientoDetDao();
        
        int operacion = Integer.parseInt(request.getParameter("operacion"));
        try {
            switch(operacion){
                case 1: 
                    LibroDiarioDao daoLibroDiario = new LibroDiarioDao();
                    EnP3mLibroDiario miLibro = new EnP3mLibroDiario();
                    int libDiaCodo = Integer.parseInt(request.getParameter("libDiaCod"));
                    miLibro.setLibDiaCod(libDiaCodo);
                    String libDiaPer = request.getParameter("libDiaPer");
                    miLibro.setLibDiaPer(libDiaPer);
                    miLibro.setEstRegCod('A');
                    daoLibroDiario.save(miLibro);
                    break;
                case 2:                 
                    EnP3mAsientoCab asiCab = new EnP3mAsientoCab();
                    int asiCabCod = Integer.parseInt(request.getParameter("asiCabCod"));
                    int monCod = Integer.parseInt(request.getParameter("monCod"));
                    TaGzzMoneda taGzzMoneda = (new TaGzzMonedaDao()).getById(monCod);         
                    int tipComCod = Integer.parseInt(request.getParameter("tipComCod"));
                    TaGzzTipoComprobante taGzzTipoComprobante = (new TaGzzTipoComprobanteDao()).getById(tipComCod);
                    Date asiCabFec = format.parse(request.getParameter("asiCabFec"));
                    String asiCabGlo = request.getParameter("asiCabGlo");
                    char asiCabTip = request.getParameter("asiCabTip").charAt(0);
                    String asiCabNumCom = request.getParameter("asiCabNumCom");

                    EnP3mAsientoCabId  asientoCabId = new EnP3mAsientoCabId();
                    asientoCabId.setAsiCabCod(asiCabCod);
                    asientoCabId.setLibDiaCod(libDiaCod);
                    
                    asiCab.setTaGzzMoneda(taGzzMoneda);
                    asiCab.setTaGzzTipoComprobante(taGzzTipoComprobante);
                    asiCab.setAsiCabFec(asiCabFec);
                    asiCab.setAsiCabGlo(asiCabGlo);
                    asiCab.setAsiCabTip(asiCabTip);
                    asiCab.setAsiCabNumCom(asiCabNumCom);
                    asiCab.setId(asientoCabId);
                    asiCab.setEstRegCod('A');
                    daoAsientoCab.save(asiCab);
                
                    List <String> listDataTabla = Arrays.asList((request.getParameter("dataTable")).split("\\s*,\\s*"));
                    int col = 3;
                    for(int i=0;i<listDataTabla.size()/col;i++){
                        EnP3tAsientoDet asiDet = new EnP3tAsientoDet();
                        int pos = i*col;
                        int cueCod = Integer.parseInt(listDataTabla.get(pos));
                        double monDebe = Double.parseDouble(listDataTabla.get(pos+1));                   
                        double monHaber = Double.parseDouble(listDataTabla.get(pos+2));
                        boolean detDebHab = false;
                        double detMonto = 0;
                        if(monDebe==0){
                            detDebHab=false;
                            detMonto = monHaber;
                        }
                        if(monHaber==0){
                            detDebHab=true;
                            detMonto = monDebe;
                        }                    
                        EnP3tAsientoDetId asientoDetId = new EnP3tAsientoDetId();
                        asientoDetId.setAsiCabCod(asiCabCod);
                        asientoDetId.setLibDiaCod(libDiaCod);
                        asientoDetId.setAsiDetCod((int) (System.currentTimeMillis() % Integer.MAX_VALUE));
                        asiDet.setAsiDetDebHab(detDebHab);
                        asiDet.setAsiDetMon(detMonto);
                        asiDet.setEnP3mCuenta((new CuentaDao()).getByIdActive(cueCod));
                        asiDet.setId(asientoDetId);
                        daoAsientoDet.save(asiDet);
                        
                    }
                
                    break;
                case 3:
                    libDiaCod = Integer.parseInt(request.getParameter("libDiaCod"));
                    break;
            }
            response.sendRedirect(request.getContextPath() + "/secured/contabilidad/librodiario");
        } catch (Exception e) {
        }
        
    }          
}
