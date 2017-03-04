package org.epis.minierp.business.general;

import java.util.Date;
import org.epis.minierp.dao.general.EnP1mUsuarioDao;
import org.epis.minierp.dao.ventas.EnP1mCarteraClientesDao;
import org.epis.minierp.dao.ventas.EnP1mDocumentoUsuarioDao;
import org.epis.minierp.model.EnP1mCarteraClientes;
import org.epis.minierp.model.EnP1mCarteraClientesId;
import org.epis.minierp.model.EnP1mDocumentoUsuario;
import org.epis.minierp.model.EnP1mDocumentoUsuarioId;
import org.epis.minierp.model.EnP1mSucursal;
import org.epis.minierp.model.EnP1mUsuario;
import org.epis.minierp.model.TaGzzCanalUsuario;
import org.epis.minierp.model.TaGzzEstadoCivil;
import org.epis.minierp.model.TaGzzTipoUsuario;
import org.apache.commons.codec.digest.DigestUtils;
import org.epis.minierp.model.TaGzzListaPrecios;
import org.epis.minierp.model.TaGzzUnidadTrabajo;

public class EnP1mUsuarioBusiness {
    EnP1mUsuarioDao usuDao;
    EnP1mDocumentoUsuarioDao docUsuDao;
    EnP1mCarteraClientesDao carCliDao;

    public EnP1mUsuarioBusiness() {
        usuDao = new EnP1mUsuarioDao();
        docUsuDao = new EnP1mDocumentoUsuarioDao();
        carCliDao = new EnP1mCarteraClientesDao();
    }
    
    public void create(String usuCod, String usuNom, String usuApePat, String usuApeMat, 
            String usuLog, String usuPas, int tipUsuCod, int sucCod, Date usuFecNac, 
            int estCivCod, char usuSex, int canUsuCod, int lisPreCod, int uniTraCod){
        EnP1mUsuario usu = new EnP1mUsuario();  
        TaGzzTipoUsuario tu = new TaGzzTipoUsuario();
        tu.setTipUsuCod(tipUsuCod);
        EnP1mSucursal suc = new EnP1mSucursal();
        suc.setSucCod(sucCod);
        TaGzzEstadoCivil ec = new TaGzzEstadoCivil();
        ec.setEstCivCod(estCivCod);
        TaGzzCanalUsuario cu = new TaGzzCanalUsuario();
        cu.setCanUsuCod(canUsuCod);
        TaGzzListaPrecios lp = new TaGzzListaPrecios();
        lp.setLisPreCod(lisPreCod);
        TaGzzUnidadTrabajo ut = new TaGzzUnidadTrabajo();
        ut.setUniTraCod(uniTraCod);
               
        usu.setUsuCod(usuCod);
        usu.setUsuNom(usuNom);
        usu.setUsuApePat(usuApePat);
        usu.setUsuApeMat(usuApeMat);
        usu.setUsuLog(usuLog);
        usu.setUsuPas(DigestUtils.sha256Hex(usuPas));
        usu.setTaGzzTipoUsuario(tu);
        usu.setEnP1mSucursal(suc);
        usu.setUsuFecNac(usuFecNac);
        usu.setTaGzzEstadoCivil(ec);
        usu.setUsuSex(usuSex);
        usu.setTaGzzCanalUsuario(cu);
        usu.setTaGzzListaPrecios(lp);
        usu.setTaGzzUnidadTrabajo(ut);
        
        usu.setEstRegCod('A');
        usuDao.save(usu);
       
    }
    
