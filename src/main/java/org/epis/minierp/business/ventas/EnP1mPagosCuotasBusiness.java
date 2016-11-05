
package org.epis.minierp.business.ventas;

import java.util.Date;
import org.epis.minierp.dao.ventas.EnP1mFacturaVentaCabDao;
import org.epis.minierp.dao.ventas.EnP1mPagosCuotasCabDao;
import org.epis.minierp.dao.ventas.EnP1tPagosCuotasDetDao;
import org.epis.minierp.model.EnP1mFacturaVentaCab;
import org.epis.minierp.model.EnP1mPagosCuotasCab;
import org.epis.minierp.model.EnP1tPagosCuotasDet;
import org.epis.minierp.model.EnP1tPagosCuotasDetId;
import org.epis.minierp.model.TaGzzEstadoFactura;
import org.epis.minierp.util.DateUtil;

public class EnP1mPagosCuotasBusiness {
    EnP1mPagosCuotasCabDao pagCuoCabDao;
    EnP1tPagosCuotasDetDao pagCuoDetDao;
    EnP1mFacturaVentaCabDao facVenDao;

    public EnP1mPagosCuotasBusiness() {
        pagCuoCabDao = new EnP1mPagosCuotasCabDao();
        pagCuoDetDao = new EnP1tPagosCuotasDetDao();
        facVenDao = new EnP1mFacturaVentaCabDao();
    }
    
    public void create(String facVenCabCod, int pagCuoNum, 
            double pagCuoDeuTot, Date pagCuoFecIni){
        
        EnP1mPagosCuotasCab cabcuo = new EnP1mPagosCuotasCab();
        EnP1mFacturaVentaCab facCab = new EnP1mFacturaVentaCab();
        facCab.setFacVenCabCod(facVenCabCod);
        
        cabcuo.setFacVenCabCod(facVenCabCod);
        cabcuo.setEnP1mFacturaVentaCab(facCab);
        cabcuo.setPagCuoNum(pagCuoNum);
        cabcuo.setPagCuoNumPag(0); //0 cuotas pagadas
        cabcuo.setPagCuoDeuTot(pagCuoDeuTot);
        cabcuo.setPagCuoTotPag(0); //0 pagado
        cabcuo.setPagCuoMonXcuo(pagCuoDeuTot/pagCuoNum);
        cabcuo.setPagCuoFecIni(pagCuoFecIni);
        cabcuo.setPagCuoFecFin(DateUtil.addDays(pagCuoFecIni, 30*pagCuoNum));
        cabcuo.setPagCuoFecPag(DateUtil.addDays(pagCuoFecIni, 30));
        cabcuo.setEstRegCod('A');
        
        pagCuoCabDao.save(cabcuo);
        
    }
    
    public void update4pagos(String facVenCabCod, double montoPagado) {
        EnP1mPagosCuotasCab cabcuo = pagCuoCabDao.getById(facVenCabCod);
        EnP1tPagosCuotasDet detcuo = new EnP1tPagosCuotasDet();
        
        int pagCuoDetCod = pagCuoDetDao.getLastpagCuoDetCod(facVenCabCod);
        detcuo.setId(new EnP1tPagosCuotasDetId(pagCuoDetCod, facVenCabCod));
        detcuo.setPagCuoDetTotPag(montoPagado);
        pagCuoDetDao.save(detcuo);
        
        double totalPagado = cabcuo.getPagCuoTotPag();
        double totalDeuda = cabcuo.getPagCuoDeuTot();
        int numPagTot = cabcuo.getPagCuoNumPag();
        Date diaNextPago = cabcuo.getPagCuoFecPag();
        cabcuo.setPagCuoTotPag(totalPagado+montoPagado);
        cabcuo.setPagCuoNumPag(numPagTot+1);
        cabcuo.setPagCuoFecPag(DateUtil.addDays(diaNextPago, 30));
        if(totalPagado + montoPagado >= totalDeuda){
            cabcuo.setEstRegCod('I');
            
            //pasando a pagado la factura
            EnP1mFacturaVentaCab facVenCab = facVenDao.getById(facVenCabCod);
            TaGzzEstadoFactura pagado = new TaGzzEstadoFactura();
            pagado.setEstFacCod(1);//estado cancelado
            facVenCab.setTaGzzEstadoFactura(pagado);
            facVenDao.update(facVenCab);
        }
        pagCuoCabDao.save(cabcuo);

    }

    private void setEstRegCod(String facVenCabCod, char estRegCod){
        EnP1mPagosCuotasCab cabcuo = pagCuoCabDao.getById(facVenCabCod);
        cabcuo.setEstRegCod(estRegCod);
        pagCuoCabDao.update(cabcuo);
    }
    
    public void activate(String facVenCabCod){
        setEstRegCod(facVenCabCod, 'A');
    }
    
    public void disable(String facVenCabCod) {
        setEstRegCod(facVenCabCod, 'I');
    }

    public void delete(String facVenCabCod){
        setEstRegCod(facVenCabCod, '*');
    } 
    
    
}
