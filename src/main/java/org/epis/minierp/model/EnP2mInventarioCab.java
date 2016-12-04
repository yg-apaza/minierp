package org.epis.minierp.model;
// Generated 04/12/2016 10:29:37 AM by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * EnP2mInventarioCab generated by hbm2java
 */
public class EnP2mInventarioCab  implements java.io.Serializable {


     private String invCabCod;
     private EnP1mUsuario enP1mUsuario;
     private Date invCabFec;
     private boolean invCabEst;
     private char estRegCod;
     private Set enP2tInventarioDets = new HashSet(0);

    public EnP2mInventarioCab() {
    }

	
    public EnP2mInventarioCab(String invCabCod, Date invCabFec, boolean invCabEst, char estRegCod) {
        this.invCabCod = invCabCod;
        this.invCabFec = invCabFec;
        this.invCabEst = invCabEst;
        this.estRegCod = estRegCod;
    }
    public EnP2mInventarioCab(String invCabCod, EnP1mUsuario enP1mUsuario, Date invCabFec, boolean invCabEst, char estRegCod, Set enP2tInventarioDets) {
       this.invCabCod = invCabCod;
       this.enP1mUsuario = enP1mUsuario;
       this.invCabFec = invCabFec;
       this.invCabEst = invCabEst;
       this.estRegCod = estRegCod;
       this.enP2tInventarioDets = enP2tInventarioDets;
    }
   
    public String getInvCabCod() {
        return this.invCabCod;
    }
    
    public void setInvCabCod(String invCabCod) {
        this.invCabCod = invCabCod;
    }
    public EnP1mUsuario getEnP1mUsuario() {
        return this.enP1mUsuario;
    }
    
    public void setEnP1mUsuario(EnP1mUsuario enP1mUsuario) {
        this.enP1mUsuario = enP1mUsuario;
    }
    public Date getInvCabFec() {
        return this.invCabFec;
    }
    
    public void setInvCabFec(Date invCabFec) {
        this.invCabFec = invCabFec;
    }
    public boolean isInvCabEst() {
        return this.invCabEst;
    }
    
    public void setInvCabEst(boolean invCabEst) {
        this.invCabEst = invCabEst;
    }
    public char getEstRegCod() {
        return this.estRegCod;
    }
    
    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }
    public Set getEnP2tInventarioDets() {
        return this.enP2tInventarioDets;
    }
    
    public void setEnP2tInventarioDets(Set enP2tInventarioDets) {
        this.enP2tInventarioDets = enP2tInventarioDets;
    }




}


