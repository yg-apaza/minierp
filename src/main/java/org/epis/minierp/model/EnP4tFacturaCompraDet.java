package org.epis.minierp.model;
// Generated 04/03/2017 10:43:21 PM by Hibernate Tools 4.3.1


import java.math.BigDecimal;

/**
 * EnP4tFacturaCompraDet generated by hbm2java
 */
public class EnP4tFacturaCompraDet  implements java.io.Serializable {


     private EnP4tFacturaCompraDetId id;
     private EnP2mProducto enP2mProducto;
     private EnP4mFacturaCompraCab enP4mFacturaCompraCab;
     private BigDecimal facComDetCan;
     private BigDecimal facComDetValUni;

    public EnP4tFacturaCompraDet() {
    }

    public EnP4tFacturaCompraDet(EnP4tFacturaCompraDetId id, EnP2mProducto enP2mProducto, EnP4mFacturaCompraCab enP4mFacturaCompraCab, BigDecimal facComDetCan, BigDecimal facComDetValUni) {
       this.id = id;
       this.enP2mProducto = enP2mProducto;
       this.enP4mFacturaCompraCab = enP4mFacturaCompraCab;
       this.facComDetCan = facComDetCan;
       this.facComDetValUni = facComDetValUni;
    }
   
    public EnP4tFacturaCompraDetId getId() {
        return this.id;
    }
    
    public void setId(EnP4tFacturaCompraDetId id) {
        this.id = id;
    }
    public EnP2mProducto getEnP2mProducto() {
        return this.enP2mProducto;
    }
    
    public void setEnP2mProducto(EnP2mProducto enP2mProducto) {
        this.enP2mProducto = enP2mProducto;
    }
    public EnP4mFacturaCompraCab getEnP4mFacturaCompraCab() {
        return this.enP4mFacturaCompraCab;
    }
    
    public void setEnP4mFacturaCompraCab(EnP4mFacturaCompraCab enP4mFacturaCompraCab) {
        this.enP4mFacturaCompraCab = enP4mFacturaCompraCab;
    }
    public BigDecimal getFacComDetCan() {
        return this.facComDetCan;
    }
    
    public void setFacComDetCan(BigDecimal facComDetCan) {
        this.facComDetCan = facComDetCan;
    }
    public BigDecimal getFacComDetValUni() {
        return this.facComDetValUni;
    }
    
    public void setFacComDetValUni(BigDecimal facComDetValUni) {
        this.facComDetValUni = facComDetValUni;
    }




}


