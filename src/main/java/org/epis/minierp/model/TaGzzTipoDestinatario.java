package org.epis.minierp.model;
// Generated 27/11/2016 05:44:55 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * TaGzzTipoDestinatario generated by hbm2java
 */
public class TaGzzTipoDestinatario  implements java.io.Serializable {


     private Integer tipDstCod;
     private String tipDstDet;
     private Character estRegCod;
     private Set enP2mGuiaRemRemitentes = new HashSet(0);
     private Set enP2mGuiaRemTransportistas = new HashSet(0);

    public TaGzzTipoDestinatario() {
    }

	
    public TaGzzTipoDestinatario(String tipDstDet) {
        this.tipDstDet = tipDstDet;
    }
    public TaGzzTipoDestinatario(String tipDstDet, Character estRegCod, Set enP2mGuiaRemRemitentes, Set enP2mGuiaRemTransportistas) {
       this.tipDstDet = tipDstDet;
       this.estRegCod = estRegCod;
       this.enP2mGuiaRemRemitentes = enP2mGuiaRemRemitentes;
       this.enP2mGuiaRemTransportistas = enP2mGuiaRemTransportistas;
    }
   
    public Integer getTipDstCod() {
        return this.tipDstCod;
    }
    
    public void setTipDstCod(Integer tipDstCod) {
        this.tipDstCod = tipDstCod;
    }
    public String getTipDstDet() {
        return this.tipDstDet;
    }
    
    public void setTipDstDet(String tipDstDet) {
        this.tipDstDet = tipDstDet;
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


