package org.epis.minierp.business.contabilidad;

import java.util.Date;
import java.util.Iterator;
import org.epis.minierp.dao.contabilidad.AsientoCabDao;
import org.epis.minierp.dao.contabilidad.AsientoDetDao;
import org.epis.minierp.dao.contabilidad.CuentaDao;
import org.epis.minierp.dao.contabilidad.LibroDiarioDao;
import org.epis.minierp.dao.general.TaGzzMonedaDao;
import org.epis.minierp.dao.general.TaGzzTipoComprobanteDao;
import org.epis.minierp.model.EnP3mAsientoCab;
import org.epis.minierp.model.EnP3mAsientoCabId;
import org.epis.minierp.model.EnP3mCuenta;
import org.epis.minierp.model.EnP3tAsientoDet;
import org.epis.minierp.model.EnP3tAsientoDetId;
import org.epis.minierp.model.TaGzzMoneda;
import org.epis.minierp.model.TaGzzTipoComprobante;

public class RegistroAsientosBusiness
{
    public void generarAsientosAmarre(EnP3mAsientoCab asientoCab)
    {
        AsientoCabDao daoAsientoCab = new AsientoCabDao();
        AsientoDetDao daoAsientoDet = new AsientoDetDao();
        
        EnP3mAsientoCab asiCab = new EnP3mAsientoCab();
        
        int asiCabCod = asientoCab.getId().getAsiCabCod() + 1;
        int libDiaCod = asientoCab.getId().getLibDiaCod();
        
        EnP3mAsientoCabId  asientoCabId = new EnP3mAsientoCabId();
        asientoCabId.setAsiCabCod(asiCabCod);
        asientoCabId.setLibDiaCod(libDiaCod);
        
        asiCab.setTaGzzMoneda(asientoCab.getTaGzzMoneda());
        //asiCab.setTaGzzTipoComprobante();
        asiCab.setAsiCabFec(new Date());
        asiCab.setAsiCabGlo("Asiento Amarre");
        asiCab.setAsiCabTip('M');
        //asiCab.setAsiCabNumCom();
        asiCab.setId(asientoCabId);
        asiCab.setEstRegCod('A');   
        
        
        Iterator it =  asientoCab.getEnP3tAsientoDets().iterator();
        boolean flag = true;
        
        int cont=1;
        
        while(it.hasNext()){
            EnP3tAsientoDet asientoDet = (EnP3tAsientoDet)it.next();
           
            EnP3mCuenta enP3mCuentaDebe = asientoDet.getEnP3mCuenta().getEnP3mCuentaByCueAmaDeb();
            EnP3mCuenta enP3mCuentaHaber = asientoDet.getEnP3mCuenta().getEnP3mCuentaByCueAmaHab();
            
            if(enP3mCuentaDebe == null  || enP3mCuentaHaber == null)
                continue;
            else if(flag){
                daoAsientoCab.save(asiCab); 
                flag=false;  
            }
            
            System.out.println(enP3mCuentaDebe.getCueCod());

            //1er ASIENTO_DETALLE DEBE
            
            EnP3tAsientoDetId asientoDetId1 = new EnP3tAsientoDetId();
            asientoDetId1.setAsiCabCod(asiCabCod);
            asientoDetId1.setLibDiaCod(libDiaCod);
            asientoDetId1.setAsiDetCod(cont++); 

            EnP3tAsientoDet asiDet1 = new EnP3tAsientoDet();
            asiDet1.setAsiDetDebHab(true);
            asiDet1.setAsiDetMon(asientoDet.getAsiDetMon());
            asiDet1.setEnP3mCuenta(enP3mCuentaDebe);
            asiDet1.setId(asientoDetId1);
            daoAsientoDet.save(asiDet1); 

            //2do ASIENTO_DETALLE HABER

            EnP3tAsientoDetId asientoDetId2 = new EnP3tAsientoDetId();
            asientoDetId2.setAsiCabCod(asiCabCod);
            asientoDetId2.setLibDiaCod(libDiaCod);
            asientoDetId2.setAsiDetCod(cont++); 

            EnP3tAsientoDet asiDet2 = new EnP3tAsientoDet();
            asiDet2.setAsiDetDebHab(false);
            asiDet2.setAsiDetMon(asientoDet.getAsiDetMon());
            asiDet2.setEnP3mCuenta(enP3mCuentaHaber);
            asiDet2.setId(asientoDetId2);
            daoAsientoDet.save(asiDet2);            
        }
    }

    public void create(char asiCabTip, String asiCabGlo, Date asiCabFec, Integer tipComCod, String asiCabNumCom, int monCod, String[] cueNum, String[] asiDetDeb, String[] asiDetHab) {
        LibroDiarioDao libDiaDao = new LibroDiarioDao();
        AsientoCabDao daoAsientoCab = new AsientoCabDao();
        AsientoDetDao daoAsientoDet = new AsientoDetDao();
        CuentaDao cuentaDao = new CuentaDao();
        
        EnP3mAsientoCab asiCab = new EnP3mAsientoCab();
        
        int libDiaCod = libDiaDao.getCurrent().getLibDiaCod();
        int asiCabCod = daoAsientoCab.getNext();
        TaGzzMoneda taGzzMoneda = (new TaGzzMonedaDao()).getById(monCod);
        TaGzzTipoComprobante taGzzTipoComprobante = null;
        if(tipComCod != 0)
            taGzzTipoComprobante = (new TaGzzTipoComprobanteDao()).getById(tipComCod);
        
        EnP3mAsientoCabId asientoCabId = new EnP3mAsientoCabId();
        asientoCabId.setAsiCabCod(asiCabCod);
        asientoCabId.setLibDiaCod(libDiaCod);
        
        asiCab.setId(asientoCabId);
        asiCab.setAsiCabTip(asiCabTip);
        asiCab.setAsiCabGlo(asiCabGlo);
        asiCab.setAsiCabFec(asiCabFec);
        asiCab.setTaGzzTipoComprobante(taGzzTipoComprobante);
        asiCab.setAsiCabNumCom(asiCabNumCom);
        asiCab.setTaGzzMoneda(taGzzMoneda);
        asiCab.setEstRegCod('A');
        daoAsientoCab.save(asiCab);
 
        for(int i = 0; i < cueNum.length; i++){
            EnP3tAsientoDet asiDet = new EnP3tAsientoDet();
            EnP3tAsientoDetId idDet = new EnP3tAsientoDetId();
            EnP3mCuenta cuenta = cuentaDao.getByNumActive(cueNum[i]);
            idDet.setLibDiaCod(libDiaCod);
            idDet.setAsiCabCod(asiCabCod);
            idDet.setAsiDetCod(i + 1);
            asiDet.setId(idDet);
            asiDet.setEnP3mCuenta(cuenta);

            if(Double.parseDouble(asiDetDeb[i]) != 0)
            {
                asiDet.setAsiDetDebHab(true);
                asiDet.setAsiDetMon(Double.parseDouble(asiDetDeb[i]));
            }
            else
            {
                asiDet.setAsiDetDebHab(false);
                asiDet.setAsiDetMon(Double.parseDouble(asiDetHab[i]));
            }

            daoAsientoDet.save(asiDet);
            asiCab.getEnP3tAsientoDets().add(asiDet);
        }

        generarAsientosAmarre(asiCab);
    }
}
