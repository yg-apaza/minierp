package org.epis.minierp.model;
// Generated 27/11/2016 02:57:20 PM by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * EnP1mUsuario generated by hbm2java
 */
public class EnP1mUsuario  implements java.io.Serializable {


     private String usuCod;
     private EnP1mSucursal enP1mSucursal;
     private TaGzzEstadoCivil taGzzEstadoCivil;
     private TaGzzTipoUsuario taGzzTipoUsuario;
     private String usuNom;
     private String usuApePat;
     private String usuApeMat;
     private String usuLog;
     private String usuPas;
     private Date usuFecNac;
     private char usuSex;
     private char estRegCod;
     private Set enP1mPreventaCabs = new HashSet(0);
     private Set enP4mFacturaCompraCabs = new HashSet(0);
     private Set enP1mDocumentoUsuarios = new HashSet(0);
     private Set enP1mCarteraClienteses = new HashSet(0);
     private Set enP1mFacturaVentaCabs = new HashSet(0);
     private Set enP2mInventarioCabs = new HashSet(0);

    public EnP1mUsuario() {
    }

	
    public EnP1mUsuario(String usuCod, TaGzzEstadoCivil taGzzEstadoCivil, TaGzzTipoUsuario taGzzTipoUsuario, String usuLog, String usuPas, char usuSex, char estRegCod) {
        this.usuCod = usuCod;
        this.taGzzEstadoCivil = taGzzEstadoCivil;
        this.taGzzTipoUsuario = taGzzTipoUsuario;
        this.usuLog = usuLog;
        this.usuPas = usuPas;
        this.usuSex = usuSex;
        this.estRegCod = estRegCod;
    }
    public EnP1mUsuario(String usuCod, EnP1mSucursal enP1mSucursal, TaGzzEstadoCivil taGzzEstadoCivil, TaGzzTipoUsuario taGzzTipoUsuario, String usuNom, String usuApePat, String usuApeMat, String usuLog, String usuPas, Date usuFecNac, char usuSex, char estRegCod, Set enP1mPreventaCabs, Set enP4mFacturaCompraCabs, Set enP1mDocumentoUsuarios, Set enP1mCarteraClienteses, Set enP1mFacturaVentaCabs, Set enP2mInventarioCabs) {
       this.usuCod = usuCod;
       this.enP1mSucursal = enP1mSucursal;
       this.taGzzEstadoCivil = taGzzEstadoCivil;
       this.taGzzTipoUsuario = taGzzTipoUsuario;
       this.usuNom = usuNom;
       this.usuApePat = usuApePat;
       this.usuApeMat = usuApeMat;
       this.usuLog = usuLog;
       this.usuPas = usuPas;
       this.usuFecNac = usuFecNac;
       this.usuSex = usuSex;
       this.estRegCod = estRegCod;
       this.enP1mPreventaCabs = enP1mPreventaCabs;
       this.enP4mFacturaCompraCabs = enP4mFacturaCompraCabs;
       this.enP1mDocumentoUsuarios = enP1mDocumentoUsuarios;
       this.enP1mCarteraClienteses = enP1mCarteraClienteses;
       this.enP1mFacturaVentaCabs = enP1mFacturaVentaCabs;
       this.enP2mInventarioCabs = enP2mInventarioCabs;
    }
   
    public String getUsuCod() {
        return this.usuCod;
    }
    
    public void setUsuCod(String usuCod) {
        this.usuCod = usuCod;
    }
    public EnP1mSucursal getEnP1mSucursal() {
        return this.enP1mSucursal;
    }
    
    public void setEnP1mSucursal(EnP1mSucursal enP1mSucursal) {
        this.enP1mSucursal = enP1mSucursal;
    }
    public TaGzzEstadoCivil getTaGzzEstadoCivil() {
        return this.taGzzEstadoCivil;
    }
    
    public void setTaGzzEstadoCivil(TaGzzEstadoCivil taGzzEstadoCivil) {
        this.taGzzEstadoCivil = taGzzEstadoCivil;
    }
    public TaGzzTipoUsuario getTaGzzTipoUsuario() {
        return this.taGzzTipoUsuario;
    }
    
    public void setTaGzzTipoUsuario(TaGzzTipoUsuario taGzzTipoUsuario) {
        this.taGzzTipoUsuario = taGzzTipoUsuario;
    }
    public String getUsuNom() {
        return this.usuNom;
    }
    
    public void setUsuNom(String usuNom) {
        this.usuNom = usuNom;
    }
    public String getUsuApePat() {
        return this.usuApePat;
    }
    
    public void setUsuApePat(String usuApePat) {
        this.usuApePat = usuApePat;
    }
    public String getUsuApeMat() {
        return this.usuApeMat;
    }
    
    public void setUsuApeMat(String usuApeMat) {
        this.usuApeMat = usuApeMat;
    }
    public String getUsuLog() {
        return this.usuLog;
    }
    
    public void setUsuLog(String usuLog) {
        this.usuLog = usuLog;
    }
    public String getUsuPas() {
        return this.usuPas;
    }
    
    public void setUsuPas(String usuPas) {
        this.usuPas = usuPas;
    }
    public Date getUsuFecNac() {
        return this.usuFecNac;
    }
    
    public void setUsuFecNac(Date usuFecNac) {
        this.usuFecNac = usuFecNac;
    }
    public char getUsuSex() {
        return this.usuSex;
    }
    
    public void setUsuSex(char usuSex) {
        this.usuSex = usuSex;
    }
    public char getEstRegCod() {
        return this.estRegCod;
    }
    
    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }
    public Set getEnP1mPreventaCabs() {
        return this.enP1mPreventaCabs;
    }
    
    public void setEnP1mPreventaCabs(Set enP1mPreventaCabs) {
        this.enP1mPreventaCabs = enP1mPreventaCabs;
    }
    public Set getEnP4mFacturaCompraCabs() {
        return this.enP4mFacturaCompraCabs;
    }
    
    public void setEnP4mFacturaCompraCabs(Set enP4mFacturaCompraCabs) {
        this.enP4mFacturaCompraCabs = enP4mFacturaCompraCabs;
    }
    public Set getEnP1mDocumentoUsuarios() {
        return this.enP1mDocumentoUsuarios;
    }
    
    public void setEnP1mDocumentoUsuarios(Set enP1mDocumentoUsuarios) {
        this.enP1mDocumentoUsuarios = enP1mDocumentoUsuarios;
    }
    public Set getEnP1mCarteraClienteses() {
        return this.enP1mCarteraClienteses;
    }
    
    public void setEnP1mCarteraClienteses(Set enP1mCarteraClienteses) {
        this.enP1mCarteraClienteses = enP1mCarteraClienteses;
    }
    public Set getEnP1mFacturaVentaCabs() {
        return this.enP1mFacturaVentaCabs;
    }
    
    public void setEnP1mFacturaVentaCabs(Set enP1mFacturaVentaCabs) {
        this.enP1mFacturaVentaCabs = enP1mFacturaVentaCabs;
    }
    public Set getEnP2mInventarioCabs() {
        return this.enP2mInventarioCabs;
    }
    
    public void setEnP2mInventarioCabs(Set enP2mInventarioCabs) {
        this.enP2mInventarioCabs = enP2mInventarioCabs;
    }




}


