package org.epis.minierp.business.ventas;

import java.util.ArrayList;
import java.util.List;
import org.epis.minierp.dao.ventas.EnP1mClienteDao;
import org.epis.minierp.dao.ventas.EnP1mClientesRutasDao;
import org.epis.minierp.dao.ventas.EnP1mDocumentoClienteDao;
import org.epis.minierp.dao.general.TaGzzTipoClienteDao;
import org.epis.minierp.model.EnP1mCliente;
import org.epis.minierp.model.EnP1mClientesRutas;
import org.epis.minierp.model.EnP1mClientesRutasId;
import org.epis.minierp.model.EnP1mDocumentoCliente;
import org.epis.minierp.model.EnP1mDocumentoClienteId;
import org.epis.minierp.model.TaGzzEstadoCivil;
import org.epis.minierp.model.TaGzzTipoCliente;


public class EnP1mClienteBusiness {
    EnP1mClienteDao cliDao;
    EnP1mDocumentoClienteDao docCliDao;
    TaGzzTipoClienteDao tipCliDao;
    EnP1mClientesRutasDao cliRutDao;
    

    public EnP1mClienteBusiness() {
        cliDao = new EnP1mClienteDao();
        docCliDao = new EnP1mDocumentoClienteDao();
        tipCliDao = new TaGzzTipoClienteDao();
        cliRutDao = new EnP1mClientesRutasDao();
    }
    
    public void create(String cliCod,int tipCliCod,String cliRazSoc, String cliNomCom, String cliDomFis,
            String cliNom, String cliApePat, String cliApeMat, char cliSex, String cliDir, int estCivCod, 
            String cliTelFij, String cliTelCel, String cliEmail, char estRegCod){
        
        EnP1mCliente cli = new EnP1mCliente();
        
        TaGzzTipoCliente tc = new TaGzzTipoCliente();
        tc.setTipCliCod(tipCliCod);
        
        TaGzzEstadoCivil ec = new TaGzzEstadoCivil();
        ec.setEstCivCod(estCivCod);
        
        cli.setCliCod(cliCod);
        cli.setTaGzzTipoCliente(tc);
        cli.setCliRazSoc(cliRazSoc);
        cli.setCliNomCom(cliNomCom);
        cli.setCliDomFis(cliDomFis);
        cli.setCliNom(cliNom);
        cli.setCliApePat(cliApePat);
        cli.setCliApeMat(cliApeMat);
        cli.setCliSex(cliSex);
        cli.setCliDir(cliDir);
        cli.setTaGzzEstadoCivil(ec);
        cli.setCliTelFij(cliTelFij);
        cli.setCliTelCel(cliTelCel);
        cli.setCliEmail(cliEmail);
        cli.setEstRegCod(estRegCod);
        cliDao.save(cli);
              
    }
    
    public void update(String cliCod,int tipCliCod,String cliRazSoc, String cliNomCom, String cliDomFis,
            String cliNom, String cliApePat, String cliApeMat, char cliSex, String cliDir, int estCivCod, 
            String cliTelFij, String cliTelCel, String cliEmail){
        
        EnP1mCliente cliUpdate = cliDao.getById(cliCod);
        
        TaGzzTipoCliente tc = new TaGzzTipoCliente();
        tc.setTipCliCod(tipCliCod);
        
        TaGzzEstadoCivil ec = new TaGzzEstadoCivil();
        ec.setEstCivCod(estCivCod);
        
        cliUpdate.setTaGzzTipoCliente(tc);
        cliUpdate.setCliRazSoc(cliRazSoc);
        cliUpdate.setCliNomCom(cliNomCom);
        cliUpdate.setCliDomFis(cliDomFis);
        cliUpdate.setCliNom(cliNom);
        cliUpdate.setCliApePat(cliApePat);
        cliUpdate.setCliApeMat(cliApeMat);
        cliUpdate.setCliSex(cliSex);
        cliUpdate.setCliDir(cliDir);
        cliUpdate.setTaGzzEstadoCivil(ec);
        cliUpdate.setCliTelFij(cliTelFij);
        cliUpdate.setCliTelCel(cliTelCel);
        cliUpdate.setCliEmail(cliEmail);
        cliDao.update(cliUpdate);
        
    }
    
    public List<List> getAllRutasActives(){
        List<List> allRutas4Cliente = new ArrayList<>();
        List<EnP1mCliente> cli = cliDao.getAllActive();
        for (EnP1mCliente cliTemp : cli) {
            allRutas4Cliente.add(cliRutDao.getRutas4CliCod(cliTemp.getCliCod()));
        }
        return allRutas4Cliente;
    }
    
    public void createRuta(int catRutCod, String cliCod, String cliRutDes, char estRegCod){
        EnP1mClientesRutas rutaCli = new EnP1mClientesRutas();
        rutaCli.setId(new EnP1mClientesRutasId(catRutCod, cliCod));
        rutaCli.setCliRutDes(cliRutDes);
        rutaCli.setEstRegCod(estRegCod);
        cliRutDao.save(rutaCli);
    }
    
    public void deleteRuta(int catRutCod, String cliCod){
        EnP1mClientesRutas rutaCli = cliRutDao.getById(new EnP1mClientesRutasId(catRutCod, cliCod));
        cliRutDao.delete(rutaCli);
    }
    
    public void updateRuta(int catRutCod, String cliCod, String cliRutDes){
        EnP1mClientesRutas rutaCli = cliRutDao.getById(new EnP1mClientesRutasId(catRutCod, cliCod));
        rutaCli.setCliRutDes(cliRutDes);
        cliRutDao.update(rutaCli);
    }
    
    public void createDocumento(String cliCod, int tipDocCliCod, String docCliNum, char estRegCod){
        EnP1mDocumentoCliente docCli = new EnP1mDocumentoCliente();
        docCli.setId(new EnP1mDocumentoClienteId(cliCod, tipDocCliCod));
        docCli.setDocCliNum(docCliNum);
        docCli.setEstRegCod(estRegCod);
        docCliDao.save(docCli);
    }
    
    public void deleteDocumento(String cliCod, int tipDocCliCod){
        EnP1mDocumentoCliente docCli = docCliDao.getById(new EnP1mDocumentoClienteId(cliCod, tipDocCliCod));
        docCliDao.delete(docCli);
    }
    
    public void updateDocumento(String cliCod, int tipDocCliCod, String docCliNum){
        EnP1mDocumentoCliente docCli = docCliDao.getById(new EnP1mDocumentoClienteId(cliCod, tipDocCliCod));
        docCli.setDocCliNum(docCliNum);
        docCliDao.update(docCli);
    }
    
    private void setEstRegCod(String cliCod, char estRegCod){
        EnP1mCliente cli = cliDao.getById(cliCod);
        cli.setEstRegCod(estRegCod);
        cliDao.update(cli);
    }
    
    public void activate(String cliCod){
        setEstRegCod(cliCod,'A');
    }
    
    public void disable(String cliCod){
        setEstRegCod(cliCod,'I');
    }
    
    public void delete(String cliCod){
        setEstRegCod(cliCod,'*');
    }
    
}
