package org.epis.minierp.model;
// Generated 25/11/2016 01:35:59 AM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;
import java.util.SortedSet;

/**
 * EnP3mCuenta generated by hbm2java
 */
public class EnP3mCuenta  implements java.io.Serializable, Comparable<EnP3mCuenta>{


     private Integer cueCod;
     private EnP3mCuenta enP3mCuentaByCueAmaDeb;
     private EnP3mCuenta enP3mCuentaByCueAmaHab;
     private EnP3mCuenta enP3mCuentaByCuePad;
     private int cueNiv;
     private String cueNum;
     private String cueDes;
     private char estRegCod;
     private Set enP3tAsientoDets = new HashSet(0);
     private Set enP3mCuentasForCueAmaDeb = new HashSet(0);
     private Set enP4mProveedors = new HashSet(0);
     private Set enP2mProductos = new HashSet(0);
     private Set enP3mCuentasForCueAmaHab = new HashSet(0);
     private Set enP3mCuentaBancos = new HashSet(0);
     private SortedSet enP3mCuentasForCuePad;
     private Set enP3tPlantillaDets = new HashSet(0);

    public EnP3mCuenta() {
    }

	
    public EnP3mCuenta(int cueNiv, String cueNum, String cueDes, char estRegCod) {
        this.cueNiv = cueNiv;
        this.cueNum = cueNum;
        this.cueDes = cueDes;
        this.estRegCod = estRegCod;
    }
    public EnP3mCuenta(EnP3mCuenta enP3mCuentaByCueAmaDeb, EnP3mCuenta enP3mCuentaByCueAmaHab, EnP3mCuenta enP3mCuentaByCuePad, int cueNiv, String cueNum, String cueDes, char estRegCod, Set enP3tAsientoDets, Set enP3mCuentasForCueAmaDeb, Set enP4mProveedors, Set enP2mProductos, Set enP3mCuentasForCueAmaHab, Set enP3mCuentaBancos, SortedSet enP3mCuentasForCuePad, Set enP3tPlantillaDets) {
       this.enP3mCuentaByCueAmaDeb = enP3mCuentaByCueAmaDeb;
       this.enP3mCuentaByCueAmaHab = enP3mCuentaByCueAmaHab;
       this.enP3mCuentaByCuePad = enP3mCuentaByCuePad;
       this.cueNiv = cueNiv;
       this.cueNum = cueNum;
       this.cueDes = cueDes;
       this.estRegCod = estRegCod;
       this.enP3tAsientoDets = enP3tAsientoDets;
       this.enP3mCuentasForCueAmaDeb = enP3mCuentasForCueAmaDeb;
       this.enP4mProveedors = enP4mProveedors;
       this.enP2mProductos = enP2mProductos;
       this.enP3mCuentasForCueAmaHab = enP3mCuentasForCueAmaHab;
       this.enP3mCuentaBancos = enP3mCuentaBancos;
       this.enP3mCuentasForCuePad = enP3mCuentasForCuePad;
       this.enP3tPlantillaDets = enP3tPlantillaDets;
    }
   
    public Integer getCueCod() {
        return this.cueCod;
    }
    
    public void setCueCod(Integer cueCod) {
        this.cueCod = cueCod;
    }
    public EnP3mCuenta getEnP3mCuentaByCueAmaDeb() {
        return this.enP3mCuentaByCueAmaDeb;
    }
    
    public void setEnP3mCuentaByCueAmaDeb(EnP3mCuenta enP3mCuentaByCueAmaDeb) {
        this.enP3mCuentaByCueAmaDeb = enP3mCuentaByCueAmaDeb;
    }
    public EnP3mCuenta getEnP3mCuentaByCueAmaHab() {
        return this.enP3mCuentaByCueAmaHab;
    }
    
    public void setEnP3mCuentaByCueAmaHab(EnP3mCuenta enP3mCuentaByCueAmaHab) {
        this.enP3mCuentaByCueAmaHab = enP3mCuentaByCueAmaHab;
    }
    public EnP3mCuenta getEnP3mCuentaByCuePad() {
        return this.enP3mCuentaByCuePad;
    }
    
    public void setEnP3mCuentaByCuePad(EnP3mCuenta enP3mCuentaByCuePad) {
        this.enP3mCuentaByCuePad = enP3mCuentaByCuePad;
    }
    public int getCueNiv() {
        return this.cueNiv;
    }
    
    public void setCueNiv(int cueNiv) {
        this.cueNiv = cueNiv;
    }
    public String getCueNum() {
        return this.cueNum;
    }
    
    public void setCueNum(String cueNum) {
        this.cueNum = cueNum;
    }
    public String getCueDes() {
        return this.cueDes;
    }
    
    public void setCueDes(String cueDes) {
        this.cueDes = cueDes;
    }
    public char getEstRegCod() {
        return this.estRegCod;
    }
    
    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }
    public Set getEnP3tAsientoDets() {
        return this.enP3tAsientoDets;
    }
    
    public void setEnP3tAsientoDets(Set enP3tAsientoDets) {
        this.enP3tAsientoDets = enP3tAsientoDets;
    }
    public Set getEnP3mCuentasForCueAmaDeb() {
        return this.enP3mCuentasForCueAmaDeb;
    }
    
    public void setEnP3mCuentasForCueAmaDeb(Set enP3mCuentasForCueAmaDeb) {
        this.enP3mCuentasForCueAmaDeb = enP3mCuentasForCueAmaDeb;
    }
    public Set getEnP4mProveedors() {
        return this.enP4mProveedors;
    }
    
    public void setEnP4mProveedors(Set enP4mProveedors) {
        this.enP4mProveedors = enP4mProveedors;
    }
    public Set getEnP2mProductos() {
        return this.enP2mProductos;
    }
    
    public void setEnP2mProductos(Set enP2mProductos) {
        this.enP2mProductos = enP2mProductos;
    }
    public Set getEnP3mCuentasForCueAmaHab() {
        return this.enP3mCuentasForCueAmaHab;
    }
    
    public void setEnP3mCuentasForCueAmaHab(Set enP3mCuentasForCueAmaHab) {
        this.enP3mCuentasForCueAmaHab = enP3mCuentasForCueAmaHab;
    }
    public Set getEnP3mCuentaBancos() {
        return this.enP3mCuentaBancos;
    }
    
    public void setEnP3mCuentaBancos(Set enP3mCuentaBancos) {
        this.enP3mCuentaBancos = enP3mCuentaBancos;
    }
    public Set getEnP3mCuentasForCuePad() {
        return this.enP3mCuentasForCuePad;
    }
    
    public void setEnP3mCuentasForCuePad(SortedSet enP3mCuentasForCuePad) {
        this.enP3mCuentasForCuePad = enP3mCuentasForCuePad;
    }
    public Set getEnP3tPlantillaDets() {
        return this.enP3tPlantillaDets;
    }
    
    public void setEnP3tPlantillaDets(Set enP3tPlantillaDets) {
        this.enP3tPlantillaDets = enP3tPlantillaDets;
    }

    @Override
    public int compareTo(EnP3mCuenta that){
        final int BEFORE = -1;
        final int AFTER = 1;
        if (that == null)
            return BEFORE;
        if(this.getCueNum().compareTo(that.getCueNum()) == 0)
            return AFTER;
        else
            return this.getCueNum().compareTo(that.getCueNum());
    }
}


