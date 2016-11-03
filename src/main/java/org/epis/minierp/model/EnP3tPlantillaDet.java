package org.epis.minierp.model;
// Generated 02/11/2016 08:41:29 PM by Hibernate Tools 4.3.1



/**
 * EnP3tPlantillaDet generated by hbm2java
 */
public class EnP3tPlantillaDet  implements java.io.Serializable {


     private EnP3tPlantillaDetId id;
     private EnP3mCuenta enP3mCuenta;
     private EnP3mPlantillaCab enP3mPlantillaCab;
     private boolean plaDetDebHab;
     private double plaDetPor;

    public EnP3tPlantillaDet() {
    }

    public EnP3tPlantillaDet(EnP3tPlantillaDetId id, EnP3mCuenta enP3mCuenta, EnP3mPlantillaCab enP3mPlantillaCab, boolean plaDetDebHab, double plaDetPor) {
       this.id = id;
       this.enP3mCuenta = enP3mCuenta;
       this.enP3mPlantillaCab = enP3mPlantillaCab;
       this.plaDetDebHab = plaDetDebHab;
       this.plaDetPor = plaDetPor;
    }
   
    public EnP3tPlantillaDetId getId() {
        return this.id;
    }
    
    public void setId(EnP3tPlantillaDetId id) {
        this.id = id;
    }
    public EnP3mCuenta getEnP3mCuenta() {
        return this.enP3mCuenta;
    }
    
    public void setEnP3mCuenta(EnP3mCuenta enP3mCuenta) {
        this.enP3mCuenta = enP3mCuenta;
    }
    public EnP3mPlantillaCab getEnP3mPlantillaCab() {
        return this.enP3mPlantillaCab;
    }
    
    public void setEnP3mPlantillaCab(EnP3mPlantillaCab enP3mPlantillaCab) {
        this.enP3mPlantillaCab = enP3mPlantillaCab;
    }
    public boolean isPlaDetDebHab() {
        return this.plaDetDebHab;
    }
    
    public void setPlaDetDebHab(boolean plaDetDebHab) {
        this.plaDetDebHab = plaDetDebHab;
    }
    public double getPlaDetPor() {
        return this.plaDetPor;
    }
    
    public void setPlaDetPor(double plaDetPor) {
        this.plaDetPor = plaDetPor;
    }




}


