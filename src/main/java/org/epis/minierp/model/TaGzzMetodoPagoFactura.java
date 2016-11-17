package org.epis.minierp.model;
// Generated 15/11/2016 11:23:24 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * TaGzzMetodoPagoFactura generated by hbm2java
 */
public class TaGzzMetodoPagoFactura  implements java.io.Serializable {


     private Integer metPagCod;
     private String metPagDet;
     private char estRegCod;
     private Set enP4mFacturaCompraCabs = new HashSet(0);
     private Set enP1mFacturaVentaCabs = new HashSet(0);

    public TaGzzMetodoPagoFactura() {
    }

	
    public TaGzzMetodoPagoFactura(String metPagDet, char estRegCod) {
        this.metPagDet = metPagDet;
        this.estRegCod = estRegCod;
    }
    public TaGzzMetodoPagoFactura(String metPagDet, char estRegCod, Set enP4mFacturaCompraCabs, Set enP1mFacturaVentaCabs) {
       this.metPagDet = metPagDet;
       this.estRegCod = estRegCod;
       this.enP4mFacturaCompraCabs = enP4mFacturaCompraCabs;
       this.enP1mFacturaVentaCabs = enP1mFacturaVentaCabs;
    }
   
    public Integer getMetPagCod() {
        return this.metPagCod;
    }
    
    public void setMetPagCod(Integer metPagCod) {
        this.metPagCod = metPagCod;
    }
    public String getMetPagDet() {
        return this.metPagDet;
    }
    
    public void setMetPagDet(String metPagDet) {
        this.metPagDet = metPagDet;
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


