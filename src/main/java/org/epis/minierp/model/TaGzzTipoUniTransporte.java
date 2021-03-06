package org.epis.minierp.model;
// Generated 04/03/2017 10:43:21 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * TaGzzTipoUniTransporte generated by hbm2java
 */
public class TaGzzTipoUniTransporte  implements java.io.Serializable {


     private Integer tipUniTraCod;
     private String tipUniTraDet;
     private Character estRegCod;
     private Set enP2mUnidadTransportes = new HashSet(0);

    public TaGzzTipoUniTransporte() {
    }

	
    public TaGzzTipoUniTransporte(String tipUniTraDet) {
        this.tipUniTraDet = tipUniTraDet;
    }
    public TaGzzTipoUniTransporte(String tipUniTraDet, Character estRegCod, Set enP2mUnidadTransportes) {
       this.tipUniTraDet = tipUniTraDet;
       this.estRegCod = estRegCod;
       this.enP2mUnidadTransportes = enP2mUnidadTransportes;
    }
   
    public Integer getTipUniTraCod() {
        return this.tipUniTraCod;
    }
    
    public void setTipUniTraCod(Integer tipUniTraCod) {
        this.tipUniTraCod = tipUniTraCod;
    }
    public String getTipUniTraDet() {
        return this.tipUniTraDet;
    }
    
    public void setTipUniTraDet(String tipUniTraDet) {
        this.tipUniTraDet = tipUniTraDet;
    }
    public Character getEstRegCod() {
        return this.estRegCod;
    }
    
    public void setEstRegCod(Character estRegCod) {
        this.estRegCod = estRegCod;
    }
    public Set getEnP2mUnidadTransportes() {
        return this.enP2mUnidadTransportes;
    }
    
    public void setEnP2mUnidadTransportes(Set enP2mUnidadTransportes) {
        this.enP2mUnidadTransportes = enP2mUnidadTransportes;
    }




}


