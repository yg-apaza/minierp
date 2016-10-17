package org.epis.minierp.business.ventas;

import org.epis.minierp.dao.ventas.EnP1mClienteDao;
import org.epis.minierp.dao.ventas.EnP1mDocumentoClienteDao;
import org.epis.minierp.model.EnP1mCliente;
import org.epis.minierp.model.EnP1mDocumentoCliente;
import org.epis.minierp.model.EnP1mDocumentoClienteId;
import org.epis.minierp.model.TaGzzEstadoCivil;


public class EnP1mClienteBusiness {
    EnP1mClienteDao cliDao;
    EnP1mDocumentoClienteDao docCliDao;

    public EnP1mClienteBusiness() {
        cliDao = new EnP1mClienteDao();
        docCliDao = new EnP1mDocumentoClienteDao();
    }
    
    public void create(String cliCod, String cliNom, String cliApePat, String cliApeMat, 
            char cliSex, String cliDir, String cliTelFij, String cliTelCel, String cliEmail, 
            int estCivCod, char estRegCod){
        EnP1mCliente cli = new EnP1mCliente();
        TaGzzEstadoCivil ec = new TaGzzEstadoCivil();
        ec.setEstCivCod(estCivCod);
        
        cli.setCliCod(cliCod);
        cli.setCliNom(cliNom);
        cli.setCliApePat(cliApePat);
        cli.setCliApeMat(cliApeMat);
        cli.setCliSex(cliSex);
        cli.setCliDir(cliDir);
        cli.setCliTelFij(cliTelFij);
        cli.setCliTelCel(cliTelCel);
        cli.setCliEmail(cliEmail);
        cli.setTaGzzEstadoCivil(ec);
        cli.setEstRegCod(estRegCod);
        cliDao.save(cli);
        
        EnP1mDocumentoCliente docCli = new EnP1mDocumentoCliente();
        docCli.setId(new EnP1mDocumentoClienteId(cliCod, 1)); //DNI
        docCli.setDocCliNum(cliCod);
        docCli.setEstRegCod('A');
        docCliDao.save(docCli);
        
    }
    
    public void update(String cliCod, String cliNom, String cliApePat, String cliApeMat, 
            char cliSex, String cliDir, String cliTelFij, String cliTelCel, String cliEmail, 
            int estCivCod){
        EnP1mCliente cliUpdate = cliDao.getById(cliCod);
        TaGzzEstadoCivil ecUpdate = new TaGzzEstadoCivil();
        ecUpdate.setEstCivCod(estCivCod);
        
        cliUpdate.setCliCod(cliCod);
        cliUpdate.setCliNom(cliNom);
        cliUpdate.setCliApePat(cliApePat);
        cliUpdate.setCliApeMat(cliApeMat);
        cliUpdate.setCliSex(cliSex);
        cliUpdate.setCliDir(cliDir);
        cliUpdate.setCliTelFij(cliTelFij);
        cliUpdate.setCliTelCel(cliTelCel);
        cliUpdate.setCliEmail(cliEmail);
        cliUpdate.setTaGzzEstadoCivil(ecUpdate);
        cliDao.update(cliUpdate);
        
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
