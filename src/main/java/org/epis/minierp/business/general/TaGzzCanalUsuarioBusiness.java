package org.epis.minierp.business.general;

import org.epis.minierp.dao.general.TaGzzCanalUsuarioDao;
import org.epis.minierp.model.TaGzzCanalUsuario;

public class TaGzzCanalUsuarioBusiness {
    
    TaGzzCanalUsuarioDao canUsuDao;
    
    public TaGzzCanalUsuarioBusiness() {
        canUsuDao = new TaGzzCanalUsuarioDao();
    }
    
    public void create(int canUsuCod, String canUsuDet, double canUsuPorAdd, char estRegCod){
        TaGzzCanalUsuario canalUsu = new TaGzzCanalUsuario();
        canalUsu.setCanUsuCod(canUsuCod);
        canalUsu.setCanUsuDet(canUsuDet);
        canalUsu.setCanUsuPorAdd(canUsuPorAdd);
        canalUsu.setEstRegCod(estRegCod);
        canUsuDao.save(canalUsu);
    }
    
    public void update(int canUsuCod, String canUsuDet, double canUsuPorAdd){
        TaGzzCanalUsuario canalUsu = canUsuDao.getById(canUsuCod);
        canalUsu.setCanUsuDet(canUsuDet);
        canalUsu.setCanUsuPorAdd(canUsuPorAdd);
        canUsuDao.update(canalUsu);
    }
    
    private void setEstRegCod(int canUsuCod, char estRegCod){
        TaGzzCanalUsuario canalUsu = canUsuDao.getById(canUsuCod);
        canalUsu.setEstRegCod(estRegCod);
        canUsuDao.update(canalUsu);
    }
    
    public void activate(int canUsuCod){
        setEstRegCod(canUsuCod,'A');
    }
    
    public void disable(int canUsuCod){
        setEstRegCod(canUsuCod,'I');
    }
    
    public void delete(int canUsuCod){
        setEstRegCod(canUsuCod,'*');
    }
}
