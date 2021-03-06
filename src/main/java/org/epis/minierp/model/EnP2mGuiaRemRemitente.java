package org.epis.minierp.model;
// Generated 04/03/2017 10:43:21 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * EnP2mGuiaRemRemitente generated by hbm2java
 */
public class EnP2mGuiaRemRemitente  implements java.io.Serializable {


     private String guiRemRemNum;
     private EnP1mEmpresa enP1mEmpresa;
     private TaGzzMotivoTraslado taGzzMotivoTraslado;
     private TaGzzTipoDestinatario taGzzTipoDestinatario;
     private String guiRemRemDen;
     private String guiRemRemDes;
     private char estRegCod;
     private Set enP1mFacturaVentaCabs = new HashSet(0);
     private Set enP4mFacturaCompraCabs = new HashSet(0);

    public EnP2mGuiaRemRemitente() {
    }

	
    public EnP2mGuiaRemRemitente(String guiRemRemNum, EnP1mEmpresa enP1mEmpresa, TaGzzMotivoTraslado taGzzMotivoTraslado, TaGzzTipoDestinatario taGzzTipoDestinatario, String guiRemRemDen, String guiRemRemDes, char estRegCod) {
        this.guiRemRemNum = guiRemRemNum;
        this.enP1mEmpresa = enP1mEmpresa;
        this.taGzzMotivoTraslado = taGzzMotivoTraslado;
        this.taGzzTipoDestinatario = taGzzTipoDestinatario;
        this.guiRemRemDen = guiRemRemDen;
        this.guiRemRemDes = guiRemRemDes;
        this.estRegCod = estRegCod;
    }
    public EnP2mGuiaRemRemitente(String guiRemRemNum, EnP1mEmpresa enP1mEmpresa, TaGzzMotivoTraslado taGzzMotivoTraslado, TaGzzTipoDestinatario taGzzTipoDestinatario, String guiRemRemDen, String guiRemRemDes, char estRegCod, Set enP1mFacturaVentaCabs, Set enP4mFacturaCompraCabs) {
       this.guiRemRemNum = guiRemRemNum;
       this.enP1mEmpresa = enP1mEmpresa;
       this.taGzzMotivoTraslado = taGzzMotivoTraslado;
       this.taGzzTipoDestinatario = taGzzTipoDestinatario;
       this.guiRemRemDen = guiRemRemDen;
       this.guiRemRemDes = guiRemRemDes;
       this.estRegCod = estRegCod;
       this.enP1mFacturaVentaCabs = enP1mFacturaVentaCabs;
       this.enP4mFacturaCompraCabs = enP4mFacturaCompraCabs;
    }
   
    public String getGuiRemRemNum() {
        return this.guiRemRemNum;
    }
    
    public void setGuiRemRemNum(String guiRemRemNum) {
        this.guiRemRemNum = guiRemRemNum;
    }
    public EnP1mEmpresa getEnP1mEmpresa() {
        return this.enP1mEmpresa;
    }
    
    public void setEnP1mEmpresa(EnP1mEmpresa enP1mEmpresa) {
        this.enP1mEmpresa = enP1mEmpresa;
    }
    public TaGzzMotivoTraslado getTaGzzMotivoTraslado() {
        return this.taGzzMotivoTraslado;
    }
    
    public void setTaGzzMotivoTraslado(TaGzzMotivoTraslado taGzzMotivoTraslado) {
        this.taGzzMotivoTraslado = taGzzMotivoTraslado;
    }
    public TaGzzTipoDestinatario getTaGzzTipoDestinatario() {
        return this.taGzzTipoDestinatario;
    }
    
    public void setTaGzzTipoDestinatario(TaGzzTipoDestinatario taGzzTipoDestinatario) {
        this.taGzzTipoDestinatario = taGzzTipoDestinatario;
    }
    public String getGuiRemRemDen() {
        return this.guiRemRemDen;
    }
    
    public void setGuiRemRemDen(String guiRemRemDen) {
        this.guiRemRemDen = guiRemRemDen;
    }
    public String getGuiRemRemDes() {
        return this.guiRemRemDes;
    }
    
    public void setGuiRemRemDes(String guiRemRemDes) {
        this.guiRemRemDes = guiRemRemDes;
    }
    public char getEstRegCod() {
        return this.estRegCod;
    }
    
    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }
    public Set getEnP1mFacturaVentaCabs() {
        return this.enP1mFacturaVentaCabs;
    }
    
    public void setEnP1mFacturaVentaCabs(Set enP1mFacturaVentaCabs) {
        this.enP1mFacturaVentaCabs = enP1mFacturaVentaCabs;
    }
    public Set getEnP4mFacturaCompraCabs() {
        return this.enP4mFacturaCompraCabs;
    }
    
    public void setEnP4mFacturaCompraCabs(Set enP4mFacturaCompraCabs) {
        this.enP4mFacturaCompraCabs = enP4mFacturaCompraCabs;
    }




}


