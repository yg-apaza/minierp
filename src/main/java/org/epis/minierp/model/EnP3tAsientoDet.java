package org.epis.minierp.model;
// Generated 05/11/2016 03:48:27 PM by Hibernate Tools 4.3.1



/**
 * EnP3tAsientoDet generated by hbm2java
 */
public class EnP3tAsientoDet  implements java.io.Serializable {


     private EnP3tAsientoDetId id;
     private EnP3mAsientoCab enP3mAsientoCab;
     private EnP3mCuenta enP3mCuenta;
     private boolean asiDetDebHab;
     private double asiDetMon;

    public EnP3tAsientoDet() {
    }

    public EnP3tAsientoDet(EnP3tAsientoDetId id, EnP3mAsientoCab enP3mAsientoCab, EnP3mCuenta enP3mCuenta, boolean asiDetDebHab, double asiDetMon) {
       this.id = id;
       this.enP3mAsientoCab = enP3mAsientoCab;
       this.enP3mCuenta = enP3mCuenta;
       this.asiDetDebHab = asiDetDebHab;
       this.asiDetMon = asiDetMon;
    }
   
    public EnP3tAsientoDetId getId() {
        return this.id;
    }
    
    public void setId(EnP3tAsientoDetId id) {
        this.id = id;
    }
    public EnP3mAsientoCab getEnP3mAsientoCab() {
        return this.enP3mAsientoCab;
    }
    
    public void setEnP3mAsientoCab(EnP3mAsientoCab enP3mAsientoCab) {
        this.enP3mAsientoCab = enP3mAsientoCab;
    }
    public EnP3mCuenta getEnP3mCuenta() {
        return this.enP3mCuenta;
    }
    
    public void setEnP3mCuenta(EnP3mCuenta enP3mCuenta) {
        this.enP3mCuenta = enP3mCuenta;
    }
    public boolean isAsiDetDebHab() {
        return this.asiDetDebHab;
    }
    
    public void setAsiDetDebHab(boolean asiDetDebHab) {
        this.asiDetDebHab = asiDetDebHab;
    }
    public double getAsiDetMon() {
        return this.asiDetMon;
    }
    
    public void setAsiDetMon(double asiDetMon) {
        this.asiDetMon = asiDetMon;
    }




}