    public void update(String usuCod, String usuNom, String usuApePat, String usuApeMat, 
            String usuLog, int tipUsuCod, int sucCod, Date usuFecNac, 
            int estCivCod, char usuSex, int canUsuCod , int lisPreCod, int uniTraCod){
        EnP1mUsuario usuUpdate = usuDao.getById(usuCod);
        TaGzzTipoUsuario tuUpdate = new TaGzzTipoUsuario();
        tuUpdate.setTipUsuCod(tipUsuCod);
        EnP1mSucursal sucUpdate = new EnP1mSucursal();
        sucUpdate.setSucCod(sucCod);
        TaGzzEstadoCivil ecUpdate = new TaGzzEstadoCivil();
        ecUpdate.setEstCivCod(estCivCod);
        TaGzzCanalUsuario cu = new TaGzzCanalUsuario();
        cu.setCanUsuCod(canUsuCod);
        TaGzzListaPrecios lp = new TaGzzListaPrecios();
        lp.setLisPreCod(lisPreCod);
        TaGzzUnidadTrabajo ut = new TaGzzUnidadTrabajo();
        ut.setUniTraCod(uniTraCod);
        
        usuUpdate.setUsuNom(usuNom);
        usuUpdate.setUsuApePat(usuApePat);
        usuUpdate.setUsuApeMat(usuApeMat);
        usuUpdate.setUsuLog(usuLog);
        usuUpdate.setTaGzzTipoUsuario(tuUpdate);
        usuUpdate.setEnP1mSucursal(sucUpdate);
        usuUpdate.setUsuFecNac(usuFecNac);
        usuUpdate.setTaGzzEstadoCivil(ecUpdate);
        usuUpdate.setUsuSex(usuSex);
        usuUpdate.setTaGzzCanalUsuario(cu);
        usuUpdate.setTaGzzListaPrecios(lp);
        usuUpdate.setTaGzzUnidadTrabajo(ut);
        usuDao.update(usuUpdate);
    }
    
    public void setPasword(String usuCod, String pass){
        EnP1mUsuario usu = usuDao.getById(usuCod);
        usu.setUsuPas(DigestUtils.sha256Hex(pass));
        usuDao.update(usu);
    }
    
    public void createCarteraCli(String usuCod, String cliCod, String usuCliDes, char estRegCod){
        EnP1mCarteraClientes carCli = new EnP1mCarteraClientes();
        carCli.setId(new EnP1mCarteraClientesId(cliCod, usuCod));
        carCli.setUsuCliDes(usuCliDes);
        carCli.setUsuCliEstReg(estRegCod);
        carCliDao.save(carCli);
    }
    
    public void deleteCarteraCli(String usuCod, String cliCod){
        EnP1mCarteraClientes carCli = carCliDao.getById(new EnP1mCarteraClientesId(cliCod, usuCod));
        carCliDao.delete(carCli);
    }
    
    public void updateCarteraCli(String usuCod, String cliCod, String UsuCliDes){
        EnP1mCarteraClientes carCli = carCliDao.getById(new EnP1mCarteraClientesId(cliCod, usuCod));
        carCli.setUsuCliDes(UsuCliDes);
        carCliDao.update(carCli);
    }
    
    public void createDocumento(String usuCod, int tipDocUsuCod, String docUsuNum, char estRegCod){
        EnP1mDocumentoUsuario docUsu = new EnP1mDocumentoUsuario();
        docUsu.setId(new EnP1mDocumentoUsuarioId(usuCod, tipDocUsuCod));
        docUsu.setDocUsuNum(docUsuNum);
        docUsu.setEstRegCod(estRegCod);
        docUsuDao.save(docUsu);
    }
    
    public void deleteDocumento(String usuCod, int tipDocUsuCod){
        EnP1mDocumentoUsuario docUsu = docUsuDao.getById(new EnP1mDocumentoUsuarioId(usuCod, tipDocUsuCod));
        docUsuDao.delete(docUsu);
    }
    
    public void updateDocumento(String usuCod, int tipDocUsuCod, String docUsuNum){
        EnP1mDocumentoUsuario docUsu = docUsuDao.getById(new EnP1mDocumentoUsuarioId(usuCod, tipDocUsuCod));
        docUsu.setDocUsuNum(docUsuNum);
        docUsuDao.update(docUsu);
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
    
    public void changePassword(String usuCod, String newPassword){
        EnP1mUsuario usu = usuDao.getById(usuCod);
        usu.setUsuPas(DigestUtils.sha256Hex(newPassword));
        usuDao.update(usu);
    }
}
