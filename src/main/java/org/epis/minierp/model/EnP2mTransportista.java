package org.epis.minierp.model;
// Generated 05/11/2016 03:48:27 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * EnP2mTransportista generated by hbm2java
 */
public class EnP2mTransportista  implements java.io.Serializable {


     private String traCod;
     private String traNom;
     private String traApePat;
     private String traApeMat;
     private String traRazSoc;
     private String traNomCom;
     private String traDomFis;
     private String traTel;
     private String traEmail;
     private String traDir;
     private char estRegCod;
     private Set enP2mGuiaRemTransportistas = new HashSet(0);
     private Set enP2mDocumentoTransportistas = new HashSet(0);

    public EnP2mTransportista() {
    }

	
    public EnP2mTransportista(String traCod, String traNom, String traApePat, String traApeMat, char estRegCod) {
        this.traCod = traCod;
        this.traNom = traNom;
        this.traApePat = traApePat;
        this.traApeMat = traApeMat;
        this.estRegCod = estRegCod;
    }
    public EnP2mTransportista(String traCod, String traNom, String traApePat, String traApeMat, String traRazSoc, String traNomCom, String traDomFis, String traTel, String traEmail, String traDir, char estRegCod, Set enP2mGuiaRemTransportistas, Set enP2mDocumentoTransportistas) {
       this.traCod = traCod;
       this.traNom = traNom;
       this.traApePat = traApePat;
       this.traApeMat = traApeMat;
       this.traRazSoc = traRazSoc;
       this.traNomCom = traNomCom;
       this.traDomFis = traDomFis;
       this.traTel = traTel;
       this.traEmail = traEmail;
       this.traDir = traDir;
       this.estRegCod = estRegCod;
       this.enP2mGuiaRemTransportistas = enP2mGuiaRemTransportistas;
       this.enP2mDocumentoTransportistas = enP2mDocumentoTransportistas;
    }
   
    public String getTraCod() {
        return this.traCod;
    }
    
    public void setTraCod(String traCod) {
        this.traCod = traCod;
    }
    public String getTraNom() {
        return this.traNom;
    }
    
    public void setTraNom(String traNom) {
        this.traNom = traNom;
    }
    public String getTraApePat() {
        return this.traApePat;
    }
    
    public void setTraApePat(String traApePat) {
        this.traApePat = traApePat;
    }
    public String getTraApeMat() {
        return this.traApeMat;
    }
    
    public void setTraApeMat(String traApeMat) {
        this.traApeMat = traApeMat;
    }
    public String getTraRazSoc() {
        return this.traRazSoc;
    }
    
    public void setTraRazSoc(String traRazSoc) {
        this.traRazSoc = traRazSoc;
    }
    public String getTraNomCom() {
        return this.traNomCom;
    }
    
    public void setTraNomCom(String traNomCom) {
        this.traNomCom = traNomCom;
    }
    public String getTraDomFis() {
        return this.traDomFis;
    }
    
    public void setTraDomFis(String traDomFis) {
        this.traDomFis = traDomFis;
    }
    public String getTraTel() {
        return this.traTel;
    }
    
    public void setTraTel(String traTel) {
        this.traTel = traTel;
    }
    public String getTraEmail() {
        return this.traEmail;
    }
    
    public void setTraEmail(String traEmail) {
        this.traEmail = traEmail;
    }
    public String getTraDir() {
        return this.traDir;
    }
    
    public void setTraDir(String traDir) {
        this.traDir = traDir;
    }
    public char getEstRegCod() {
        return this.estRegCod;
    }
    
    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }
    public Set getEnP2mGuiaRemTransportistas() {
        return this.enP2mGuiaRemTransportistas;
    }
    
    public void setEnP2mGuiaRemTransportistas(Set enP2mGuiaRemTransportistas) {
        this.enP2mGuiaRemTransportistas = enP2mGuiaRemTransportistas;
    }
    public Set getEnP2mDocumentoTransportistas() {
        return this.enP2mDocumentoTransportistas;
    }
    
    public void setEnP2mDocumentoTransportistas(Set enP2mDocumentoTransportistas) {
        this.enP2mDocumentoTransportistas = enP2mDocumentoTransportistas;
    }




}


