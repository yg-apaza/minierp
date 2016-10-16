package org.epis.minierp.business.configuracion;

import org.epis.minierp.dao.general.EnP1mPuntoVentaDao;
import org.epis.minierp.model.EnP1mPuntoVenta;
import org.epis.minierp.model.EnP1mPuntoVentaId;


public class EnP1mPuntoVentaBusiness {
    EnP1mPuntoVentaDao pvDao;

    public EnP1mPuntoVentaBusiness() {
        pvDao = new EnP1mPuntoVentaDao();
    }

    public void create(int sucCod, String punVenDes, char estRegCod) {
        int punVenCod = pvDao.getLastPunVenCod();
        EnP1mPuntoVenta pv = new EnP1mPuntoVenta();
        pv.setId(new EnP1mPuntoVentaId(punVenCod, sucCod));
        pv.setPunVenDes(punVenDes);
        pv.setEstRegCod(estRegCod);
        pvDao.save(pv);
    }
    
    public void update(int sucCod, int punVenCod, String punVenDes) {
        EnP1mPuntoVenta pvUpdate = pvDao.getById(new EnP1mPuntoVentaId(punVenCod, sucCod));
        pvUpdate.setPunVenDes(punVenDes);
        pvDao.update(pvUpdate);
    }

    public void setEstRegCod(int sucCod, int punVenCod, char estRegCod){
        EnP1mPuntoVentaId key = new EnP1mPuntoVentaId(punVenCod, sucCod);
        EnP1mPuntoVenta pv = pvDao.getById(key);
        pv.setEstRegCod(estRegCod);
        pvDao.update(pv);
    }
    
    public void activate(int sucCod, int punVenCod){
        EnP1mPuntoVentaId key4Activate = new EnP1mPuntoVentaId(punVenCod, sucCod);
        EnP1mPuntoVenta pvActivate = pvDao.getById(key4Activate);
        pvActivate.setEstRegCod('A');
        pvDao.update(pvActivate);  
    }
    
    public void disable(int sucCod, int punVenCod) {
        EnP1mPuntoVentaId key4Disable = new EnP1mPuntoVentaId(punVenCod, sucCod);
        EnP1mPuntoVenta pvDisable = pvDao.getById(key4Disable);
        pvDisable.setEstRegCod('I');
        pvDao.update(pvDisable);
    }

    public void delete(int sucCod, int punVenCod){
        EnP1mPuntoVentaId key4Delete = new EnP1mPuntoVentaId(punVenCod, sucCod);
        EnP1mPuntoVenta pvDelete = pvDao.getById(key4Delete);
        pvDelete.setEstRegCod('*');
        pvDao.update(pvDelete);
    } 
}
