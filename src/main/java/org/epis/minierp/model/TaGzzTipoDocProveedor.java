package org.epis.minierp.model;
// Generated 30/10/2016 12:40:40 AM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * TaGzzTipoDocProveedor generated by hbm2java
 */
public class TaGzzTipoDocProveedor  implements java.io.Serializable {


     private Integer tipDocProCod;
     private String tipDocProDet;
     private char estRegCod;
     private Set enP4mDocumentoProveedors = new HashSet(0);

    public TaGzzTipoDocProveedor() {
    }

	
    public TaGzzTipoDocProveedor(String tipDocProDet, char estRegCod) {
        this.tipDocProDet = tipDocProDet;
        this.estRegCod = estRegCod;
    }
    public TaGzzTipoDocProveedor(String tipDocProDet, char estRegCod, Set enP4mDocumentoProveedors) {
       this.tipDocProDet = tipDocProDet;
       this.estRegCod = estRegCod;
       this.enP4mDocumentoProveedors = enP4mDocumentoProveedors;
    }
   
    public Integer getTipDocProCod() {
        return this.tipDocProCod;
    }
    
    public void setTipDocProCod(Integer tipDocProCod) {
        this.tipDocProCod = tipDocProCod;
    }
    public String getTipDocProDet() {
        return this.tipDocProDet;
    }
    
    public void setTipDocProDet(String tipDocProDet) {
        this.tipDocProDet = tipDocProDet;
    }
    public char getEstRegCod() {
        return this.estRegCod;
    }
    
    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }
    public Set getEnP4mDocumentoProveedors() {
        return this.enP4mDocumentoProveedors;
    }
    
    public void setEnP4mDocumentoProveedors(Set enP4mDocumentoProveedors) {
        this.enP4mDocumentoProveedors = enP4mDocumentoProveedors;
    }




}


