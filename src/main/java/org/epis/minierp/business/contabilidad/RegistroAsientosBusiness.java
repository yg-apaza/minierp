package org.epis.minierp.business.contabilidad;

import java.util.Date;
import java.util.Iterator;
import org.epis.minierp.dao.contabilidad.AsientoCabDao;
import org.epis.minierp.dao.contabilidad.AsientoDetDao;
import org.epis.minierp.model.EnP3mAsientoCab;
import org.epis.minierp.model.EnP3mAsientoCabId;
import org.epis.minierp.model.EnP3mCuenta;
import org.epis.minierp.model.EnP3tAsientoDet;
import org.epis.minierp.model.EnP3tAsientoDetId;

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
            asientoDetId1.setAsiDetCod((int) (System.currentTimeMillis() % Integer.MAX_VALUE)); 

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
            asientoDetId2.setAsiDetCod((int) (System.currentTimeMillis() % Integer.MAX_VALUE)); 

            EnP3tAsientoDet asiDet2 = new EnP3tAsientoDet();
            asiDet2.setAsiDetDebHab(false);
            asiDet2.setAsiDetMon(asientoDet.getAsiDetMon());
            asiDet2.setEnP3mCuenta(enP3mCuentaHaber);
            asiDet2.setId(asientoDetId2);
            daoAsientoDet.save(asiDet2);            
        }
    }
}
