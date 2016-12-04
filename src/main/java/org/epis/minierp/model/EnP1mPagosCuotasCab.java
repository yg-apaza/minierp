package org.epis.minierp.model;
// Generated 04/12/2016 10:29:37 AM by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * EnP1mPagosCuotasCab generated by hbm2java
 */
public class EnP1mPagosCuotasCab  implements java.io.Serializable {


     private String facVenCabCod;
     private EnP1mFacturaVentaCab enP1mFacturaVentaCab;
     private int pagCuoNum;
     private int pagCuoNumPag;
     private double pagCuoDeuTot;
     private double pagCuoTotPag;
     private double pagCuoMonXcuo;
     private Date pagCuoFecIni;
     private Date pagCuoFecFin;
     private Date pagCuoFecPag;
     private char estRegCod;
     private Set enP1tPagosCuotasDets = new HashSet(0);

    public EnP1mPagosCuotasCab() {
    }

	
    public EnP1mPagosCuotasCab(EnP1mFacturaVentaCab enP1mFacturaVentaCab, int pagCuoNum, int pagCuoNumPag, double pagCuoDeuTot, double pagCuoTotPag, double pagCuoMonXcuo, Date pagCuoFecIni, Date pagCuoFecFin, Date pagCuoFecPag, char estRegCod) {
        this.enP1mFacturaVentaCab = enP1mFacturaVentaCab;
        this.pagCuoNum = pagCuoNum;
        this.pagCuoNumPag = pagCuoNumPag;
        this.pagCuoDeuTot = pagCuoDeuTot;
        this.pagCuoTotPag = pagCuoTotPag;
        this.pagCuoMonXcuo = pagCuoMonXcuo;
        this.pagCuoFecIni = pagCuoFecIni;
        this.pagCuoFecFin = pagCuoFecFin;
        this.pagCuoFecPag = pagCuoFecPag;
        this.estRegCod = estRegCod;
    }
    public EnP1mPagosCuotasCab(EnP1mFacturaVentaCab enP1mFacturaVentaCab, int pagCuoNum, int pagCuoNumPag, double pagCuoDeuTot, double pagCuoTotPag, double pagCuoMonXcuo, Date pagCuoFecIni, Date pagCuoFecFin, Date pagCuoFecPag, char estRegCod, Set enP1tPagosCuotasDets) {
       this.enP1mFacturaVentaCab = enP1mFacturaVentaCab;
       this.pagCuoNum = pagCuoNum;
       this.pagCuoNumPag = pagCuoNumPag;
       this.pagCuoDeuTot = pagCuoDeuTot;
       this.pagCuoTotPag = pagCuoTotPag;
       this.pagCuoMonXcuo = pagCuoMonXcuo;
       this.pagCuoFecIni = pagCuoFecIni;
       this.pagCuoFecFin = pagCuoFecFin;
       this.pagCuoFecPag = pagCuoFecPag;
       this.estRegCod = estRegCod;
       this.enP1tPagosCuotasDets = enP1tPagosCuotasDets;
    }
   
    public String getFacVenCabCod() {
        return this.facVenCabCod;
    }
    
    public void setFacVenCabCod(String facVenCabCod) {
        this.facVenCabCod = facVenCabCod;
    }
    public EnP1mFacturaVentaCab getEnP1mFacturaVentaCab() {
        return this.enP1mFacturaVentaCab;
    }
    
    public void setEnP1mFacturaVentaCab(EnP1mFacturaVentaCab enP1mFacturaVentaCab) {
        this.enP1mFacturaVentaCab = enP1mFacturaVentaCab;
    }
    public int getPagCuoNum() {
        return this.pagCuoNum;
    }
    
    public void setPagCuoNum(int pagCuoNum) {
        this.pagCuoNum = pagCuoNum;
    }
    public int getPagCuoNumPag() {
        return this.pagCuoNumPag;
    }
    
    public void setPagCuoNumPag(int pagCuoNumPag) {
        this.pagCuoNumPag = pagCuoNumPag;
    }
    public double getPagCuoDeuTot() {
        return this.pagCuoDeuTot;
    }
    
    public void setPagCuoDeuTot(double pagCuoDeuTot) {
        this.pagCuoDeuTot = pagCuoDeuTot;
    }
    public double getPagCuoTotPag() {
        return this.pagCuoTotPag;
    }
    
    public void setPagCuoTotPag(double pagCuoTotPag) {
        this.pagCuoTotPag = pagCuoTotPag;
    }
    public double getPagCuoMonXcuo() {
        return this.pagCuoMonXcuo;
    }
    
    public void setPagCuoMonXcuo(double pagCuoMonXcuo) {
        this.pagCuoMonXcuo = pagCuoMonXcuo;
    }
    public Date getPagCuoFecIni() {
        return this.pagCuoFecIni;
    }
    
    public void setPagCuoFecIni(Date pagCuoFecIni) {
        this.pagCuoFecIni = pagCuoFecIni;
    }
    public Date getPagCuoFecFin() {
        return this.pagCuoFecFin;
    }
    
    public void setPagCuoFecFin(Date pagCuoFecFin) {
        this.pagCuoFecFin = pagCuoFecFin;
    }
    public Date getPagCuoFecPag() {
        return this.pagCuoFecPag;
    }
    
    public void setPagCuoFecPag(Date pagCuoFecPag) {
        this.pagCuoFecPag = pagCuoFecPag;
    }
    public char getEstRegCod() {
        return this.estRegCod;
    }
    
    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }
    public Set getEnP1tPagosCuotasDets() {
        return this.enP1tPagosCuotasDets;
    }
    
    public void setEnP1tPagosCuotasDets(Set enP1tPagosCuotasDets) {
        this.enP1tPagosCuotasDets = enP1tPagosCuotasDets;
    }




}


