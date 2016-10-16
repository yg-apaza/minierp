package org.epis.minierp.business.general;

import java.util.Date;
import org.epis.minierp.dao.general.EnP1mUsuarioDao;
import org.epis.minierp.model.EnP1mSucursal;
import org.epis.minierp.model.EnP1mUsuario;
import org.epis.minierp.model.TaGzzEstadoCivil;
import org.epis.minierp.model.TaGzzTipoUsuario;

public class EnP1mUsuarioBusiness {
    EnP1mUsuarioDao usuDao;

    public EnP1mUsuarioBusiness() {
        usuDao = new EnP1mUsuarioDao();
    }
    
    public void create(String usuCod, String usuNom, String usuApePat, String usuApeMat, 
            String usuLog, String usuPas, int tipUsuCod, int sucCod, Date usuFecNac, 
            int estCivCod, char usuSex, char estRegCod){
        EnP1mUsuario usu = new EnP1mUsuario();  
        TaGzzTipoUsuario tu = new TaGzzTipoUsuario();
        tu.setTipUsuCod(tipUsuCod);
        EnP1mSucursal suc = new EnP1mSucursal();
        suc.setSucCod(sucCod);
        TaGzzEstadoCivil ec = new TaGzzEstadoCivil();
        ec.setEstCivCod(estCivCod);
               
        usu.setUsuCod(usuCod);
        usu.setUsuNom(usuNom);
        usu.setUsuApePat(usuApePat);
        usu.setUsuApeMat(usuApeMat);
        usu.setUsuLog(usuLog);
        usu.setUsuPas(usuPas);
        usu.setTaGzzTipoUsuario(tu);
        usu.setEnP1mSucursal(suc);
        usu.setUsuFecNac(usuFecNac);
        usu.setTaGzzEstadoCivil(ec);
        usu.setUsuSex(usuSex);
        usu.setEstRegCod(estRegCod);
        usuDao.save(usu);
    }
    
    public void update(String usuCod, String usuNom, String usuApePat, String usuApeMat, 
            String usuLog, String usuPas, int tipUsuCod, int sucCod, Date usuFecNac, 
            int estCivCod, char usuSex){
        EnP1mUsuario usuUpdate = usuDao.getById(usuCod);
        TaGzzTipoUsuario tuUpdate = new TaGzzTipoUsuario();
        tuUpdate.setTipUsuCod(tipUsuCod);
        EnP1mSucursal sucUpdate = new EnP1mSucursal();
        sucUpdate.setSucCod(sucCod);
        TaGzzEstadoCivil ecUpdate = new TaGzzEstadoCivil();
        ecUpdate.setEstCivCod(estCivCod);
        
        usuUpdate.setUsuNom(usuNom);
        usuUpdate.setUsuApePat(usuApePat);
        usuUpdate.setUsuApeMat(usuApeMat);
        usuUpdate.setUsuLog(usuLog);
        usuUpdate.setUsuPas(usuPas);
        usuUpdate.setTaGzzTipoUsuario(tuUpdate);
        usuUpdate.setEnP1mSucursal(sucUpdate);
        usuUpdate.setUsuFecNac(usuFecNac);
        usuUpdate.setTaGzzEstadoCivil(ecUpdate);
        usuUpdate.setUsuSex(usuSex);
        usuDao.update(usuUpdate);
    }
    
    private void setEstRegCod(String usuCod, char estRegCod){
        EnP1mUsuario usu = usuDao.getById(usuCod);
        usu.setEstRegCod(estRegCod);
        usuDao.update(usu);
    }
    
    public void activate(String usuCod){
        setEstRegCod(usuCod, 'A');
    }
    
    public void disable(String usuCod){
        setEstRegCod(usuCod, 'I');    
    }
    
    public void delete(String usuCod){
        setEstRegCod(usuCod, '*'); 
    }
}
