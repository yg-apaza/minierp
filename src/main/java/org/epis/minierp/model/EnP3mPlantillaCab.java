package org.epis.minierp.model;
// Generated 04/12/2016 10:29:37 AM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * EnP3mPlantillaCab generated by hbm2java
 */
public class EnP3mPlantillaCab  implements java.io.Serializable {


     private Integer plaCod;
     private String plaDet;
     private String plaGlo;
     private char estRegCod;
     private Set enP3tPlantillaDets = new HashSet(0);

    public EnP3mPlantillaCab() {
    }

	
    public EnP3mPlantillaCab(char estRegCod) {
        this.estRegCod = estRegCod;
    }
    public EnP3mPlantillaCab(String plaDet, String plaGlo, char estRegCod, Set enP3tPlantillaDets) {
       this.plaDet = plaDet;
       this.plaGlo = plaGlo;
       this.estRegCod = estRegCod;
       this.enP3tPlantillaDets = enP3tPlantillaDets;
    }
   
    public Integer getPlaCod() {
        return this.plaCod;
    }
    
    public void setPlaCod(Integer plaCod) {
        this.plaCod = plaCod;
    }
    public String getPlaDet() {
        return this.plaDet;
    }
    
    public void setPlaDet(String plaDet) {
        this.plaDet = plaDet;
    }
    public String getPlaGlo() {
        return this.plaGlo;
    }
    
    public void setPlaGlo(String plaGlo) {
        this.plaGlo = plaGlo;
    }
    public char getEstRegCod() {
        return this.estRegCod;
    }
    
    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }
    public Set getEnP3tPlantillaDets() {
        return this.enP3tPlantillaDets;
    }
    
    public void setEnP3tPlantillaDets(Set enP3tPlantillaDets) {
        this.enP3tPlantillaDets = enP3tPlantillaDets;
    }




}


