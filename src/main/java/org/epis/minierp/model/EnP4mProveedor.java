package org.epis.minierp.model;
// Generated 31/10/2016 01:37:15 AM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * EnP4mProveedor generated by hbm2java
 */
public class EnP4mProveedor  implements java.io.Serializable {


     private String prvCod;
     private String prvDet;
     private String prvRazSoc;
     private String prvNomCom;
     private String prvDomFis;
     private String prvCon;
     private String prvDir;
     private String prvTelFij;
     private String prvTelCel;
     private String prvEmail;
     private String prvPagWeb;
     private String prvObs;
     private char estRegCod;
     private Set enP4mFacturaCompraCabs = new HashSet(0);
     private Set enP4mDocumentoProveedors = new HashSet(0);

    public EnP4mProveedor() {
    }

	
    public EnP4mProveedor(String prvCod, String prvDet, char estRegCod) {
        this.prvCod = prvCod;
        this.prvDet = prvDet;
        this.estRegCod = estRegCod;
    }
    public EnP4mProveedor(String prvCod, String prvDet, String prvRazSoc, String prvNomCom, String prvDomFis, String prvCon, String prvDir, String prvTelFij, String prvTelCel, String prvEmail, String prvPagWeb, String prvObs, char estRegCod, Set enP4mFacturaCompraCabs, Set enP4mDocumentoProveedors) {
       this.prvCod = prvCod;
       this.prvDet = prvDet;
       this.prvRazSoc = prvRazSoc;
       this.prvNomCom = prvNomCom;
       this.prvDomFis = prvDomFis;
       this.prvCon = prvCon;
       this.prvDir = prvDir;
       this.prvTelFij = prvTelFij;
       this.prvTelCel = prvTelCel;
       this.prvEmail = prvEmail;
       this.prvPagWeb = prvPagWeb;
       this.prvObs = prvObs;
       this.estRegCod = estRegCod;
       this.enP4mFacturaCompraCabs = enP4mFacturaCompraCabs;
       this.enP4mDocumentoProveedors = enP4mDocumentoProveedors;
    }
   
    public String getPrvCod() {
        return this.prvCod;
    }
    
    public void setPrvCod(String prvCod) {
        this.prvCod = prvCod;
    }
    public String getPrvDet() {
        return this.prvDet;
    }
    
    public void setPrvDet(String prvDet) {
        this.prvDet = prvDet;
    }
    public String getPrvRazSoc() {
        return this.prvRazSoc;
    }
    
    public void setPrvRazSoc(String prvRazSoc) {
        this.prvRazSoc = prvRazSoc;
    }
    public String getPrvNomCom() {
        return this.prvNomCom;
    }
    
    public void setPrvNomCom(String prvNomCom) {
        this.prvNomCom = prvNomCom;
    }
    public String getPrvDomFis() {
        return this.prvDomFis;
    }
    
    public void setPrvDomFis(String prvDomFis) {
        this.prvDomFis = prvDomFis;
    }
    public String getPrvCon() {
        return this.prvCon;
    }
    
    public void setPrvCon(String prvCon) {
        this.prvCon = prvCon;
    }
    public String getPrvDir() {
        return this.prvDir;
    }
    
    public void setPrvDir(String prvDir) {
        this.prvDir = prvDir;
    }
    public String getPrvTelFij() {
        return this.prvTelFij;
    }
    
    public void setPrvTelFij(String prvTelFij) {
        this.prvTelFij = prvTelFij;
    }
    public String getPrvTelCel() {
        return this.prvTelCel;
    }
    
    public void setPrvTelCel(String prvTelCel) {
        this.prvTelCel = prvTelCel;
    }
    public String getPrvEmail() {
        return this.prvEmail;
    }
    
    public void setPrvEmail(String prvEmail) {
        this.prvEmail = prvEmail;
    }
    public String getPrvPagWeb() {
        return this.prvPagWeb;
    }
    
    public void setPrvPagWeb(String prvPagWeb) {
        this.prvPagWeb = prvPagWeb;
    }
    public String getPrvObs() {
        return this.prvObs;
    }
    
    public void setPrvObs(String prvObs) {
        this.prvObs = prvObs;
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
    public Set getEnP4mDocumentoProveedors() {
        return this.enP4mDocumentoProveedors;
    }
    
    public void setEnP4mDocumentoProveedors(Set enP4mDocumentoProveedors) {
        this.enP4mDocumentoProveedors = enP4mDocumentoProveedors;
    }




}


