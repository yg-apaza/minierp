package org.epis.minierp.model;
// Generated 26/02/2017 07:56:21 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * TaGzzTipoDocUsuario generated by hbm2java
 */
public class TaGzzTipoDocUsuario  implements java.io.Serializable {


     private Integer tipDocUsuCod;
     private String tipDocUsuDet;
     private char estRegCod;
     private Set enP1mDocumentoUsuarios = new HashSet(0);

    public TaGzzTipoDocUsuario() {
    }

	
    public TaGzzTipoDocUsuario(String tipDocUsuDet, char estRegCod) {
        this.tipDocUsuDet = tipDocUsuDet;
        this.estRegCod = estRegCod;
    }
    public TaGzzTipoDocUsuario(String tipDocUsuDet, char estRegCod, Set enP1mDocumentoUsuarios) {
       this.tipDocUsuDet = tipDocUsuDet;
       this.estRegCod = estRegCod;
       this.enP1mDocumentoUsuarios = enP1mDocumentoUsuarios;
    }
   
    public Integer getTipDocUsuCod() {
        return this.tipDocUsuCod;
    }
    
    public void setTipDocUsuCod(Integer tipDocUsuCod) {
        this.tipDocUsuCod = tipDocUsuCod;
    }
    public String getTipDocUsuDet() {
        return this.tipDocUsuDet;
    }
    
    public void setTipDocUsuDet(String tipDocUsuDet) {
        this.tipDocUsuDet = tipDocUsuDet;
    }
    public char getEstRegCod() {
        return this.estRegCod;
    }
    
    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }
    public Set getEnP1mDocumentoUsuarios() {
        return this.enP1mDocumentoUsuarios;
    }
    
    public void setEnP1mDocumentoUsuarios(Set enP1mDocumentoUsuarios) {
        this.enP1mDocumentoUsuarios = enP1mDocumentoUsuarios;
    }




}


