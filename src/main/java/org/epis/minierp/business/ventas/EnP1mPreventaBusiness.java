package org.epis.minierp.business.ventas;

import java.util.ArrayList;
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
import org.epis.minierp.model.EnP1mPreventaCab;
import org.epis.minierp.model.EnP1mUsuario;
import org.epis.minierp.model.EnP1tFacturaVentaDet;
import org.epis.minierp.model.EnP1tFacturaVentaDetId;
import org.epis.minierp.model.EnP1tPreventaDet;
import org.epis.minierp.model.EnP1tPreventaDetId;
import org.epis.minierp.model.EnP2mProducto;
import org.epis.minierp.model.EnP2mProductoId;
import org.epis.minierp.model.TaGzzMoneda;
import org.epis.minierp.model.TaGzzTipoDescuento;
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
    EnP1mFacturaVentaBusiness facturaBusiness;

    public EnP1mPreventaBusiness() {
        preVenCabDao = new EnP1mPreventaCabDao();
        preVenDetDao = new EnP1tPreventaDetDao();
        daoPreVenOk = new EnP1cPreventaRealizadasDao();
        cabVenDao = new EnP1mFacturaVentaCabDao();
        detVenDao = new EnP1tFacturaVentaDetDao();
        proDao = new EnP2mProductoDao();
        preOkDao = new EnP1cPreventaRealizadasDao();
        pagosCuoBusiness = new EnP1mPagosCuotasBusiness();
        facturaBusiness = new EnP1mFacturaVentaBusiness();
    }

    private void createPreVenCab(String preVenCabCod, String cliCod, int catRutCod, String usuCod,
            Date preVenCabFecEmi, Date preVenCabFecVen, int preVenCabPla, double preVenCabTot,
            int tipDesCod, double preVenCabSubTot, int preVenCabIGV, String preVenCabObs,
            int monCod, char estRegCod) {

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

    private void createPreVenDet(String preVenCabCod, String claProCod,
            String subClaProCod, String proCod, double preVenDetCan) {

        //Actualiza StkPreVen del producto
        EnP2mProducto pro = proDao.getById(new EnP2mProductoId(proCod, subClaProCod, claProCod));
        double proStkPreVen = pro.getProStkPreVen();
        double proStk = pro.getProStk();
        if (proStk >= proStkPreVen + preVenDetCan) {//verifica no sobrepasar el stock para prevender
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

    private void createPreVenDet(EnP1tPreventaDet preVenDet) {
        String proCod = preVenDet.getEnP2mProducto().getId().getProCod();
        String subClaProCod = preVenDet.getEnP2mProducto().getId().getSubClaProCod();
        String claProCod = preVenDet.getEnP2mProducto().getId().getClaProCod();
        double preVenDetCan = preVenDet.getPreVenDetCan();

        //Actualiza StkPreVen del producto
        EnP2mProductoId pId = new EnP2mProductoId(proCod, subClaProCod, claProCod);
        EnP2mProducto p = proDao.getById(pId);
        double proStkPreVen = p.getProStkPreVen();
        double proStk = p.getProStk();
        if (proStk >= proStkPreVen + preVenDetCan) {//verifica no sobrepasar el stock para prevender
            p.setProStkPreVen(proStkPreVen + preVenDetCan);
        }
        proDao.update(p);

        //Crea el detalle
        preVenDetDao.save(preVenDet);
    }

    public void create(String preVenCabCod, String cliCod, int catRutCod, String usuCod,
            Date preVenCabFecEmi, Date preVenCabFecVen, int preVenCabPla, double preVenCabTot,
            int tipDesCod, double preVenCabSubTot, int preVenCabIGV, String preVenCabObs,
            int monCod, char estRegCod, List<EnP1tPreventaDet> preVenDets) {

        createPreVenCab(preVenCabCod, cliCod, catRutCod, usuCod, preVenCabFecEmi, preVenCabFecVen,
                preVenCabPla, preVenCabTot, tipDesCod, preVenCabSubTot, preVenCabIGV, preVenCabObs,
                monCod, estRegCod);

        for (int i = 0; i < preVenDets.size(); i++) {
            createPreVenDet(preVenDets.get(i));
        }
    }

    public void preVenta2Venta(String preVenCabCod, String facVenCabCod,
            int estFacCod, int metPagCod, int tipPagCod, char facVenCabModVen,
            int pagCuoNum, int maxDet4FacVen) {

        EnP1mPreventaCab pvc = preVenCabDao.getById(preVenCabCod);

        String cliCod = pvc.getEnP1mCliente().getCliCod();
        String usuCod = pvc.getEnP1mUsuario().getUsuCod();
        Date facVenCabFecEmi = DateUtil.getthisDate();
        Date facVenCabFecVen = DateUtil.addDays(facVenCabFecEmi, 1);
        int tipDesCod = pvc.getTaGzzTipoDescuento().getTipDesCod();
        int facVenPorDes = pvc.getPreVenPorDes();
        int facVenCabIGV = pvc.getPreVenCabIgv();
        String facVenCabObs = pvc.getPreVenCabObs();
        int monCod = pvc.getTaGzzMoneda().getMonCod();

        List<EnP1tFacturaVentaDet> detalles = new ArrayList();

        //cargar detalles de preventa a detalles de venta
        List<EnP1tPreventaDet> preventaDets = new ArrayList();
        preventaDets.addAll(pvc.getEnP1tPreventaDets());

        EnP1tFacturaVentaDet tempFacturaVentaDet;
        EnP1tPreventaDet tempPreventaDet;

        for (int i = 0; i < preventaDets.size(); i++) {
            tempPreventaDet = preventaDets.get(i);

            tempFacturaVentaDet = new EnP1tFacturaVentaDet();
            tempFacturaVentaDet.setId(new EnP1tFacturaVentaDetId(i + 1, facVenCabCod));
            tempFacturaVentaDet.setEnP2mProducto(tempPreventaDet.getEnP2mProducto());
            tempFacturaVentaDet.setFacVenDetCan(tempPreventaDet.getPreVenDetCan());
            tempFacturaVentaDet.setFacVenDetValUni(tempPreventaDet.getPreVenDetValUni());
            detalles.add(tempFacturaVentaDet);
        }

        facturaBusiness.create(facVenCabCod, cliCod, usuCod, facVenCabModVen,
                facVenCabFecEmi, facVenCabFecVen, tipDesCod, facVenPorDes,
                facVenCabIGV, facVenCabObs, estFacCod, metPagCod, tipPagCod,
                monCod, pagCuoNum, 'A', detalles, maxDet4FacVen);

        //documento de transicion
        EnP1cPreventaRealizadas preOk = new EnP1cPreventaRealizadas();
        preOk.setId(new EnP1cPreventaRealizadasId(preVenCabCod, facVenCabCod));
        preOk.setPreVenReaFec(facVenCabFecEmi);
        preOkDao.save(preOk);

        //inactiva la preventa una vez finalizado el proceso
        pvc.setEstRegCod('I');
        preVenCabDao.update(pvc);
    }

    public void preVenta2Venta4Lotes(String[] preVenCabCod, String iniFacVenCabCod,
            int estFacCod, int metPagCod, int tipPagCod, char facVenCabModVen,
            int pagCuoNum, int maxDet4FacVen) {

        int size = preVenCabCod.length;
        EnP1mPreventaCab tempPvc;
        int tempSizeDet4PreVen = 0; //numero de detalles por preventa
        int tempNumFac4PreVen = 0; //numero de facturas por preventa

        String facVenCabCod = iniFacVenCabCod;
        for (int i = 0; i < size; i++) {
            preVenta2Venta(preVenCabCod[i], facVenCabCod, estFacCod, metPagCod,
                    tipPagCod, facVenCabModVen, pagCuoNum, maxDet4FacVen);

            //se calcula el siguiente numero de factura para el proximo lote de facturas por preventa
            tempPvc = preVenCabDao.getById(preVenCabCod[i]);
            tempSizeDet4PreVen = tempPvc.getEnP1tPreventaDets().size();
            tempNumFac4PreVen = tempSizeDet4PreVen / maxDet4FacVen;
            if (tempNumFac4PreVen % maxDet4FacVen > 0 || tempSizeDet4PreVen < maxDet4FacVen) {
                tempNumFac4PreVen++;
            }
            //nuevo codigo de factura considerando las facturas previas generadas
            facVenCabCod = facturaBusiness.GenerateFacVenCabCod(facVenCabCod, tempNumFac4PreVen);
        }
    }

}
