package org.epis.minierp.business;

import java.util.List;
import java.util.Set;
import org.epis.minierp.dao.ventas.EnP1cPreventaRealizadasDao;
import org.epis.minierp.dao.ventas.EnP1mFacturaVentaCabDao;
import org.epis.minierp.dao.ventas.EnP1mPreventaCabDao;
import org.epis.minierp.dao.ventas.EnP1tFacturaVentaDetDao;
import org.epis.minierp.dao.ventas.EnP1tPreventaDetDao;
import org.epis.minierp.model.EnP1mFacturaVentaCab;
import org.epis.minierp.model.EnP1mPreventaCab;
import org.epis.minierp.model.EnP1tPreventaDet;

public class EnP1mPreVentas {
    EnP1mPreventaCabDao cabPreVenDao;
    EnP1tPreventaDetDao detPreVenDao;
    EnP1cPreventaRealizadasDao daoPreVenOk;
    EnP1mFacturaVentaCabDao cabVenDao;
    EnP1tFacturaVentaDetDao detVenDao;

    public EnP1mPreVentas() {
        cabPreVenDao = new EnP1mPreventaCabDao();
        detPreVenDao = new EnP1tPreventaDetDao();
        daoPreVenOk = new EnP1cPreventaRealizadasDao();
        cabVenDao = new EnP1mFacturaVentaCabDao();
        detVenDao = new EnP1tFacturaVentaDetDao();
    }
    
    public void GenerarPreventa(EnP1mPreventaCab cab, List<EnP1tPreventaDet> dets ){
        cabPreVenDao.save(cab);
        for (EnP1tPreventaDet next : dets) {
            detPreVenDao.save(next);
        }
    }
    
    public void Preventa2FacturaVenta(String codigoPreventa){
        EnP1mPreventaCab tempCab = cabPreVenDao.getById(codigoPreventa);
        EnP1mFacturaVentaCab newFacVen = new EnP1mFacturaVentaCab();
        //newFacVen.set
        
        Set<EnP1tPreventaDet> tempDets = tempCab.getEnP1tPreventaDets();
        for (EnP1tPreventaDet det : tempDets) {
            
        }
    }
    
}
