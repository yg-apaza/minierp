package org.epis.minierp.model;
// Generated 27/11/2016 05:44:55 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * TaGzzEstadoUniTransporte generated by hbm2java
 */
public class TaGzzEstadoUniTransporte  implements java.io.Serializable {


     private Integer estUniTraCod;
     private String estUniTraDet;
     private Character estRegCod;
     private Set enP2mUnidadTransportes = new HashSet(0);

    public TaGzzEstadoUniTransporte() {
    }

	
    public TaGzzEstadoUniTransporte(String estUniTraDet) {
        this.estUniTraDet = estUniTraDet;
    }
    public TaGzzEstadoUniTransporte(String estUniTraDet, Character estRegCod, Set enP2mUnidadTransportes) {
       this.estUniTraDet = estUniTraDet;
       this.estRegCod = estRegCod;
       this.enP2mUnidadTransportes = enP2mUnidadTransportes;
    }
   
    public Integer getEstUniTraCod() {
        return this.estUniTraCod;
    }
    
    public void setEstUniTraCod(Integer estUniTraCod) {
        this.estUniTraCod = estUniTraCod;
    }
    public String getEstUniTraDet() {
        return this.estUniTraDet;
    }
    
    public void setEstUniTraDet(String estUniTraDet) {
        this.estUniTraDet = estUniTraDet;
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


