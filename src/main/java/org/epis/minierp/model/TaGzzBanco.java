package org.epis.minierp.model;
// Generated 31/10/2016 01:37:15 AM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * TaGzzBanco generated by hbm2java
 */
public class TaGzzBanco  implements java.io.Serializable {


     private Integer banCod;
     private String banDet;
     private char estRegCod;
     private Set enP3mCuentaBancos = new HashSet(0);

    public TaGzzBanco() {
    }

	
    public TaGzzBanco(String banDet, char estRegCod) {
        this.banDet = banDet;
        this.estRegCod = estRegCod;
    }
    public TaGzzBanco(String banDet, char estRegCod, Set enP3mCuentaBancos) {
       this.banDet = banDet;
       this.estRegCod = estRegCod;
       this.enP3mCuentaBancos = enP3mCuentaBancos;
    }
   
    public Integer getBanCod() {
        return this.banCod;
    }
    
    public void setBanCod(Integer banCod) {
        this.banCod = banCod;
    }
    public String getBanDet() {
        return this.banDet;
    }
    
    public void setBanDet(String banDet) {
        this.banDet = banDet;
    }
    public char getEstRegCod() {
        return this.estRegCod;
    }
    
    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }
    public Set getEnP3mCuentaBancos() {
        return this.enP3mCuentaBancos;
    }
    
    public void setEnP3mCuentaBancos(Set enP3mCuentaBancos) {
        this.enP3mCuentaBancos = enP3mCuentaBancos;
    }




}


