package org.epis.minierp.model;
// Generated 04/12/2016 10:29:37 AM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * EnP2mGuiaRemTransportista generated by hbm2java
 */
public class EnP2mGuiaRemTransportista  implements java.io.Serializable {


     private String guiRemTraNum;
     private EnP1mEmpresa enP1mEmpresa;
     private EnP2mTransportista enP2mTransportista;
     private EnP2mUnidadTransporte enP2mUnidadTransporte;
     private TaGzzTipoDestinatario taGzzTipoDestinatario;
     private String guiRemTraDen;
     private String guiRemTraNumReg;
     private String guiRemTraDes;
     private char estRegCod;
     private Set enP4mFacturaCompraCabs = new HashSet(0);
     private Set enP1mFacturaVentaCabs = new HashSet(0);

    public EnP2mGuiaRemTransportista() {
    }

	
    public EnP2mGuiaRemTransportista(String guiRemTraNum, EnP1mEmpresa enP1mEmpresa, EnP2mTransportista enP2mTransportista, EnP2mUnidadTransporte enP2mUnidadTransporte, TaGzzTipoDestinatario taGzzTipoDestinatario, String guiRemTraDen, String guiRemTraDes, char estRegCod) {
        this.guiRemTraNum = guiRemTraNum;
        this.enP1mEmpresa = enP1mEmpresa;
        this.enP2mTransportista = enP2mTransportista;
        this.enP2mUnidadTransporte = enP2mUnidadTransporte;
        this.taGzzTipoDestinatario = taGzzTipoDestinatario;
        this.guiRemTraDen = guiRemTraDen;
        this.guiRemTraDes = guiRemTraDes;
        this.estRegCod = estRegCod;
    }
    public EnP2mGuiaRemTransportista(String guiRemTraNum, EnP1mEmpresa enP1mEmpresa, EnP2mTransportista enP2mTransportista, EnP2mUnidadTransporte enP2mUnidadTransporte, TaGzzTipoDestinatario taGzzTipoDestinatario, String guiRemTraDen, String guiRemTraNumReg, String guiRemTraDes, char estRegCod, Set enP4mFacturaCompraCabs, Set enP1mFacturaVentaCabs) {
       this.guiRemTraNum = guiRemTraNum;
       this.enP1mEmpresa = enP1mEmpresa;
       this.enP2mTransportista = enP2mTransportista;
       this.enP2mUnidadTransporte = enP2mUnidadTransporte;
       this.taGzzTipoDestinatario = taGzzTipoDestinatario;
       this.guiRemTraDen = guiRemTraDen;
       this.guiRemTraNumReg = guiRemTraNumReg;
       this.guiRemTraDes = guiRemTraDes;
       this.estRegCod = estRegCod;
       this.enP4mFacturaCompraCabs = enP4mFacturaCompraCabs;
       this.enP1mFacturaVentaCabs = enP1mFacturaVentaCabs;
    }
   
    public String getGuiRemTraNum() {
        return this.guiRemTraNum;
    }
    
    public void setGuiRemTraNum(String guiRemTraNum) {
        this.guiRemTraNum = guiRemTraNum;
    }
    public EnP1mEmpresa getEnP1mEmpresa() {
        return this.enP1mEmpresa;
    }
    
    public void setEnP1mEmpresa(EnP1mEmpresa enP1mEmpresa) {
        this.enP1mEmpresa = enP1mEmpresa;
    }
    public EnP2mTransportista getEnP2mTransportista() {
        return this.enP2mTransportista;
    }
    
    public void setEnP2mTransportista(EnP2mTransportista enP2mTransportista) {
        this.enP2mTransportista = enP2mTransportista;
    }
    public EnP2mUnidadTransporte getEnP2mUnidadTransporte() {
        return this.enP2mUnidadTransporte;
    }
    
    public void setEnP2mUnidadTransporte(EnP2mUnidadTransporte enP2mUnidadTransporte) {
        this.enP2mUnidadTransporte = enP2mUnidadTransporte;
    }
    public TaGzzTipoDestinatario getTaGzzTipoDestinatario() {
        return this.taGzzTipoDestinatario;
    }
    
    public void setTaGzzTipoDestinatario(TaGzzTipoDestinatario taGzzTipoDestinatario) {
        this.taGzzTipoDestinatario = taGzzTipoDestinatario;
    }
    public String getGuiRemTraDen() {
        return this.guiRemTraDen;
    }
    
    public void setGuiRemTraDen(String guiRemTraDen) {
        this.guiRemTraDen = guiRemTraDen;
    }
    public String getGuiRemTraNumReg() {
        return this.guiRemTraNumReg;
    }
    
    public void setGuiRemTraNumReg(String guiRemTraNumReg) {
        this.guiRemTraNumReg = guiRemTraNumReg;
    }
    public String getGuiRemTraDes() {
        return this.guiRemTraDes;
    }
    
    public void setGuiRemTraDes(String guiRemTraDes) {
        this.guiRemTraDes = guiRemTraDes;
    }
    public char getEstRegCod() {
        return this.estRegCod;
    }
    
    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }
    public Set getEnP4mFacturaCompraCabs() {
        return this.enP4mFacturaCompraCabs;
    }
    
    public void setEnP4mFacturaCompraCabs(Set enP4mFacturaCompraCabs) {
        this.enP4mFacturaCompraCabs = enP4mFacturaCompraCabs;
    }
    public Set getEnP1mFacturaVentaCabs() {
        return this.enP1mFacturaVentaCabs;
    }
    
    public void setEnP1mFacturaVentaCabs(Set enP1mFacturaVentaCabs) {
        this.enP1mFacturaVentaCabs = enP1mFacturaVentaCabs;
    }




}


