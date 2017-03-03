
package org.epis.minierp.business.logistica;

import java.util.ArrayList;
import java.util.List;
import org.epis.minierp.business.ventas.EnP1mFacturaVentaBusiness;
import org.epis.minierp.dao.compras.EnP4mFacturaCompraCabDao;
import org.epis.minierp.dao.general.EnP1mEmpresaDao;
import org.epis.minierp.dao.logistica.EnP2mGuiaRemTransportistaDao;
import org.epis.minierp.dao.ventas.EnP1mFacturaVentaCabDao;
import org.epis.minierp.model.EnP1mEmpresa;
import org.epis.minierp.model.EnP1mFacturaVentaCab;
import org.epis.minierp.model.EnP2mGuiaRemTransportista;
import org.epis.minierp.model.EnP2mTransportista;
import org.epis.minierp.model.EnP2mUnidadTransporte;
import org.epis.minierp.model.TaGzzTipoDestinatario;


public class EnP2mGuiaRemTransportistaBusiness {
    EnP2mGuiaRemTransportistaDao guiRemTraDao;
    EnP1mFacturaVentaCabDao facCabVenDao;
    EnP4mFacturaCompraCabDao facCabComDao;
    EnP1mFacturaVentaBusiness facturaBusiness;

    public EnP2mGuiaRemTransportistaBusiness() {
        guiRemTraDao = new EnP2mGuiaRemTransportistaDao(); 
        facCabVenDao = new EnP1mFacturaVentaCabDao();
        facCabComDao = new EnP4mFacturaCompraCabDao();
        facturaBusiness = new EnP1mFacturaVentaBusiness();
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
    private void create(String guiRemTraNum, String traCod, String uniTraCod, 
            int tipDstCod, String guiRemTraNumReg, String guiRemTraDes, char estRegCod){
        
        EnP2mTransportista t = new EnP2mTransportista();
        t.setTraCod(traCod);
        
        EnP2mUnidadTransporte ut = new EnP2mUnidadTransporte();
        ut.setUniTraCod(uniTraCod);
        
        List <EnP1mEmpresa> le = new ArrayList<>();
        le.addAll((new EnP1mEmpresaDao()).getAll());
        EnP1mEmpresa e = le.get(0); //primera empresa por defecto
        
        TaGzzTipoDestinatario td = new TaGzzTipoDestinatario();
        td.setTipDstCod(tipDstCod);
        
        EnP2mGuiaRemTransportista guiaRemTra = new EnP2mGuiaRemTransportista();
        guiaRemTra.setGuiRemTraNum(guiRemTraNum);
        guiaRemTra.setGuiRemTraDen("GUÍA DE REMISIÓN -TRANSPORTISTA");
        guiaRemTra.setEnP2mTransportista(t);
        guiaRemTra.setEnP2mUnidadTransporte(ut);
        guiaRemTra.setEnP1mEmpresa(e);
        guiaRemTra.setGuiRemTraNumReg(guiRemTraNumReg);
        guiaRemTra.setTaGzzTipoDestinatario(td);
        guiaRemTra.setGuiRemTraDes(guiRemTraDes);
        guiaRemTra.setEstRegCod(estRegCod);
        guiRemTraDao.save(guiaRemTra);
        
    }
    
    public void create4Ventas(int[] facVenCabCod, String guiRemTraNumIni, 
            String traCod, String uniTraCod, String guiRemTraNumReg, 
            String cliCod, char estRegCod, int numMaxDet4GuiRemTra){
               
        //facturas asociadas
        List <EnP1mFacturaVentaCab> cabs = new ArrayList<>();
        int cods = facVenCabCod.length;
        for (int i = 0; i < cods; i++) {
            cabs.add(facCabVenDao.getById(facVenCabCod[i]));
        }
        
        String guiRemTraNum = guiRemTraNumIni;
        int numDets4Gui = 0;
        int temp;
        int ini = 0;
        for(int i = 0; i < cods; i++){
            temp = cabs.get(i).getEnP1tFacturaVentaDets().size(); //numero de detalles
            numDets4Gui = numDets4Gui + temp;
            //solo una factura
            if(cods == 1){
                create(guiRemTraNum, traCod, uniTraCod, 1, guiRemTraNumReg, cliCod, 'A');
                facturaBusiness.setGuiRemTraNum(facVenCabCod[0], guiRemTraNum);
                break;
            }
                        
            if(numDets4Gui > numMaxDet4GuiRemTra){
                //tipDstCod = 1 -> cliente guiRemTraDes = CliCod
                create(guiRemTraNum, traCod, uniTraCod, 1, guiRemTraNumReg, cliCod, 'A');
                for(int a = ini; a < i; a++){
                    facturaBusiness.setGuiRemTraNum(facVenCabCod[a], guiRemTraNum);
                }
                ini = i;
                guiRemTraNum = facturaBusiness.GenerateFacVenCabNum(guiRemTraNum,1);
                numDets4Gui = 0;
                i=i-1;
            }
            
            //ultimo
            if(i == cods-1 && numDets4Gui <= numMaxDet4GuiRemTra){
                create(guiRemTraNum, traCod, uniTraCod, 1, guiRemTraNumReg, cliCod, 'A');
                for(int a = ini; a <= i; a++){
                    facturaBusiness.setGuiRemTraNum(facVenCabCod[a], guiRemTraNum);
                }
            }
        }
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
    
    public void actualizarEstRegCod(){
        //inactivando guias de remision transportista q no tengan facturas asociadas
        List<EnP2mGuiaRemTransportista>  guias = guiRemTraDao.getAllActive();
        List<EnP1mFacturaVentaCab> cabs = new ArrayList<>();
        int tempSize;
        for (EnP2mGuiaRemTransportista guia : guias) {
            cabs.addAll(guia.getEnP1mFacturaVentaCabs());
            tempSize = cabs.size();
            if (tempSize == 0) {
                disable(guia.getGuiRemTraNum());
            }
            cabs.clear();
        }
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
