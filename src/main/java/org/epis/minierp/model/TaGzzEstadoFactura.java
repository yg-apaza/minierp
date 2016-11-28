package org.epis.minierp.model;
// Generated 27/11/2016 05:44:55 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * TaGzzEstadoFactura generated by hbm2java
 */
public class TaGzzEstadoFactura  implements java.io.Serializable {


     private Integer estFacCod;
     private String estFacDet;
     private char estRegCod;
     private Set enP4mFacturaCompraCabs = new HashSet(0);
     private Set enP1mFacturaVentaCabs = new HashSet(0);

    public TaGzzEstadoFactura() {
    }

	
    public TaGzzEstadoFactura(String estFacDet, char estRegCod) {
        this.estFacDet = estFacDet;
        this.estRegCod = estRegCod;
    }
    public TaGzzEstadoFactura(String estFacDet, char estRegCod, Set enP4mFacturaCompraCabs, Set enP1mFacturaVentaCabs) {
       this.estFacDet = estFacDet;
       this.estRegCod = estRegCod;
       this.enP4mFacturaCompraCabs = enP4mFacturaCompraCabs;
       this.enP1mFacturaVentaCabs = enP1mFacturaVentaCabs;
    }
   
    public Integer getEstFacCod() {
        return this.estFacCod;
    }
    
    public void setEstFacCod(Integer estFacCod) {
        this.estFacCod = estFacCod;
    }
    public String getEstFacDet() {
        return this.estFacDet;
    }
    
    public void setEstFacDet(String estFacDet) {
        this.estFacDet = estFacDet;
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
    public Set getEnP1mFacturaVentaCabs() {
        return this.enP1mFacturaVentaCabs;
    }
    
    public void setEnP1mFacturaVentaCabs(Set enP1mFacturaVentaCabs) {
        this.enP1mFacturaVentaCabs = enP1mFacturaVentaCabs;
    }




}


