package org.epis.minierp.business.ventas;

import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;
import org.epis.minierp.dao.general.TaGzzEstadoFacturaDao;
import org.epis.minierp.dao.general.TaGzzMetodoPagoFacturaDao;
import org.epis.minierp.dao.general.TaGzzMonedaDao;
import org.epis.minierp.dao.general.TaGzzTipoDescuentoDao;
import org.epis.minierp.dao.general.TaGzzTipoPagoFacturaDao;
import org.epis.minierp.dao.logistica.EnP2mGuiaRemRemitenteDao;
import org.epis.minierp.dao.logistica.EnP2mGuiaRemTransportistaDao;
import org.epis.minierp.dao.logistica.EnP2mProductoDao;
import org.epis.minierp.dao.ventas.EnP1cDevolucionVentasDao;
import org.epis.minierp.dao.ventas.EnP1mClienteDao;
import org.epis.minierp.dao.ventas.EnP1mFacturaVentaCabDao;
import org.epis.minierp.dao.ventas.EnP1mPagosCuotasCabDao;
import org.epis.minierp.dao.ventas.EnP1tFacturaVentaDetDao;
import org.epis.minierp.model.EnP1cDevolucionVentas;
import org.epis.minierp.model.EnP1mFacturaVentaCab;
import org.epis.minierp.model.EnP1mPagosCuotasCab;
import org.epis.minierp.model.EnP1tFacturaVentaDet;
import org.epis.minierp.model.EnP1tFacturaVentaDetId;
import org.epis.minierp.model.EnP2mGuiaRemRemitente;
import org.epis.minierp.model.EnP2mGuiaRemTransportista;
import org.epis.minierp.model.EnP2mProducto;
import org.epis.minierp.model.EnP2mProductoId;
import org.epis.minierp.util.DateUtil;


public class EnP1mFacturaVentaBusiness {
    
    EnP1mFacturaVentaCabDao facVenCabDao;
    EnP2mGuiaRemRemitenteDao guiRemRemDao;
    EnP2mGuiaRemTransportistaDao guiRemTraDao;
    EnP1mPagosCuotasCabDao pagCuoDao;
    EnP1cDevolucionVentasDao devVenDao;
    EnP2mProductoDao proDao;
    EnP1tFacturaVentaDetDao facVenDetDao;

    public EnP1mFacturaVentaBusiness() {
        facVenCabDao = new EnP1mFacturaVentaCabDao();
        guiRemRemDao = new EnP2mGuiaRemRemitenteDao();
        guiRemTraDao = new EnP2mGuiaRemTransportistaDao();
        pagCuoDao = new EnP1mPagosCuotasCabDao();
        devVenDao = new EnP1cDevolucionVentasDao();
        proDao = new EnP2mProductoDao();
        facVenDetDao = new EnP1tFacturaVentaDetDao();
    }
        
    public void devolucionParcial(String facVenCabCod, String facVenNewCod, List <String> proCods, 
            List <String> proPris, List <String> proAmosOld, List <String> proAmosNew, double facVenSubTot, double facVenTot){        
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
        
        //Creando una nueva factura desde todos los datos de la antigua factura de venta
        EnP1mFacturaVentaCab cabNewFac = new EnP1mFacturaVentaCab();
        cabNewFac.setFacVenCabCod(facVenNewCod);
        cabNewFac.setEnP1mCliente(cabFacVen.getEnP1mCliente());
        cabNewFac.setEnP1mUsuario(cabFacVen.getEnP1mUsuario());
        cabNewFac.setFacVenCabFecEmi(cabFacVen.getFacVenCabFecEmi());
        cabNewFac.setFacVenCabFecVen(cabFacVen.getFacVenCabFecVen());
        cabNewFac.setFacVenPorDes(cabFacVen.getFacVenPorDes());
        cabNewFac.setFacVenCabSubTot(facVenSubTot);
        cabNewFac.setFacVenCabTot(facVenTot);
        cabNewFac.setFacVenCabIgv(cabFacVen.getFacVenCabIgv());
        cabNewFac.setFacVenCabObs(cabFacVen.getFacVenCabObs());
        cabNewFac.setTaGzzEstadoFactura(cabFacVen.getTaGzzEstadoFactura());
        cabNewFac.setTaGzzMetodoPagoFactura(cabFacVen.getTaGzzMetodoPagoFactura());
        cabNewFac.setTaGzzTipoPagoFactura(cabFacVen.getTaGzzTipoPagoFactura());
        cabNewFac.setTaGzzMoneda(cabFacVen.getTaGzzMoneda());
        cabNewFac.setTaGzzTipoDescuento(cabFacVen.getTaGzzTipoDescuento());
        cabNewFac.setEstRegCod('A');
        
        facVenCabDao.save(cabNewFac);
        
        int counter = 0;
        
        //Devolviendo el stock a cada producto del detalle       
        for(int i = 0;i < proCods.size();i++) {
            StringTokenizer st = new StringTokenizer(proCods.get(i),"-");
            
            //Obteniendo producto
            EnP2mProductoId productId = new EnP2mProductoId();
            productId.setClaProCod(st.nextToken());
            productId.setSubClaProCod(st.nextToken());                
            productId.setProCod(st.nextToken());
            EnP2mProducto product = proDao.getById(productId);
            
            //Actualizando stock = ACTUAL + (VENTA_OLD_CANT - VENTA_NEW_CANT)
            product.setProStk(product.getProStk() + (Double.parseDouble(proAmosOld.get(i)) - Double.parseDouble(proAmosNew.get(i))));
            proDao.update(product);
            
            //Sólo si no se ha devuelto toda la cantidad del producto, se agrega un nuevo detalle a la nueva factura
            if(Double.parseDouble(proAmosNew.get(i)) > 0){
                EnP1tFacturaVentaDet det = new EnP1tFacturaVentaDet();

                EnP1tFacturaVentaDetId detId = new EnP1tFacturaVentaDetId();
                detId.setFacVenCabCod(facVenNewCod);
                detId.setFacVenDetCod(counter);
                det.setId(detId);
                det.setEnP1mFacturaVentaCab(cabNewFac);
                det.setEnP2mProducto(product);
                det.setFacVenDetCan(Double.parseDouble(proAmosNew.get(i)));
                det.setFacVenDetValUni(Double.parseDouble(proPris.get(i)));            

                facVenDetDao.save(det);
                counter++;
            }            
        }
        
        //Se cambia el estado de registro a la factura de venta antigua (estRegCod = I)
        cabFacVen.setEstRegCod('I');
        facVenCabDao.update(cabFacVen);
        
        //Se crea la entidad de devolución
        EnP1cDevolucionVentas devVen = new EnP1cDevolucionVentas();
        devVen.setEnP1mFacturaVentaCabByFacVenCabCod(cabFacVen);
        devVen.setFacVenCabCod(facVenCabCod);
        devVen.setEnP1mFacturaVentaCabByDevVenNewFac(cabNewFac);
        devVen.setDevVenDet("Devolucion parcial de la Factura y sus productos");
        devVen.setDevVenFec(DateUtil.getthisDate()); 
        devVen.setDevVenMon(cabFacVen.getFacVenCabTot());
        devVenDao.save(devVen);
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
