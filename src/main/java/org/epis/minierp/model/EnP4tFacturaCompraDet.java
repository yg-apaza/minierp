package org.epis.minierp.model;
// Generated 30/10/2016 12:40:40 AM by Hibernate Tools 4.3.1



/**
 * EnP4tFacturaCompraDet generated by hbm2java
 */
public class EnP4tFacturaCompraDet  implements java.io.Serializable {


     private EnP4tFacturaCompraDetId id;
     private EnP2mProducto enP2mProducto;
     private EnP4mFacturaCompraCab enP4mFacturaCompraCab;
     private double facComDetCan;
     private double facComDetValUni;

    public EnP4tFacturaCompraDet() {
    }

    public EnP4tFacturaCompraDet(EnP4tFacturaCompraDetId id, EnP2mProducto enP2mProducto, EnP4mFacturaCompraCab enP4mFacturaCompraCab, double facComDetCan, double facComDetValUni) {
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
    public double getFacComDetCan() {
        return this.facComDetCan;
    }
    
    public void setFacComDetCan(double facComDetCan) {
        this.facComDetCan = facComDetCan;
    }
    public double getFacComDetValUni() {
        return this.facComDetValUni;
    }
    
    public void setFacComDetValUni(double facComDetValUni) {
        this.facComDetValUni = facComDetValUni;
    }




}


