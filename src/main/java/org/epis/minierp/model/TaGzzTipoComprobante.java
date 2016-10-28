package org.epis.minierp.model;
// Generated 28/10/2016 01:30:37 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * TaGzzTipoComprobante generated by hbm2java
 */
public class TaGzzTipoComprobante  implements java.io.Serializable {


     private Integer tipComCod;
     private String tipComDet;
     private char estRegCod;
     private Set enP3mAsientoCabs = new HashSet(0);
     private Set enP1mMovimientoPuntoVens = new HashSet(0);

    public TaGzzTipoComprobante() {
    }

	
    public TaGzzTipoComprobante(String tipComDet, char estRegCod) {
        this.tipComDet = tipComDet;
        this.estRegCod = estRegCod;
    }
    public TaGzzTipoComprobante(String tipComDet, char estRegCod, Set enP3mAsientoCabs, Set enP1mMovimientoPuntoVens) {
       this.tipComDet = tipComDet;
       this.estRegCod = estRegCod;
       this.enP3mAsientoCabs = enP3mAsientoCabs;
       this.enP1mMovimientoPuntoVens = enP1mMovimientoPuntoVens;
    }
   
    public Integer getTipComCod() {
        return this.tipComCod;
    }
    
    public void setTipComCod(Integer tipComCod) {
        this.tipComCod = tipComCod;
    }
    public String getTipComDet() {
        return this.tipComDet;
    }
    
    public void setTipComDet(String tipComDet) {
        this.tipComDet = tipComDet;
    }
    public char getEstRegCod() {
        return this.estRegCod;
    }
    
    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }
    public Set getEnP3mAsientoCabs() {
        return this.enP3mAsientoCabs;
    }
    
    public void setEnP3mAsientoCabs(Set enP3mAsientoCabs) {
        this.enP3mAsientoCabs = enP3mAsientoCabs;
    }
    public Set getEnP1mMovimientoPuntoVens() {
        return this.enP1mMovimientoPuntoVens;
    }
    
    public void setEnP1mMovimientoPuntoVens(Set enP1mMovimientoPuntoVens) {
        this.enP1mMovimientoPuntoVens = enP1mMovimientoPuntoVens;
    }




}


