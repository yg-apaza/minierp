package org.epis.minierp.model;
// Generated 04/03/2017 10:43:21 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * TaGzzEstadoCivil generated by hbm2java
 */
public class TaGzzEstadoCivil  implements java.io.Serializable {


     private Integer estCivCod;
     private String estCivDet;
     private char estRegCod;
     private Set enP1mClientes = new HashSet(0);
     private Set enP1mUsuarios = new HashSet(0);

    public TaGzzEstadoCivil() {
    }

	
    public TaGzzEstadoCivil(String estCivDet, char estRegCod) {
        this.estCivDet = estCivDet;
        this.estRegCod = estRegCod;
    }
    public TaGzzEstadoCivil(String estCivDet, char estRegCod, Set enP1mClientes, Set enP1mUsuarios) {
       this.estCivDet = estCivDet;
       this.estRegCod = estRegCod;
       this.enP1mClientes = enP1mClientes;
       this.enP1mUsuarios = enP1mUsuarios;
    }
   
    public Integer getEstCivCod() {
        return this.estCivCod;
    }
    
    public void setEstCivCod(Integer estCivCod) {
        this.estCivCod = estCivCod;
    }
    public String getEstCivDet() {
        return this.estCivDet;
    }
    
    public void setEstCivDet(String estCivDet) {
        this.estCivDet = estCivDet;
    }
    public char getEstRegCod() {
        return this.estRegCod;
    }
    
    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }
    public Set getEnP1mClientes() {
        return this.enP1mClientes;
    }
    
    public void setEnP1mClientes(Set enP1mClientes) {
        this.enP1mClientes = enP1mClientes;
    }
    public Set getEnP1mUsuarios() {
        return this.enP1mUsuarios;
    }
    
    public void setEnP1mUsuarios(Set enP1mUsuarios) {
        this.enP1mUsuarios = enP1mUsuarios;
    }




}


