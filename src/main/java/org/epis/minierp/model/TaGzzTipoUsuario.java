package org.epis.minierp.model;
// Generated 27/11/2016 05:44:55 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * TaGzzTipoUsuario generated by hbm2java
 */
public class TaGzzTipoUsuario  implements java.io.Serializable {


     private Integer tipUsuCod;
     private String tipUsuDet;
     private char estRegCod;
     private Set enP1mUsuarios = new HashSet(0);

    public TaGzzTipoUsuario() {
    }

	
    public TaGzzTipoUsuario(String tipUsuDet, char estRegCod) {
        this.tipUsuDet = tipUsuDet;
        this.estRegCod = estRegCod;
    }
    public TaGzzTipoUsuario(String tipUsuDet, char estRegCod, Set enP1mUsuarios) {
       this.tipUsuDet = tipUsuDet;
       this.estRegCod = estRegCod;
       this.enP1mUsuarios = enP1mUsuarios;
    }
   
    public Integer getTipUsuCod() {
        return this.tipUsuCod;
    }
    
    public void setTipUsuCod(Integer tipUsuCod) {
        this.tipUsuCod = tipUsuCod;
    }
    public String getTipUsuDet() {
        return this.tipUsuDet;
    }
    
    public void setTipUsuDet(String tipUsuDet) {
        this.tipUsuDet = tipUsuDet;
    }
    public char getEstRegCod() {
        return this.estRegCod;
    }
    
    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }
    public Set getEnP1mUsuarios() {
        return this.enP1mUsuarios;
    }
    
    public void setEnP1mUsuarios(Set enP1mUsuarios) {
        this.enP1mUsuarios = enP1mUsuarios;
    }




}


