
package org.epis.minierp.business.ventas;

import java.util.ArrayList;
import java.util.List;
import org.epis.minierp.dao.logistica.EnP2mGuiaRemRemitenteDao;
import org.epis.minierp.dao.logistica.EnP2mGuiaRemTransportistaDao;
import org.epis.minierp.dao.logistica.EnP2mProductoDao;
import org.epis.minierp.dao.ventas.EnP1cDevolucionVentasDao;
import org.epis.minierp.dao.ventas.EnP1mFacturaVentaCabDao;
import org.epis.minierp.dao.ventas.EnP1mPagosCuotasCabDao;
import org.epis.minierp.model.EnP1cDevolucionVentas;
import org.epis.minierp.model.EnP1mFacturaVentaCab;
import org.epis.minierp.model.EnP1mPagosCuotasCab;
import org.epis.minierp.model.EnP1tFacturaVentaDet;
import org.epis.minierp.model.EnP2mGuiaRemRemitente;
import org.epis.minierp.model.EnP2mGuiaRemTransportista;
import org.epis.minierp.model.EnP2mProducto;
import org.epis.minierp.util.DateUtil;


public class EnP1mFacturaVentaBusiness {
    
    EnP1mFacturaVentaCabDao facVenCabDao;
    EnP2mGuiaRemRemitenteDao guiRemRemDao;
    EnP2mGuiaRemTransportistaDao guiRemTraDao;
    EnP1mPagosCuotasCabDao pagCuoDao;
    EnP1cDevolucionVentasDao devVenDao;
    EnP2mProductoDao proDao;

    public EnP1mFacturaVentaBusiness() {
        facVenCabDao = new EnP1mFacturaVentaCabDao();
        guiRemRemDao = new EnP2mGuiaRemRemitenteDao();
        guiRemTraDao = new EnP2mGuiaRemTransportistaDao();
        pagCuoDao = new EnP1mPagosCuotasCabDao();
        devVenDao = new EnP1cDevolucionVentasDao();
        proDao = new EnP2mProductoDao();
    }
        
    public void devolucionParcial(String facVenCabCod, String facVenNewCod){        
        EnP1mFacturaVentaCab cabFacVen = facVenCabDao.getById(facVenCabCod);
        EnP1mFacturaVentaCab cabNewFac = facVenCabDao.getById(facVenNewCod);
        
        //Cancela guia de remision remitente (estRegCod = I)
        EnP2mGuiaRemRemitente guiRemRem = cabFacVen.getEnP2mGuiaRemRemitente();
        if(guiRemRem != null){
            guiRemRem.setEstRegCod('I');
            guiRemRemDao.update(guiRemRem);
        }
        
        //Cancela guia de remision transportista (estRegCod = I)
        EnP2mGuiaRemTransportista guiRemTra = cabFacVen.getEnP2mGuiaRemTransportista();
        if(guiRemTra != null){
            guiRemTra.setEstRegCod('I');
            guiRemTraDao.update(guiRemTra);
        }
        
        //inabilita el registros de pagos por cuotas si este tiene uno (estRegCod = I)
        EnP1mPagosCuotasCab pagCuo = cabFacVen.getEnP1mPagosCuotasCab();
        if(pagCuo != null){
            pagCuo.setEstRegCod('I');
            pagCuoDao.update(pagCuo);
        }
        
        //se crea la entidad de devolucion
        EnP1cDevolucionVentas devVen = new EnP1cDevolucionVentas();
        devVen.setEnP1mFacturaVentaCabByFacVenCabCod(cabFacVen);
        devVen.setFacVenCabCod(facVenCabCod);
        devVen.setEnP1mFacturaVentaCabByDevVenNewFac(cabNewFac);
        devVen.setDevVenDet("Devolucion parcial de la Factura y sus productos");
        devVen.setDevVenFec(DateUtil.getthisDate()); //el dia q se ejecuta esta funcion
        devVen.setDevVenMon(cabFacVen.getFacVenCabTot());
        devVenDao.save(devVen);
        
        //listando todos los detalles
        List<EnP1tFacturaVentaDet> detFacVen = new ArrayList<>();
        detFacVen.addAll(cabFacVen.getEnP1tFacturaVentaDets());
        
        //devolviendo el stock a cada producto del detalle
        EnP2mProducto temp;
        for (EnP1tFacturaVentaDet detalle : detFacVen) {
            temp = detalle.getEnP2mProducto();
            //insertar aqui parte contable por producto
            temp.setProStk(temp.getProStk() + detalle.getFacVenDetCan());
            proDao.update(temp);
        }
                
        //Se cambia su estado de registros (estRegCod = I)
        cabFacVen.setEstRegCod('I');
        facVenCabDao.update(cabFacVen);

    }
    
    public void devolucionTotal(String facVenCabCod){
        EnP1mFacturaVentaCab cabFacVen = facVenCabDao.getById(facVenCabCod);
        
        //Cancela guia de remision remitente (estRegCod = I)
        EnP2mGuiaRemRemitente guiRemRem = cabFacVen.getEnP2mGuiaRemRemitente();
        if(guiRemRem != null){
            guiRemRem.setEstRegCod('I');
            guiRemRemDao.update(guiRemRem);
        }
        
        //Cancela guia de remision transportista (estRegCod = I)
        EnP2mGuiaRemTransportista guiRemTra = cabFacVen.getEnP2mGuiaRemTransportista();
        if(guiRemTra != null){
            guiRemTra.setEstRegCod('I');
            guiRemTraDao.update(guiRemTra);
        }
        
        //Inhabilita el registro de pagos por cuotas si este tiene uno (estRegCod = I)
        EnP1mPagosCuotasCab pagCuo = cabFacVen.getEnP1mPagosCuotasCab();
        if(pagCuo != null){
            pagCuo.setEstRegCod('I');
            pagCuoDao.update(pagCuo);
        }
        
        //Se crea la entidad de devolución
        EnP1cDevolucionVentas devVen = new EnP1cDevolucionVentas();
        devVen.setEnP1mFacturaVentaCabByFacVenCabCod(cabFacVen);
        devVen.setFacVenCabCod(facVenCabCod);
        devVen.setEnP1mFacturaVentaCabByDevVenNewFac(null); //No hay nueva factura ya que es una devolucion total
        devVen.setDevVenDet("Devolucion Total de la Factura y sus productos");
        devVen.setDevVenFec(DateUtil.getthisDate()); //Fecha actual
        devVen.setDevVenMon(cabFacVen.getFacVenCabTot());
        devVenDao.save(devVen);
        
        //Listando todos los detalles
        List <EnP1tFacturaVentaDet> detFacVen = new ArrayList<>(cabFacVen.getEnP1tFacturaVentaDets());
        
        //Devolviendo el stock a cada producto del detalle
        EnP2mProducto temp = null;
        for (EnP1tFacturaVentaDet detalle : detFacVen) {
            temp = detalle.getEnP2mProducto();
            //Insertar aqui parte contable por producto
            temp.setProStk(temp.getProStk() + detalle.getFacVenDetCan());
            proDao.update(temp);
        }
                
        //Se cambia su estado de registros (estRegCod = I)
        cabFacVen.setEstRegCod('I');
        facVenCabDao.update(cabFacVen);
    }  
}
