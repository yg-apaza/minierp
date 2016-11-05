package org.epis.minierp.model;
// Generated 05/11/2016 03:48:27 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * TaGzzTipoDocCliente generated by hbm2java
 */
public class TaGzzTipoDocCliente  implements java.io.Serializable {


     private Integer tipDocCliCod;
     private String tipDocCliDet;
     private char estRegCod;
     private Set enP1mDocumentoClientes = new HashSet(0);

    public TaGzzTipoDocCliente() {
    }

	
    public TaGzzTipoDocCliente(String tipDocCliDet, char estRegCod) {
        this.tipDocCliDet = tipDocCliDet;
        this.estRegCod = estRegCod;
    }
    public TaGzzTipoDocCliente(String tipDocCliDet, char estRegCod, Set enP1mDocumentoClientes) {
       this.tipDocCliDet = tipDocCliDet;
       this.estRegCod = estRegCod;
       this.enP1mDocumentoClientes = enP1mDocumentoClientes;
    }
   
    public Integer getTipDocCliCod() {
        return this.tipDocCliCod;
    }
    
    public void setTipDocCliCod(Integer tipDocCliCod) {
        this.tipDocCliCod = tipDocCliCod;
    }
    public String getTipDocCliDet() {
        return this.tipDocCliDet;
    }
    
    public void setTipDocCliDet(String tipDocCliDet) {
        this.tipDocCliDet = tipDocCliDet;
    }
    public char getEstRegCod() {
        return this.estRegCod;
    }
    
    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }
    public Set getEnP1mDocumentoClientes() {
        return this.enP1mDocumentoClientes;
    }
    
    public void setEnP1mDocumentoClientes(Set enP1mDocumentoClientes) {
        this.enP1mDocumentoClientes = enP1mDocumentoClientes;
    }




}


