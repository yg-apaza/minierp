package org.epis.minierp.model;
// Generated 30/10/2016 12:40:40 AM by Hibernate Tools 4.3.1



/**
 * EnP1tPagosCuotasDet generated by hbm2java
 */
public class EnP1tPagosCuotasDet  implements java.io.Serializable {


     private EnP1tPagosCuotasDetId id;
     private EnP1mPagosCuotasCab enP1mPagosCuotasCab;
     private double pagCuoDetTotPag;

    public EnP1tPagosCuotasDet() {
    }

    public EnP1tPagosCuotasDet(EnP1tPagosCuotasDetId id, EnP1mPagosCuotasCab enP1mPagosCuotasCab, double pagCuoDetTotPag) {
       this.id = id;
       this.enP1mPagosCuotasCab = enP1mPagosCuotasCab;
       this.pagCuoDetTotPag = pagCuoDetTotPag;
    }
   
    public EnP1tPagosCuotasDetId getId() {
        return this.id;
    }
    
    public void setId(EnP1tPagosCuotasDetId id) {
        this.id = id;
    }
    public EnP1mPagosCuotasCab getEnP1mPagosCuotasCab() {
        return this.enP1mPagosCuotasCab;
    }
    
    public void setEnP1mPagosCuotasCab(EnP1mPagosCuotasCab enP1mPagosCuotasCab) {
        this.enP1mPagosCuotasCab = enP1mPagosCuotasCab;
    }
    public double getPagCuoDetTotPag() {
        return this.pagCuoDetTotPag;
    }
    
    public void setPagCuoDetTotPag(double pagCuoDetTotPag) {
        this.pagCuoDetTotPag = pagCuoDetTotPag;
    }




}


