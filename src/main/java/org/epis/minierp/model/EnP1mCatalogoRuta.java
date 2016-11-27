package org.epis.minierp.model;
// Generated 27/11/2016 02:57:20 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * EnP1mCatalogoRuta generated by hbm2java
 */
public class EnP1mCatalogoRuta  implements java.io.Serializable {


     private int catRutCod;
     private String catRutDet;
     private char estRegCod;
     private Set enP1mClientesRutases = new HashSet(0);
     private Set enP1mPreventaCabs = new HashSet(0);
     private Set enP1mFacturaVentaCabs = new HashSet(0);

    public EnP1mCatalogoRuta() {
    }

	
    public EnP1mCatalogoRuta(int catRutCod, String catRutDet, char estRegCod) {
        this.catRutCod = catRutCod;
        this.catRutDet = catRutDet;
        this.estRegCod = estRegCod;
    }
    public EnP1mCatalogoRuta(int catRutCod, String catRutDet, char estRegCod, Set enP1mClientesRutases, Set enP1mPreventaCabs, Set enP1mFacturaVentaCabs) {
       this.catRutCod = catRutCod;
       this.catRutDet = catRutDet;
       this.estRegCod = estRegCod;
       this.enP1mClientesRutases = enP1mClientesRutases;
       this.enP1mPreventaCabs = enP1mPreventaCabs;
       this.enP1mFacturaVentaCabs = enP1mFacturaVentaCabs;
    }
   
    public int getCatRutCod() {
        return this.catRutCod;
    }
    
    public void setCatRutCod(int catRutCod) {
        this.catRutCod = catRutCod;
    }
    public String getCatRutDet() {
        return this.catRutDet;
    }
    
    public void setCatRutDet(String catRutDet) {
        this.catRutDet = catRutDet;
    }
    public char getEstRegCod() {
        return this.estRegCod;
    }
    
    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }
    public Set getEnP1mClientesRutases() {
        return this.enP1mClientesRutases;
    }
    
    public void setEnP1mClientesRutases(Set enP1mClientesRutases) {
        this.enP1mClientesRutases = enP1mClientesRutases;
    }
    public Set getEnP1mPreventaCabs() {
        return this.enP1mPreventaCabs;
    }
    
    public void setEnP1mPreventaCabs(Set enP1mPreventaCabs) {
        this.enP1mPreventaCabs = enP1mPreventaCabs;
    }
    public Set getEnP1mFacturaVentaCabs() {
        return this.enP1mFacturaVentaCabs;
    }
    
    public void setEnP1mFacturaVentaCabs(Set enP1mFacturaVentaCabs) {
        this.enP1mFacturaVentaCabs = enP1mFacturaVentaCabs;
    }




}


