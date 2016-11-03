
package org.epis.minierp.business.logistica;

import org.epis.minierp.dao.general.EnP1mEmpresaDao;
import org.epis.minierp.dao.general.TaGzzMotivoTrasladoDao;
import org.epis.minierp.dao.general.TaGzzTipoDestinatarioDao;
import org.epis.minierp.dao.logistica.EnP2mGuiaRemRemitenteDao;
import org.epis.minierp.model.EnP1mEmpresa;
import org.epis.minierp.model.EnP2mGuiaRemRemitente;
import org.epis.minierp.model.TaGzzMotivoTraslado;
import org.epis.minierp.model.TaGzzTipoDestinatario;


public class EnP2mGuiaRemRemitenteBusiness {
    EnP2mGuiaRemRemitenteDao guiRemRemDao;
    TaGzzMotivoTrasladoDao motTraDao;
    EnP1mEmpresaDao empDao;
    TaGzzTipoDestinatarioDao tipDesDao;
    
    public EnP2mGuiaRemRemitenteBusiness() {
        guiRemRemDao = new EnP2mGuiaRemRemitenteDao();
        motTraDao = new TaGzzMotivoTrasladoDao();
        empDao = new EnP1mEmpresaDao();
        tipDesDao = new TaGzzTipoDestinatarioDao();
    }
    
    public void create(String guiRemRemNum, int motTraCod, int empCod, 
            int tipDesCod, String GuiRemRemDes, char estRegCod){
        
        TaGzzMotivoTraslado mt = new TaGzzMotivoTraslado();
        mt.setMotTraCod(motTraCod);
        
        EnP1mEmpresa em = new EnP1mEmpresa();
        em.setEmpCod(empCod);
        
        TaGzzTipoDestinatario td = new TaGzzTipoDestinatario();
        td.setTipDstCod(tipDesCod);
        
        EnP2mGuiaRemRemitente guiaRemRem = new EnP2mGuiaRemRemitente();
        guiaRemRem.setGuiRemRemNum(guiRemRemNum);
        guiaRemRem.setGuiRemRemDen("GUÍA DE REMISIÓN-REMINTENTE");
        guiaRemRem.setTaGzzMotivoTraslado(mt);
        guiaRemRem.setEnP1mEmpresa(em);
        guiaRemRem.setTaGzzTipoDestinatario(td);
        guiaRemRem.setGuiRemRemDen(GuiRemRemDes);
        guiaRemRem.setEstRegCod(estRegCod);
        guiRemRemDao.save(guiaRemRem);
    }
    
    public void update(String guiRemRemNum, int motTraCod, int empCod, 
            int tipDesCod, String GuiRemRemDes){
        
        TaGzzMotivoTraslado mt = new TaGzzMotivoTraslado();
        mt.setMotTraCod(motTraCod);
        
        EnP1mEmpresa em = new EnP1mEmpresa();
        em.setEmpCod(empCod);
        
        TaGzzTipoDestinatario td = new TaGzzTipoDestinatario();
        td.setTipDstCod(tipDesCod);
        
        EnP2mGuiaRemRemitente guiaRemRem = guiRemRemDao.getById(guiRemRemNum);
        guiaRemRem.setTaGzzMotivoTraslado(mt);
        guiaRemRem.setEnP1mEmpresa(em);
        guiaRemRem.setTaGzzTipoDestinatario(td);
        guiaRemRem.setGuiRemRemDen(GuiRemRemDes);
        guiRemRemDao.update(guiaRemRem);
    }
    
    private void setEstRegCod(String guiRemRemNum, char estRegCod){
        EnP2mGuiaRemRemitente guiaRemRem = guiRemRemDao.getById(guiRemRemNum);
        guiaRemRem.setEstRegCod(estRegCod);
        guiRemRemDao.update(guiaRemRem);
    }
    
    public void activate(String guiRemRemNum){
        setEstRegCod(guiRemRemNum,'A');
    }
    
    public void disable(String guiRemRemNum){
        setEstRegCod(guiRemRemNum,'I');
    }
    
    public void delete(String guiRemRemNum){
        setEstRegCod(guiRemRemNum,'*');
    }
    
}
