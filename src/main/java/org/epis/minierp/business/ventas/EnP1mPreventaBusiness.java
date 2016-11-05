package org.epis.minierp.business.ventas;

import java.util.Date;
import java.util.List;
import org.epis.minierp.dao.logistica.EnP2mProductoDao;
import org.epis.minierp.dao.ventas.EnP1cPreventaRealizadasDao;
import org.epis.minierp.dao.ventas.EnP1mFacturaVentaCabDao;
import org.epis.minierp.dao.ventas.EnP1mPreventaCabDao;
import org.epis.minierp.dao.ventas.EnP1tFacturaVentaDetDao;
import org.epis.minierp.dao.ventas.EnP1tPreventaDetDao;
import org.epis.minierp.model.EnP1cPreventaRealizadas;
import org.epis.minierp.model.EnP1cPreventaRealizadasId;
import org.epis.minierp.model.EnP1mCatalogoRuta;
import org.epis.minierp.model.EnP1mCliente;
import org.epis.minierp.model.EnP1mFacturaVentaCab;
import org.epis.minierp.model.EnP1mPreventaCab;
import org.epis.minierp.model.EnP1mUsuario;
import org.epis.minierp.model.EnP1tFacturaVentaDet;
import org.epis.minierp.model.EnP1tFacturaVentaDetId;
import org.epis.minierp.model.EnP1tPreventaDet;
import org.epis.minierp.model.EnP1tPreventaDetId;
import org.epis.minierp.model.EnP2mProducto;
import org.epis.minierp.model.EnP2mProductoId;
import org.epis.minierp.model.TaGzzEstadoFactura;
import org.epis.minierp.model.TaGzzMetodoPagoFactura;
import org.epis.minierp.model.TaGzzMoneda;
import org.epis.minierp.model.TaGzzTipoDescuento;
import org.epis.minierp.model.TaGzzTipoPagoFactura;
import org.epis.minierp.util.DateUtil;

public class EnP1mPreventaBusiness {
    EnP1mPreventaCabDao preVenCabDao;
    EnP1tPreventaDetDao preVenDetDao;
    EnP1cPreventaRealizadasDao daoPreVenOk;
    EnP1mFacturaVentaCabDao cabVenDao;
    EnP1tFacturaVentaDetDao detVenDao;
    EnP2mProductoDao proDao;
    EnP1cPreventaRealizadasDao preOkDao;
    EnP1mPagosCuotasBusiness pagosCuoBusiness;

    public EnP1mPreventaBusiness() {
        preVenCabDao = new EnP1mPreventaCabDao();
        preVenDetDao = new EnP1tPreventaDetDao();
        daoPreVenOk = new EnP1cPreventaRealizadasDao();
        cabVenDao = new EnP1mFacturaVentaCabDao();
        detVenDao = new EnP1tFacturaVentaDetDao();
        proDao = new EnP2mProductoDao();
        preOkDao = new EnP1cPreventaRealizadasDao();
        pagosCuoBusiness = new EnP1mPagosCuotasBusiness();
    }
    
    public void createCab(String preVenCabCod, String cliCod, int catRutCod, String usuCod, 
            Date preVenCabFecEmi, Date preVenCabFecVen, int preVenCabPla, double preVenCabTot, 
            int tipDesCod, double preVenCabSubTot, int preVenCabIGV, String preVenCabObs, 
            int monCod, char estRegCod){
        
        EnP1mPreventaCab preVenCab = new EnP1mPreventaCab();
        
        //cliente
        EnP1mCliente cli = new EnP1mCliente();
        cli.setCliCod(cliCod);
        
        //ruta
        EnP1mCatalogoRuta ruta = new EnP1mCatalogoRuta();
        ruta.setCatRutCod(catRutCod);
        
        //usuario
        EnP1mUsuario usu = new EnP1mUsuario();
        usu.setUsuCod(usuCod);
        
        //tipo de descuento
        TaGzzTipoDescuento des = new TaGzzTipoDescuento();
        des.setTipDesCod(tipDesCod);
        
        //moneda
        TaGzzMoneda mon = new TaGzzMoneda();
        mon.setMonCod(monCod);
        
        preVenCab.setPreVenCabCod(preVenCabCod);
        preVenCab.setEnP1mCliente(cli);
        preVenCab.setEnP1mCatalogoRuta(ruta);
        preVenCab.setEnP1mUsuario(usu);
        preVenCab.setPreVenCabFecEmi(preVenCabFecEmi);
        preVenCab.setPreVenCabFecVen(preVenCabFecVen);
        preVenCab.setPreVenCabPla(preVenCabPla);
        preVenCab.setPreVenCabTot(preVenCabTot);
        preVenCab.setTaGzzTipoDescuento(des);
        preVenCab.setPreVenCabSubTot(preVenCabSubTot);
        preVenCab.setPreVenCabIgv(preVenCabIGV);
        preVenCab.setPreVenCabObs(preVenCabObs);
        preVenCab.setTaGzzMoneda(mon);
        preVenCab.setEstRegCod(estRegCod);
        
        preVenCabDao.save(preVenCab);
        
    }
    
