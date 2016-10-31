package org.epis.minierp.model;
// Generated 31/10/2016 01:37:15 AM by Hibernate Tools 4.3.1



/**
 * EnP1tPreventaDet generated by hbm2java
 */
public class EnP1tPreventaDet  implements java.io.Serializable {


     private EnP1tPreventaDetId id;
     private EnP1mPreventaCab enP1mPreventaCab;
     private EnP2mProducto enP2mProducto;
     private double preVenDetCan;
     private double preVenDetValUni;

    public EnP1tPreventaDet() {
    }

    public EnP1tPreventaDet(EnP1tPreventaDetId id, EnP1mPreventaCab enP1mPreventaCab, EnP2mProducto enP2mProducto, double preVenDetCan, double preVenDetValUni) {
       this.id = id;
       this.enP1mPreventaCab = enP1mPreventaCab;
       this.enP2mProducto = enP2mProducto;
       this.preVenDetCan = preVenDetCan;
       this.preVenDetValUni = preVenDetValUni;
    }
   
    public EnP1tPreventaDetId getId() {
        return this.id;
    }
    
    public void setId(EnP1tPreventaDetId id) {
        this.id = id;
    }
    public EnP1mPreventaCab getEnP1mPreventaCab() {
        return this.enP1mPreventaCab;
    }
    
    public void setEnP1mPreventaCab(EnP1mPreventaCab enP1mPreventaCab) {
        this.enP1mPreventaCab = enP1mPreventaCab;
    }
    public EnP2mProducto getEnP2mProducto() {
        return this.enP2mProducto;
    }
    
    public void setEnP2mProducto(EnP2mProducto enP2mProducto) {
        this.enP2mProducto = enP2mProducto;
    }
    public double getPreVenDetCan() {
        return this.preVenDetCan;
    }
    
    public void setPreVenDetCan(double preVenDetCan) {
        this.preVenDetCan = preVenDetCan;
    }
    public double getPreVenDetValUni() {
        return this.preVenDetValUni;
    }
    
    public void setPreVenDetValUni(double preVenDetValUni) {
        this.preVenDetValUni = preVenDetValUni;
    }




}


