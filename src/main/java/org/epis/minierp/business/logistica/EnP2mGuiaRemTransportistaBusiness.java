
package org.epis.minierp.business.logistica;

import org.epis.minierp.dao.logistica.EnP2mGuiaRemTransportistaDao;
import org.epis.minierp.model.EnP1mEmpresa;
import org.epis.minierp.model.EnP2mGuiaRemTransportista;
import org.epis.minierp.model.EnP2mTransportista;
import org.epis.minierp.model.EnP2mUnidadTransporte;
import org.epis.minierp.model.TaGzzTipoDestinatario;


public class EnP2mGuiaRemTransportistaBusiness {
    EnP2mGuiaRemTransportistaDao guiRemTraDao;

    public EnP2mGuiaRemTransportistaBusiness() {
        guiRemTraDao = new EnP2mGuiaRemTransportistaDao(); 
                
    }
    
    public void create(String guiRemTraNum, String traCod, String uniTraCod, 
            int empCod, String guiRemTraNumReg, int tipDesCod, 
            String guiRemTraDes, char estRegCod){
        
        EnP2mTransportista tra = new EnP2mTransportista();
        tra.setTraCod(traCod);
        
        EnP2mUnidadTransporte uniTra = new EnP2mUnidadTransporte();
        uniTra.setUniTraCod(uniTraCod);
        
        EnP1mEmpresa em = new EnP1mEmpresa();
        em.setEmpCod(empCod);
        
        TaGzzTipoDestinatario td = new TaGzzTipoDestinatario();
        td.setTipDstCod(tipDesCod);
        
        EnP2mGuiaRemTransportista guiaRemTra = new EnP2mGuiaRemTransportista();
        guiaRemTra.setGuiRemTraNum(guiRemTraNum);
        guiaRemTra.setGuiRemTraDen("GUÍA DE REMISIÓN -TRANSPORTISTA");
        guiaRemTra.setEnP2mTransportista(tra);
        guiaRemTra.setEnP2mUnidadTransporte(uniTra);
        guiaRemTra.setEnP1mEmpresa(em);
        guiaRemTra.setTaGzzTipoDestinatario(td);
        guiaRemTra.setGuiRemTraNumReg(guiRemTraNumReg);
        guiaRemTra.setEstRegCod(estRegCod);
        guiRemTraDao.save(guiaRemTra);
        
    }
    
    public void update(String guiRemTraNum, String traCod, String uniTraCod, 
            int empCod, String guiRemTraNumReg, int tipDesCod, 
            String guiRemTraDes){
        
        EnP2mTransportista tra = new EnP2mTransportista();
        tra.setTraCod(traCod);
        
        EnP2mUnidadTransporte uniTra = new EnP2mUnidadTransporte();
        uniTra.setUniTraCod(uniTraCod);
        
        EnP1mEmpresa em = new EnP1mEmpresa();
        em.setEmpCod(empCod);
        
        TaGzzTipoDestinatario td = new TaGzzTipoDestinatario();
        td.setTipDstCod(tipDesCod);
        
        EnP2mGuiaRemTransportista guiaRemTra = new EnP2mGuiaRemTransportista();
        guiaRemTra.setGuiRemTraNum(guiRemTraNum);
        guiaRemTra.setEnP2mTransportista(tra);
        guiaRemTra.setEnP2mUnidadTransporte(uniTra);
        guiaRemTra.setEnP1mEmpresa(em);
        guiaRemTra.setTaGzzTipoDestinatario(td);
        guiaRemTra.setGuiRemTraNumReg(guiRemTraNumReg);
        guiRemTraDao.update(guiaRemTra);
        
    }
    
    private void setEstRegCod(String guiRemTraNum,char estRegCod){
        EnP2mGuiaRemTransportista guiaRemTran = guiRemTraDao.getById(guiRemTraNum);
        guiaRemTran.setEstRegCod(estRegCod);
        guiRemTraDao.update(guiaRemTran);
    }
    
    public void activate(String guiRemTraNum){
        setEstRegCod(guiRemTraNum, 'A');
    }
    
    public void disable(String guiRemTraNum){
        setEstRegCod(guiRemTraNum, 'I');
    }
    
    public void delete(String guiRemTraNum){
        setEstRegCod(guiRemTraNum, '*');
    }
    
}
