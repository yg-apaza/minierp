package org.epis.minierp.model;
// Generated 27/11/2016 05:44:55 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * TaGzzUnidadMed generated by hbm2java
 */
public class TaGzzUnidadMed  implements java.io.Serializable {


     private Integer uniMedCod;
     private String uniMedSim;
     private String uniMedDet;
     private char estRegCod;
     private Set enP2mProductos = new HashSet(0);

    public TaGzzUnidadMed() {
    }

	
    public TaGzzUnidadMed(String uniMedDet, char estRegCod) {
        this.uniMedDet = uniMedDet;
        this.estRegCod = estRegCod;
    }
    public TaGzzUnidadMed(String uniMedSim, String uniMedDet, char estRegCod, Set enP2mProductos) {
       this.uniMedSim = uniMedSim;
       this.uniMedDet = uniMedDet;
       this.estRegCod = estRegCod;
       this.enP2mProductos = enP2mProductos;
    }
   
    public Integer getUniMedCod() {
        return this.uniMedCod;
    }
    
    public void setUniMedCod(Integer uniMedCod) {
        this.uniMedCod = uniMedCod;
    }
    public String getUniMedSim() {
        return this.uniMedSim;
    }
    
    public void setUniMedSim(String uniMedSim) {
        this.uniMedSim = uniMedSim;
    }
    public String getUniMedDet() {
        return this.uniMedDet;
    }
    
    public void setUniMedDet(String uniMedDet) {
        this.uniMedDet = uniMedDet;
    }
    public char getEstRegCod() {
        return this.estRegCod;
    }
    
    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }
    public Set getEnP2mProductos() {
        return this.enP2mProductos;
    }
    
    public void setEnP2mProductos(Set enP2mProductos) {
        this.enP2mProductos = enP2mProductos;
    }




}


