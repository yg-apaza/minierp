package org.epis.minierp.model;
// Generated 04/03/2017 10:43:21 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * TaGzzTipoDevolucion generated by hbm2java
 */
public class TaGzzTipoDevolucion  implements java.io.Serializable {


     private Integer tipDevCod;
     private String tipDevDet;
     private Character estRegCod;
     private Set enP2cDevolucionComprases = new HashSet(0);
     private Set enP1cDevolucionVentases = new HashSet(0);

    public TaGzzTipoDevolucion() {
    }

	
    public TaGzzTipoDevolucion(String tipDevDet) {
        this.tipDevDet = tipDevDet;
    }
    public TaGzzTipoDevolucion(String tipDevDet, Character estRegCod, Set enP2cDevolucionComprases, Set enP1cDevolucionVentases) {
       this.tipDevDet = tipDevDet;
       this.estRegCod = estRegCod;
       this.enP2cDevolucionComprases = enP2cDevolucionComprases;
       this.enP1cDevolucionVentases = enP1cDevolucionVentases;
    }
   
    public Integer getTipDevCod() {
        return this.tipDevCod;
    }
    
    public void setTipDevCod(Integer tipDevCod) {
        this.tipDevCod = tipDevCod;
    }
    public String getTipDevDet() {
        return this.tipDevDet;
    }
    
    public void setTipDevDet(String tipDevDet) {
        this.tipDevDet = tipDevDet;
    }
    public Character getEstRegCod() {
        return this.estRegCod;
    }
    
    public void setEstRegCod(Character estRegCod) {
        this.estRegCod = estRegCod;
    }
    public Set getEnP2cDevolucionComprases() {
        return this.enP2cDevolucionComprases;
    }
    
    public void setEnP2cDevolucionComprases(Set enP2cDevolucionComprases) {
        this.enP2cDevolucionComprases = enP2cDevolucionComprases;
    }
    public Set getEnP1cDevolucionVentases() {
        return this.enP1cDevolucionVentases;
    }
    
    public void setEnP1cDevolucionVentases(Set enP1cDevolucionVentases) {
        this.enP1cDevolucionVentases = enP1cDevolucionVentases;
    }




}


