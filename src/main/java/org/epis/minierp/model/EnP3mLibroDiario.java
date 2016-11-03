package org.epis.minierp.model;
// Generated 02/11/2016 08:41:29 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * EnP3mLibroDiario generated by hbm2java
 */
public class EnP3mLibroDiario  implements java.io.Serializable {


     private Integer libDiaCod;
     private String libDiaPer;
     private char estRegCod;
     private Set enP3mAsientoCabs = new HashSet(0);

    public EnP3mLibroDiario() {
    }

	
    public EnP3mLibroDiario(String libDiaPer, char estRegCod) {
        this.libDiaPer = libDiaPer;
        this.estRegCod = estRegCod;
    }
    public EnP3mLibroDiario(String libDiaPer, char estRegCod, Set enP3mAsientoCabs) {
       this.libDiaPer = libDiaPer;
       this.estRegCod = estRegCod;
       this.enP3mAsientoCabs = enP3mAsientoCabs;
    }
   
    public Integer getLibDiaCod() {
        return this.libDiaCod;
    }
    
    public void setLibDiaCod(Integer libDiaCod) {
        this.libDiaCod = libDiaCod;
    }
    public String getLibDiaPer() {
        return this.libDiaPer;
    }
    
    public void setLibDiaPer(String libDiaPer) {
        this.libDiaPer = libDiaPer;
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




}


