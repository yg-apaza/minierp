package org.epis.minierp.model;
// Generated 09/11/2016 04:17:17 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * EnP3mPlantillaCab generated by hbm2java
 */
public class EnP3mPlantillaCab  implements java.io.Serializable {


     private Integer plaCod;
     private String plaDet;
     private String plaGlo;
     private boolean plaHab;
     private char estRegCod;
     private Set enP3tPlantillaDets = new HashSet(0);

    public EnP3mPlantillaCab() {
    }

	
    public EnP3mPlantillaCab(boolean plaHab, char estRegCod) {
        this.plaHab = plaHab;
        this.estRegCod = estRegCod;
    }
    public EnP3mPlantillaCab(String plaDet, String plaGlo, boolean plaHab, char estRegCod, Set enP3tPlantillaDets) {
       this.plaDet = plaDet;
       this.plaGlo = plaGlo;
       this.plaHab = plaHab;
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
    public boolean isPlaHab() {
        return this.plaHab;
    }
    
    public void setPlaHab(boolean plaHab) {
        this.plaHab = plaHab;
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


