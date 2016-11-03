
package org.epis.minierp.business.logistica;

import org.epis.minierp.dao.compras.EnP4mFacturaCompraCabDao;
import org.epis.minierp.dao.logistica.EnP2mGuiaRemTransportistaDao;
import org.epis.minierp.dao.ventas.EnP1mFacturaVentaCabDao;
import org.epis.minierp.model.EnP1mEmpresa;
import org.epis.minierp.model.EnP1mFacturaVentaCab;
import org.epis.minierp.model.EnP2mGuiaRemTransportista;
import org.epis.minierp.model.EnP2mTransportista;
import org.epis.minierp.model.EnP2mUnidadTransporte;
import org.epis.minierp.model.EnP4mFacturaCompraCab;
import org.epis.minierp.model.TaGzzTipoDestinatario;


public class EnP2mGuiaRemTransportistaBusiness {
    EnP2mGuiaRemTransportistaDao guiRemTraDao;
    EnP1mFacturaVentaCabDao facCabVenDao;
    EnP4mFacturaCompraCabDao facCabComDao;

    public EnP2mGuiaRemTransportistaBusiness() {
        guiRemTraDao = new EnP2mGuiaRemTransportistaDao(); 
        facCabVenDao = new EnP1mFacturaVentaCabDao();
        facCabComDao = new EnP4mFacturaCompraCabDao();        
    }
    
    /**
     * Crea una Guia de Remision Transportista sin una Factura Asociada
     * @param guiRemTraNum
     * @param traCod
     * @param uniTraCod
     * @param empCod
     * @param guiRemTraNumReg
     * @param tipDesCod
     * @param guiRemTraDes
     * @param estRegCod 
     */
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
        guiaRemTra.setGuiRemTraNumReg(guiRemTraNumReg);
        guiaRemTra.setTaGzzTipoDestinatario(td);
        guiaRemTra.setGuiRemTraDes(guiRemTraDes);
        guiaRemTra.setEstRegCod(estRegCod);
        guiRemTraDao.save(guiaRemTra);
        
    }
    
    public void create4Ventas(String facVenCabCod, String guiRemTraNum, String traCod, String uniTraCod, 
            int empCod, String guiRemTraNumReg, String cliCod, char estRegCod){
        
        //factura seleccionada
        EnP1mFacturaVentaCab facCab = facCabVenDao.getById(facVenCabCod);
        EnP2mGuiaRemTransportista guiRemTraOld = facCab.getEnP2mGuiaRemTransportista();
        if(guiRemTraOld != null){
            guiRemTraOld.setEstRegCod('I');
            guiRemTraDao.update(guiRemTraOld);
        }
        
        EnP2mTransportista tra = new EnP2mTransportista();
        tra.setTraCod(traCod);
        
        EnP2mUnidadTransporte uniTra = new EnP2mUnidadTransporte();
        uniTra.setUniTraCod(uniTraCod);
        
        EnP1mEmpresa em = new EnP1mEmpresa();
        em.setEmpCod(empCod);
        
        //tipo de destinatario cliente
        TaGzzTipoDestinatario td = new TaGzzTipoDestinatario();
        td.setTipDstCod(1);
        
        EnP2mGuiaRemTransportista guiaRemTra = new EnP2mGuiaRemTransportista();
        guiaRemTra.setGuiRemTraNum(guiRemTraNum);
        guiaRemTra.setGuiRemTraDen("GUÍA DE REMISIÓN -TRANSPORTISTA");
        guiaRemTra.setEnP2mTransportista(tra);
        guiaRemTra.setEnP2mUnidadTransporte(uniTra);
        guiaRemTra.setEnP1mEmpresa(em);
        guiaRemTra.setGuiRemTraNumReg(guiRemTraNumReg);
        guiaRemTra.setTaGzzTipoDestinatario(td);
        guiaRemTra.setGuiRemTraDes(cliCod);
        guiaRemTra.setEstRegCod(estRegCod);
        guiRemTraDao.save(guiaRemTra);
        
        //se cambia el valor de la guia de remision de la factura
        facCab.setEnP2mGuiaRemTransportista(guiaRemTra);
        facCabVenDao.update(facCab);
        
    }
    
    public void create4Compras(String facComCabCod, String guiRemTraNum, String traCod, String uniTraCod, 
            int empCod, String guiRemTraNumReg, String prvCod, char estRegCod){
        
        //factura seleccionada
        EnP4mFacturaCompraCab facCab = facCabComDao.getById(facComCabCod);
        EnP2mGuiaRemTransportista guiRemTraOld = facCab.getEnP2mGuiaRemTransportista();
        if(guiRemTraOld != null){
            guiRemTraOld.setEstRegCod('I');
            guiRemTraDao.update(guiRemTraOld);
        }
        
        EnP2mTransportista tra = new EnP2mTransportista();
        tra.setTraCod(traCod);
        
        EnP2mUnidadTransporte uniTra = new EnP2mUnidadTransporte();
        uniTra.setUniTraCod(uniTraCod);
        
        EnP1mEmpresa em = new EnP1mEmpresa();
        em.setEmpCod(empCod);
        
        //tipo de destinatario proveedor
        TaGzzTipoDestinatario td = new TaGzzTipoDestinatario();
        td.setTipDstCod(2);
        
        EnP2mGuiaRemTransportista guiaRemTra = new EnP2mGuiaRemTransportista();
        guiaRemTra.setGuiRemTraNum(guiRemTraNum);
        guiaRemTra.setGuiRemTraDen("GUÍA DE REMISIÓN -TRANSPORTISTA");
        guiaRemTra.setEnP2mTransportista(tra);
        guiaRemTra.setEnP2mUnidadTransporte(uniTra);
        guiaRemTra.setEnP1mEmpresa(em);
        guiaRemTra.setGuiRemTraNumReg(guiRemTraNumReg);
        guiaRemTra.setTaGzzTipoDestinatario(td);
        guiaRemTra.setGuiRemTraDes(prvCod);
        guiaRemTra.setEstRegCod(estRegCod);
        guiRemTraDao.save(guiaRemTra);
        
        //se cambia el valor de la guia de remision de la factura
        facCab.setEnP2mGuiaRemTransportista(guiaRemTra);
        facCabComDao.update(facCab);
        
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
