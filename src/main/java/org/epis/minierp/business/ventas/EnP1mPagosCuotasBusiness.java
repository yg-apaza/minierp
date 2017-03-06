
package org.epis.minierp.business.ventas;

import java.math.BigDecimal;
import java.util.Date;
import org.epis.minierp.dao.general.EnP1mEmpresaDao;
import org.epis.minierp.dao.ventas.EnP1mFacturaVentaCabDao;
import org.epis.minierp.dao.ventas.EnP1mPagosCuotasCabDao;
import org.epis.minierp.dao.ventas.EnP1tPagosCuotasDetDao;
import org.epis.minierp.model.EnP1mEmpresa;
import org.epis.minierp.model.EnP1mFacturaVentaCab;
import org.epis.minierp.model.EnP1mPagosCuotasCab;
import org.epis.minierp.model.EnP1tPagosCuotasDet;
import org.epis.minierp.model.EnP1tPagosCuotasDetId;
import org.epis.minierp.model.TaGzzEstadoFactura;
import org.epis.minierp.util.BigDecimalUtil;
import org.epis.minierp.util.DateUtil;

public class EnP1mPagosCuotasBusiness {
    EnP1mPagosCuotasCabDao pagCuoCabDao;
    EnP1tPagosCuotasDetDao pagCuoDetDao;
    EnP1mFacturaVentaCabDao facVenDao;
    EnP1mEmpresaDao empDao;
    int empNumDec;
    
    public EnP1mPagosCuotasBusiness() {
        pagCuoCabDao = new EnP1mPagosCuotasCabDao();
        pagCuoDetDao = new EnP1tPagosCuotasDetDao();
        facVenDao = new EnP1mFacturaVentaCabDao();
        empDao = new EnP1mEmpresaDao();
        empNumDec = empDao.getById(01).getEmpNumDec();
    }
    
    public void create(int facVenCabCod, int pagCuoNum, 
            BigDecimal pagCuoDeuTot, Date pagCuoFecIni){
        
        EnP1mPagosCuotasCab cabcuo = new EnP1mPagosCuotasCab();
        EnP1mFacturaVentaCab facCab = new EnP1mFacturaVentaCab();
        facCab.setFacVenCabCod(facVenCabCod);
        
        cabcuo.setFacVenCabCod(facVenCabCod);
        cabcuo.setEnP1mFacturaVentaCab(facCab);
        cabcuo.setPagCuoNum(pagCuoNum);
        cabcuo.setPagCuoNumPag(0); //0 cuotas pagadas
        cabcuo.setPagCuoDeuTot(pagCuoDeuTot);
        cabcuo.setPagCuoTotPag(BigDecimal.ZERO); //0 pagado
        cabcuo.setPagCuoMonXcuo(BigDecimalUtil.dividir(pagCuoDeuTot, BigDecimalUtil.get(pagCuoNum), empNumDec));
        cabcuo.setPagCuoFecIni(pagCuoFecIni);
        cabcuo.setPagCuoFecFin(DateUtil.addDays(pagCuoFecIni, 30*pagCuoNum));
        cabcuo.setPagCuoFecPag(DateUtil.addDays(pagCuoFecIni, 30));
        cabcuo.setEstRegCod('A');
        
        pagCuoCabDao.save(cabcuo);
        
    }
    
    public void update4pagos(String facVenCabCod, BigDecimal montoPagado) {
        EnP1mPagosCuotasCab cabcuo = pagCuoCabDao.getById(facVenCabCod);
        EnP1tPagosCuotasDet detcuo = new EnP1tPagosCuotasDet();
        
        int pagCuoDetCod = pagCuoDetDao.getLastpagCuoDetCod(facVenCabCod);
        detcuo.setId(new EnP1tPagosCuotasDetId(pagCuoDetCod, cabcuo.getFacVenCabCod()));
        detcuo.setPagCuoDetTotPag(montoPagado);
        pagCuoDetDao.save(detcuo);
        
        BigDecimal totalPagado = cabcuo.getPagCuoTotPag();
        BigDecimal totalDeuda = cabcuo.getPagCuoDeuTot();
        BigDecimal suma = BigDecimalUtil.sumar(totalPagado, montoPagado, empNumDec);
        int numPagTot = cabcuo.getPagCuoNumPag();
        Date diaNextPago = cabcuo.getPagCuoFecPag();
        cabcuo.setPagCuoTotPag(suma);
        cabcuo.setPagCuoNumPag(numPagTot+1);
        cabcuo.setPagCuoFecPag(DateUtil.addDays(diaNextPago, 30));
        if(suma.compareTo(totalDeuda) >= 0){
            cabcuo.setEstRegCod('I');
            
            //pasando a pagado la factura
            EnP1mFacturaVentaCab facVenCab = facVenDao.getById(cabcuo.getFacVenCabCod());
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
