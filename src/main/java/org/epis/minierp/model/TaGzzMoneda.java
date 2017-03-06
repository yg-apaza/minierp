package org.epis.minierp.model;
// Generated 04/03/2017 10:43:21 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * TaGzzMoneda generated by hbm2java
 */
public class TaGzzMoneda  implements java.io.Serializable {


     private Integer monCod;
     private String monSim;
     private String monDet;
     private char estRegCod;
     private Set enP4mFacturaCompraCabs = new HashSet(0);
     private Set enP3mAsientoCabs = new HashSet(0);
     private Set enP1mPreventaCabs = new HashSet(0);
     private Set enP1mFacturaVentaCabs = new HashSet(0);
     private Set enP2mProductos = new HashSet(0);

    public TaGzzMoneda() {
    }

	
    public TaGzzMoneda(String monDet, char estRegCod) {
        this.monDet = monDet;
        this.estRegCod = estRegCod;
    }
    public TaGzzMoneda(String monSim, String monDet, char estRegCod, Set enP4mFacturaCompraCabs, Set enP3mAsientoCabs, Set enP1mPreventaCabs, Set enP1mFacturaVentaCabs, Set enP2mProductos) {
       this.monSim = monSim;
       this.monDet = monDet;
       this.estRegCod = estRegCod;
       this.enP4mFacturaCompraCabs = enP4mFacturaCompraCabs;
       this.enP3mAsientoCabs = enP3mAsientoCabs;
       this.enP1mPreventaCabs = enP1mPreventaCabs;
       this.enP1mFacturaVentaCabs = enP1mFacturaVentaCabs;
       this.enP2mProductos = enP2mProductos;
    }
   
    public Integer getMonCod() {
        return this.monCod;
    }
    
    public void setMonCod(Integer monCod) {
        this.monCod = monCod;
    }
    public String getMonSim() {
        return this.monSim;
    }
    
    public void setMonSim(String monSim) {
        this.monSim = monSim;
    }
    public String getMonDet() {
        return this.monDet;
    }
    
    public void setMonDet(String monDet) {
        this.monDet = monDet;
    }
    public char getEstRegCod() {
        return this.estRegCod;
    }
    
    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }
    public Set getEnP4mFacturaCompraCabs() {
        return this.enP4mFacturaCompraCabs;
    }
    
    public void setEnP4mFacturaCompraCabs(Set enP4mFacturaCompraCabs) {
        this.enP4mFacturaCompraCabs = enP4mFacturaCompraCabs;
    }
    public Set getEnP3mAsientoCabs() {
        return this.enP3mAsientoCabs;
    }
    
    public void setEnP3mAsientoCabs(Set enP3mAsientoCabs) {
        this.enP3mAsientoCabs = enP3mAsientoCabs;
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
    public Set getEnP2mProductos() {
        return this.enP2mProductos;
    }
    
    public void setEnP2mProductos(Set enP2mProductos) {
        this.enP2mProductos = enP2mProductos;
    }




}


