package org.epis.minierp.model;
// Generated 25/11/2016 01:35:59 AM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * EnP1mCliente generated by hbm2java
 */
public class EnP1mCliente  implements java.io.Serializable {


     private String cliCod;
     private TaGzzCanalCliente taGzzCanalCliente;
     private TaGzzEstadoCivil taGzzEstadoCivil;
     private TaGzzTipoCliente taGzzTipoCliente;
     private String cliRazSoc;
     private String cliNomCom;
     private String cliDomFis;
     private String cliNom;
     private String cliApePat;
     private String cliApeMat;
     private char cliSex;
     private String cliDir;
     private String cliTelFij;
     private String cliTelCel;
     private String cliEmail;
     private char estRegCod;
     private Set enP1mPreventaCabs = new HashSet(0);
     private Set enP1mCarteraClienteses = new HashSet(0);
     private Set enP1mClientesRutases = new HashSet(0);
     private Set enP1mDocumentoClientes = new HashSet(0);
     private Set enP1mFacturaVentaCabs = new HashSet(0);

    public EnP1mCliente() {
    }

	
    public EnP1mCliente(String cliCod, TaGzzEstadoCivil taGzzEstadoCivil, String cliRazSoc, char cliSex, String cliDir, String cliEmail, char estRegCod) {
        this.cliCod = cliCod;
        this.taGzzEstadoCivil = taGzzEstadoCivil;
        this.cliRazSoc = cliRazSoc;
        this.cliSex = cliSex;
        this.cliDir = cliDir;
        this.cliEmail = cliEmail;
        this.estRegCod = estRegCod;
    }
    public EnP1mCliente(String cliCod, TaGzzCanalCliente taGzzCanalCliente, TaGzzEstadoCivil taGzzEstadoCivil, TaGzzTipoCliente taGzzTipoCliente, String cliRazSoc, String cliNomCom, String cliDomFis, String cliNom, String cliApePat, String cliApeMat, char cliSex, String cliDir, String cliTelFij, String cliTelCel, String cliEmail, char estRegCod, Set enP1mPreventaCabs, Set enP1mCarteraClienteses, Set enP1mClientesRutases, Set enP1mDocumentoClientes, Set enP1mFacturaVentaCabs) {
       this.cliCod = cliCod;
       this.taGzzCanalCliente = taGzzCanalCliente;
       this.taGzzEstadoCivil = taGzzEstadoCivil;
       this.taGzzTipoCliente = taGzzTipoCliente;
       this.cliRazSoc = cliRazSoc;
       this.cliNomCom = cliNomCom;
       this.cliDomFis = cliDomFis;
       this.cliNom = cliNom;
       this.cliApePat = cliApePat;
       this.cliApeMat = cliApeMat;
       this.cliSex = cliSex;
       this.cliDir = cliDir;
       this.cliTelFij = cliTelFij;
       this.cliTelCel = cliTelCel;
       this.cliEmail = cliEmail;
       this.estRegCod = estRegCod;
       this.enP1mPreventaCabs = enP1mPreventaCabs;
       this.enP1mCarteraClienteses = enP1mCarteraClienteses;
       this.enP1mClientesRutases = enP1mClientesRutases;
       this.enP1mDocumentoClientes = enP1mDocumentoClientes;
       this.enP1mFacturaVentaCabs = enP1mFacturaVentaCabs;
    }
   
    public String getCliCod() {
        return this.cliCod;
    }
    
    public void setCliCod(String cliCod) {
        this.cliCod = cliCod;
    }
    public TaGzzCanalCliente getTaGzzCanalCliente() {
        return this.taGzzCanalCliente;
    }
    
    public void setTaGzzCanalCliente(TaGzzCanalCliente taGzzCanalCliente) {
        this.taGzzCanalCliente = taGzzCanalCliente;
    }
    public TaGzzEstadoCivil getTaGzzEstadoCivil() {
        return this.taGzzEstadoCivil;
    }
    
    public void setTaGzzEstadoCivil(TaGzzEstadoCivil taGzzEstadoCivil) {
        this.taGzzEstadoCivil = taGzzEstadoCivil;
    }
    public TaGzzTipoCliente getTaGzzTipoCliente() {
        return this.taGzzTipoCliente;
    }
    
    public void setTaGzzTipoCliente(TaGzzTipoCliente taGzzTipoCliente) {
        this.taGzzTipoCliente = taGzzTipoCliente;
    }
    public String getCliRazSoc() {
        return this.cliRazSoc;
    }
    
    public void setCliRazSoc(String cliRazSoc) {
        this.cliRazSoc = cliRazSoc;
    }
    public String getCliNomCom() {
        return this.cliNomCom;
    }
    
    public void setCliNomCom(String cliNomCom) {
        this.cliNomCom = cliNomCom;
    }
    public String getCliDomFis() {
        return this.cliDomFis;
    }
    
    public void setCliDomFis(String cliDomFis) {
        this.cliDomFis = cliDomFis;
    }
    public String getCliNom() {
        return this.cliNom;
    }
    
    public void setCliNom(String cliNom) {
        this.cliNom = cliNom;
    }
    public String getCliApePat() {
        return this.cliApePat;
    }
    
    public void setCliApePat(String cliApePat) {
        this.cliApePat = cliApePat;
    }
    public String getCliApeMat() {
        return this.cliApeMat;
    }
    
    public void setCliApeMat(String cliApeMat) {
        this.cliApeMat = cliApeMat;
    }
    public char getCliSex() {
        return this.cliSex;
    }
    
    public void setCliSex(char cliSex) {
        this.cliSex = cliSex;
    }
    public String getCliDir() {
        return this.cliDir;
    }
    
    public void setCliDir(String cliDir) {
        this.cliDir = cliDir;
    }
    public String getCliTelFij() {
        return this.cliTelFij;
    }
    
    public void setCliTelFij(String cliTelFij) {
        this.cliTelFij = cliTelFij;
    }
    public String getCliTelCel() {
        return this.cliTelCel;
    }
    
    public void setCliTelCel(String cliTelCel) {
        this.cliTelCel = cliTelCel;
    }
    public String getCliEmail() {
        return this.cliEmail;
    }
    
    public void setCliEmail(String cliEmail) {
        this.cliEmail = cliEmail;
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
    public Set getEnP1mCarteraClienteses() {
        return this.enP1mCarteraClienteses;
    }
    
    public void setEnP1mCarteraClienteses(Set enP1mCarteraClienteses) {
        this.enP1mCarteraClienteses = enP1mCarteraClienteses;
    }
    public Set getEnP1mClientesRutases() {
        return this.enP1mClientesRutases;
    }
    
    public void setEnP1mClientesRutases(Set enP1mClientesRutases) {
        this.enP1mClientesRutases = enP1mClientesRutases;
    }
    public Set getEnP1mDocumentoClientes() {
        return this.enP1mDocumentoClientes;
    }
    
    public void setEnP1mDocumentoClientes(Set enP1mDocumentoClientes) {
        this.enP1mDocumentoClientes = enP1mDocumentoClientes;
    }
    public Set getEnP1mFacturaVentaCabs() {
        return this.enP1mFacturaVentaCabs;
    }
    
    public void setEnP1mFacturaVentaCabs(Set enP1mFacturaVentaCabs) {
        this.enP1mFacturaVentaCabs = enP1mFacturaVentaCabs;
    }




}


