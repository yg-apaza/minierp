package org.epis.minierp.model;
// Generated 27/11/2016 05:44:55 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * TaGzzTipoFallaProducto generated by hbm2java
 */
public class TaGzzTipoFallaProducto  implements java.io.Serializable {


     private Integer tipFallProCod;
     private String tipFallProDet;
     private char estRegCod;
     private Set enP2tInventarioDets = new HashSet(0);

    public TaGzzTipoFallaProducto() {
    }

	
    public TaGzzTipoFallaProducto(String tipFallProDet, char estRegCod) {
        this.tipFallProDet = tipFallProDet;
        this.estRegCod = estRegCod;
    }
    public TaGzzTipoFallaProducto(String tipFallProDet, char estRegCod, Set enP2tInventarioDets) {
       this.tipFallProDet = tipFallProDet;
       this.estRegCod = estRegCod;
       this.enP2tInventarioDets = enP2tInventarioDets;
    }
   
    public Integer getTipFallProCod() {
        return this.tipFallProCod;
    }
    
    public void setTipFallProCod(Integer tipFallProCod) {
        this.tipFallProCod = tipFallProCod;
    }
    public String getTipFallProDet() {
        return this.tipFallProDet;
    }
    
    public void setTipFallProDet(String tipFallProDet) {
        this.tipFallProDet = tipFallProDet;
    }
    public char getEstRegCod() {
        return this.estRegCod;
    }
    
    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }
    public Set getEnP2tInventarioDets() {
        return this.enP2tInventarioDets;
    }
    
    public void setEnP2tInventarioDets(Set enP2tInventarioDets) {
        this.enP2tInventarioDets = enP2tInventarioDets;
    }




}


