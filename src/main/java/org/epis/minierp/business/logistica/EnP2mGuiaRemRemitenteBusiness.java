
package org.epis.minierp.business.logistica;

import java.util.ArrayList;
import java.util.List;
import org.epis.minierp.dao.compras.EnP4mFacturaCompraCabDao;
import org.epis.minierp.dao.general.EnP1mEmpresaDao;
import org.epis.minierp.dao.general.TaGzzMotivoTrasladoDao;
import org.epis.minierp.dao.general.TaGzzTipoDestinatarioDao;
import org.epis.minierp.dao.logistica.EnP2mGuiaRemRemitenteDao;
import org.epis.minierp.dao.ventas.EnP1mFacturaVentaCabDao;
import org.epis.minierp.model.EnP1mEmpresa;
import org.epis.minierp.model.EnP1mFacturaVentaCab;
import org.epis.minierp.model.EnP2mGuiaRemRemitente;
import org.epis.minierp.model.EnP4mFacturaCompraCab;
import org.epis.minierp.model.TaGzzMotivoTraslado;
import org.epis.minierp.model.TaGzzTipoDestinatario;


public class EnP2mGuiaRemRemitenteBusiness {
    EnP2mGuiaRemRemitenteDao guiRemRemDao;
    EnP1mFacturaVentaCabDao facCabVenDao;
    EnP4mFacturaCompraCabDao facCabComDao;
    
    public EnP2mGuiaRemRemitenteBusiness() {
        guiRemRemDao = new EnP2mGuiaRemRemitenteDao();
        facCabVenDao = new EnP1mFacturaVentaCabDao();
        facCabComDao = new EnP4mFacturaCompraCabDao();
    }
    
    /**
     * Crea una Guia de Remision Remitente sin una Factura Asociada
     * @param guiRemRemNum
     * @param motTraCod
     * @param empCod
     * @param tipDesCod
     * @param GuiRemRemDes
     * @param estRegCod 
     */
    public void create(String guiRemRemNum, int motTraCod, 
            int tipDesCod, String GuiRemRemDes, char estRegCod){
        
        TaGzzMotivoTraslado mt = new TaGzzMotivoTraslado();
        mt.setMotTraCod(motTraCod);
        
        List <EnP1mEmpresa> le = new ArrayList<>();
        le.addAll((new EnP1mEmpresaDao()).getAll());
        EnP1mEmpresa e = le.get(0); //primera empresa por defecto
        
        TaGzzTipoDestinatario td = new TaGzzTipoDestinatario();
        td.setTipDstCod(tipDesCod);
        
        EnP2mGuiaRemRemitente guiaRemRem = new EnP2mGuiaRemRemitente();
        guiaRemRem.setGuiRemRemNum(guiRemRemNum);
        guiaRemRem.setGuiRemRemDen("GUÍA DE REMISIÓN-REMINTENTE");
        guiaRemRem.setTaGzzMotivoTraslado(mt);
        guiaRemRem.setEnP1mEmpresa(e);
        guiaRemRem.setTaGzzTipoDestinatario(td);
        guiaRemRem.setGuiRemRemDen(GuiRemRemDes);
        guiaRemRem.setEstRegCod(estRegCod);
        guiRemRemDao.save(guiaRemRem);
    }
    
    public void create4Ventas(String facVenCabCod, String guiRemRemNum, 
            int motTraCod, String cliCod, char estRegCod){
        
        
        TaGzzMotivoTraslado mt = new TaGzzMotivoTraslado();
        mt.setMotTraCod(motTraCod);
        
         List <EnP1mEmpresa> le = new ArrayList<>();
        le.addAll((new EnP1mEmpresaDao()).getAll());
        EnP1mEmpresa e = le.get(0); //primera empresa por defecto
        
        //tipo de destinatario cliente
        TaGzzTipoDestinatario td = new TaGzzTipoDestinatario();
        td.setTipDstCod(1);
        
        EnP2mGuiaRemRemitente guiaRemRem = new EnP2mGuiaRemRemitente();
        guiaRemRem.setGuiRemRemNum(guiRemRemNum);
        guiaRemRem.setGuiRemRemDen("GUÍA DE REMISIÓN-REMINTENTE");
        guiaRemRem.setTaGzzMotivoTraslado(mt);
        guiaRemRem.setEnP1mEmpresa(e);
        guiaRemRem.setTaGzzTipoDestinatario(td);
        guiaRemRem.setGuiRemRemDes(cliCod);
        guiaRemRem.setEstRegCod(estRegCod);
        guiRemRemDao.saveOrUpdate(guiaRemRem);
        
        //factura seleccionada
        EnP1mFacturaVentaCab facCab = facCabVenDao.getById(facVenCabCod);
        facCab.setEnP2mGuiaRemRemitente(guiaRemRem);
        facCabVenDao.update(facCab); 
        
    }
    
    public void create4Compras(String facComCabCod, String guiRemRemNum, 
            int motTraCod, int empCod, String prvCod, char estRegCod){
        
        //factura seleccionada
        EnP4mFacturaCompraCab facCab = facCabComDao.getById(facComCabCod);
        EnP2mGuiaRemRemitente guiRemRemOld = facCab.getEnP2mGuiaRemRemitente();
        if(guiRemRemOld != null){
            guiRemRemOld.setEstRegCod('I');
            guiRemRemDao.update(guiRemRemOld);
        }
                 
        TaGzzMotivoTraslado mt = new TaGzzMotivoTraslado();
        mt.setMotTraCod(motTraCod);
        
        EnP1mEmpresa em = new EnP1mEmpresa();
        em.setEmpCod(empCod);
        
        //tipo de destinatoario proveedor
        TaGzzTipoDestinatario td = new TaGzzTipoDestinatario();
        td.setTipDstCod(2);
        
        EnP2mGuiaRemRemitente guiaRemRem = new EnP2mGuiaRemRemitente();
        guiaRemRem.setGuiRemRemNum(guiRemRemNum);
        guiaRemRem.setGuiRemRemDen("GUÍA DE REMISIÓN-REMINTENTE");
        guiaRemRem.setTaGzzMotivoTraslado(mt);
        guiaRemRem.setEnP1mEmpresa(em);
        guiaRemRem.setTaGzzTipoDestinatario(td);
        guiaRemRem.setGuiRemRemDes(prvCod);
        guiaRemRem.setEstRegCod(estRegCod);
        guiRemRemDao.save(guiaRemRem);
        
        //se cambia el valor de la guia de remision de la factura
        facCab.setEnP2mGuiaRemRemitente(guiaRemRem);
        facCabComDao.update(facCab);
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
