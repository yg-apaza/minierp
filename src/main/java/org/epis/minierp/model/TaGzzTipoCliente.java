package org.epis.minierp.model;
// Generated 27/11/2016 02:57:20 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * TaGzzTipoCliente generated by hbm2java
 */
public class TaGzzTipoCliente  implements java.io.Serializable {


     private Integer tipCliCod;
     private String tipCliDet;
     private Character estRegCod;
     private Set enP1mClientes = new HashSet(0);

    public TaGzzTipoCliente() {
    }

	
    public TaGzzTipoCliente(String tipCliDet) {
        this.tipCliDet = tipCliDet;
    }
    public TaGzzTipoCliente(String tipCliDet, Character estRegCod, Set enP1mClientes) {
       this.tipCliDet = tipCliDet;
       this.estRegCod = estRegCod;
       this.enP1mClientes = enP1mClientes;
    }
   
    public Integer getTipCliCod() {
        return this.tipCliCod;
    }
    
    public void setTipCliCod(Integer tipCliCod) {
        this.tipCliCod = tipCliCod;
    }
    public String getTipCliDet() {
        return this.tipCliDet;
    }
    
    public void setTipCliDet(String tipCliDet) {
        this.tipCliDet = tipCliDet;
    }
    public Character getEstRegCod() {
        return this.estRegCod;
    }
    
    public void setEstRegCod(Character estRegCod) {
        this.estRegCod = estRegCod;
    }
    public Set getEnP1mClientes() {
        return this.enP1mClientes;
    }
    
    public void setEnP1mClientes(Set enP1mClientes) {
        this.enP1mClientes = enP1mClientes;
    }




}