    public void createDet(String preVenCabCod, String claProCod, 
            String subClaProCod, String proCod, double preVenDetCan){
        
        //Actualiza StkPreVen del producto
        EnP2mProducto pro = proDao.getById(new EnP2mProductoId(proCod, subClaProCod, claProCod));
        double proStkPreVen = pro.getProStkPreVen();
        double proStk = pro.getProStk();
        if(proStk >= proStkPreVen + preVenDetCan){//verifica no sobrepasar el stock para prevender
            pro.setProStkPreVen(proStkPreVen + preVenDetCan);
        }
        proDao.update(pro);
        
        //Crea el detalle
        double proValUni = pro.getProPreUniVen();
        EnP1tPreventaDet preVenDet = new EnP1tPreventaDet();
        int preVenDetCod = preVenDetDao.getLastPreVenDetCod(preVenCabCod);
        preVenDet.setId(new EnP1tPreventaDetId(preVenDetCod, preVenCabCod));
        preVenDet.setEnP2mProducto(pro);
        preVenDet.setPreVenDetCan(preVenDetCan);
        preVenDet.setPreVenDetValUni(proValUni);
        preVenDetDao.save(preVenDet);
    }
    
    public void createDet(EnP1tPreventaDet preVenDet){
        String proCod = preVenDet.getEnP2mProducto().getId().getProCod();
        String subClaProCod = preVenDet.getEnP2mProducto().getId().getSubClaProCod();
        String claProCod = preVenDet.getEnP2mProducto().getId().getClaProCod();
        double preVenDetCan = preVenDet.getPreVenDetCan();
        
        //Actualiza StkPreVen del producto
        EnP2mProducto pro = proDao.getById(new EnP2mProductoId(proCod, subClaProCod, claProCod));
        double proStkPreVen = pro.getProStkPreVen();
        double proStk = pro.getProStk();
        if(proStk >= proStkPreVen + preVenDetCan){//verifica no sobrepasar el stock para prevender
            pro.setProStkPreVen(proStkPreVen + preVenDetCan);
        }
        proDao.update(pro);
        
        //Crea el detalle
        preVenDetDao.save(preVenDet);
    }
    
    public void create(String preVenCabCod, String cliCod, int catRutCod, String usuCod, 
            Date preVenCabFecEmi, Date preVenCabFecVen, int preVenCabPla, double preVenCabTot, 
            int tipDesCod, double preVenCabSubTot, int preVenCabIGV, String preVenCabObs, 
            int monCod, char estRegCod, List<EnP1tPreventaDet> preVenDets){
        
        createCab(preVenCabCod, cliCod, catRutCod, usuCod, preVenCabFecEmi, preVenCabFecVen, 
                preVenCabPla, preVenCabTot, tipDesCod, preVenCabSubTot, preVenCabIGV, preVenCabObs, 
                monCod, estRegCod);
        
        for(int i = 0; i < preVenDets.size(); i++){
            createDet(preVenDets.get(i));
        }
    }
    
