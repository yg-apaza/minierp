package org.epis.minierp.model;
// Generated 29/10/2016 12:36:12 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * TaGzzTipoDestinatario generated by hbm2java
 */
public class TaGzzTipoDestinatario  implements java.io.Serializable {


     private Integer tipDesCod;
     private String tipDesDet;
     private Character estRegCod;
     private Set enP2mGuiaRemRemitentes = new HashSet(0);
     private Set enP2mGuiaRemTransportistas = new HashSet(0);

    public TaGzzTipoDestinatario() {
    }

	
    public TaGzzTipoDestinatario(String tipDesDet) {
        this.tipDesDet = tipDesDet;
    }
    public TaGzzTipoDestinatario(String tipDesDet, Character estRegCod, Set enP2mGuiaRemRemitentes, Set enP2mGuiaRemTransportistas) {
       this.tipDesDet = tipDesDet;
       this.estRegCod = estRegCod;
       this.enP2mGuiaRemRemitentes = enP2mGuiaRemRemitentes;
       this.enP2mGuiaRemTransportistas = enP2mGuiaRemTransportistas;
    }
   
    public Integer getTipDesCod() {
        return this.tipDesCod;
    }
    
    public void setTipDesCod(Integer tipDesCod) {
        this.tipDesCod = tipDesCod;
    }
    public String getTipDesDet() {
        return this.tipDesDet;
    }
    
    public void setTipDesDet(String tipDesDet) {
        this.tipDesDet = tipDesDet;
    }
    public Character getEstRegCod() {
        return this.estRegCod;
    }
    
    public void setEstRegCod(Character estRegCod) {
        this.estRegCod = estRegCod;
    }
    public Set getEnP2mGuiaRemRemitentes() {
        return this.enP2mGuiaRemRemitentes;
    }
    
    public void setEnP2mGuiaRemRemitentes(Set enP2mGuiaRemRemitentes) {
        this.enP2mGuiaRemRemitentes = enP2mGuiaRemRemitentes;
    }
    public Set getEnP2mGuiaRemTransportistas() {
        return this.enP2mGuiaRemTransportistas;
    }
    
    public void setEnP2mGuiaRemTransportistas(Set enP2mGuiaRemTransportistas) {
        this.enP2mGuiaRemTransportistas = enP2mGuiaRemTransportistas;
    }




}


