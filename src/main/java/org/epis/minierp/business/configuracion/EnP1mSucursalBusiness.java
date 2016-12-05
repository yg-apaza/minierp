package org.epis.minierp.business.configuracion;

import org.epis.minierp.dao.general.EnP1mSucursalDao;
import org.epis.minierp.model.EnP1mSucursal;

public class EnP1mSucursalBusiness {

    EnP1mSucursalDao sucDao;

    public EnP1mSucursalBusiness() {
        sucDao = new EnP1mSucursalDao();
    }

    public void create(String sucDes, String sucDir) {
        EnP1mSucursal s = new EnP1mSucursal();
        s.setSucDes(sucDes);
        s.setSucDir(sucDir);
        s.setEstRegCod('A');
        sucDao.save(s);
    }

    public void update(int sucCod, String sucDes, String sucDir) {
        EnP1mSucursal s = sucDao.getById(sucCod);
        s.setSucDes(sucDes);
        s.setSucDir(sucDir);
        s.setEstRegCod('A');
        sucDao.update(s);
    }

    private void setEstRegCod(int sucCod, char estRegCod) {
        EnP1mSucursal s = sucDao.getById(sucCod);
        s.setEstRegCod(estRegCod);
        sucDao.update(s);
    }

    public void activate(int sucCod) {
        setEstRegCod(sucCod, 'A');
    }

    public void disable(int sucCod) {
        setEstRegCod(sucCod, 'I');
    }

    public void delete(int sucCod) {
        setEstRegCod(sucCod, '*');
    }
}