    public void preVenta2Venta(String preVenCabCod,int lote, int estFacCod, int metPagCod, int tipPagCod, int pagCuoNum){
        EnP1mPreventaCab preVenCab = preVenCabDao.getById(preVenCabCod);

        EnP1mFacturaVentaCab venCab = new EnP1mFacturaVentaCab();
        Date hoy = DateUtil.getthisDate();
        Date hoyMore3 = DateUtil.addDays(hoy, 3);
        
        TaGzzEstadoFactura estFac = new TaGzzEstadoFactura();
        estFac.setEstFacCod(estFacCod);
        TaGzzMetodoPagoFactura metPag = new TaGzzMetodoPagoFactura();
        metPag.setMetPagCod(metPagCod);
        TaGzzTipoPagoFactura tipPag = new TaGzzTipoPagoFactura();
        tipPag.setTipPagCod(tipPagCod);
        
        int maxMore1 = cabVenDao.getMaxValue4Lote(lote);
        
        //creando la factura con los datos de la preventa
        String facVenCabCod = String.format("%03d",lote)+"-"+String.format("%06d",maxMore1);
        venCab.setFacVenCabCod(facVenCabCod);
        venCab.setEnP1mCliente(preVenCab.getEnP1mCliente());
        venCab.setEnP1mCatalogoRuta(preVenCab.getEnP1mCatalogoRuta());
        venCab.setEnP1mUsuario(preVenCab.getEnP1mUsuario());
        venCab.setFacVenCabFecEmi(hoy);
        venCab.setFacVenCabFecVen(hoyMore3);
        venCab.setFacVenCabTot(preVenCab.getPreVenCabTot());
        venCab.setTaGzzTipoDescuento(preVenCab.getTaGzzTipoDescuento());
        venCab.setFacVenCabSubTot(preVenCab.getPreVenCabSubTot());
        venCab.setFacVenCabIgv(preVenCab.getPreVenCabIgv());
        venCab.setFacVenCabObs(preVenCab.getPreVenCabObs());
        venCab.setTaGzzEstadoFactura(estFac);
        venCab.setTaGzzMetodoPagoFactura(metPag);
        venCab.setTaGzzTipoPagoFactura(tipPag);
        venCab.setTaGzzMoneda(preVenCab.getTaGzzMoneda());
        venCab.setEstRegCod('A');
        cabVenDao.save(venCab);
        
        List<EnP1tPreventaDet> preVenDets = preVenDetDao.getAllDet4PreVenCab(preVenCabCod);
        EnP1tPreventaDet temp;
        EnP1tFacturaVentaDet detVen;
        EnP2mProducto proTemp;
        for(int i = 0; i < preVenDets.size(); i++){
            temp = preVenDets.get(i);
            proTemp = temp.getEnP2mProducto();
            
            detVen = new EnP1tFacturaVentaDet();
            detVen.setId(new EnP1tFacturaVentaDetId(i+1, facVenCabCod));
            detVen.setEnP2mProducto(proTemp);
            detVen.setFacVenDetCan(temp.getPreVenDetCan());
            detVen.setFacVenDetValUni(temp.getPreVenDetValUni());
            
            //descuendo al stock del producto
            proTemp.setProStk(proTemp.getProStk() - temp.getPreVenDetCan());
            //descuento al stock de preventa del producto
            proTemp.setProStkPreVen(proTemp.getProStkPreVen() - temp.getPreVenDetCan());
            proDao.update(proTemp);
            
            //crea el detalle
            detVenDao.save(detVen);
        }
        
        //documento de transicion
        EnP1cPreventaRealizadas preOk = new EnP1cPreventaRealizadas();
        preOk.setId(new EnP1cPreventaRealizadasId(preVenCabCod, facVenCabCod));
        preOk.setPreVenReaFec(hoy);
        preOkDao.save(preOk);
        
        if(tipPagCod == 2){
            //es pago por cuotas
            pagosCuoBusiness.create(facVenCabCod, pagCuoNum, preVenCab.getPreVenCabTot(), hoy);
        }

        //inactiva la preventa una vez finalizado el proceso
        preVenCab.setEstRegCod('I');
        preVenCabDao.update(preVenCab);
    }
    
    public void preVenta2Venta4Lotes(String[] preVenCabCod,int lote, int estFacCod, int metPagCod, int tipPagCod, int pagCuoNum){
        int size = preVenCabCod.length;
        for (int i = 0; i < size; i++) {
            preVenta2Venta(preVenCabCod[i], lote, estFacCod, metPagCod, tipPagCod, pagCuoNum);
        }
    }
    
}
