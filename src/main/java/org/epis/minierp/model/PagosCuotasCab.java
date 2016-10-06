package org.epis.minierp.model;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="en_p1m_pagos_cuotas_cab")
public class PagosCuotasCab implements Serializable{
    
    @Id
    private String facVenCabCod;
    
    @Column(name="PagCuoNum")
    private int pagCuoNum;
    
    @Column(name="PagCuoNumPag")
    private int pagCuoNumPag;
    
    @Column(name="PagCuoDeuTot")
    private double pagCuoDeuTot;
    
    @Column(name="PagCuoTotPag")
    private double pagCuoTotPag;
    
    @Column(name="PagCuoFecIni")
    private Date pagCuoFecIni;
    
    @Column(name="PagCuoFecFin")
    private Date pagCuoFecFin;
    
    @Column(name="PagCuoFecPag")
    private Date pagCuoFecPag;
    
    @Column(name="EstRegCod")
    private char estRegCod;

    public String getFacVenCabCod() {
        return facVenCabCod;
    }

    public int getPagCuoNum() {
        return pagCuoNum;
    }

    public int getPagCuoNumPag() {
        return pagCuoNumPag;
    }

    public double getPagCuoDeuTot() {
        return pagCuoDeuTot;
    }

    public double getPagCuoTotPag() {
        return pagCuoTotPag;
    }

    public Date getPagCuoFecIni() {
        return pagCuoFecIni;
    }

    public Date getPagCuoFecFin() {
        return pagCuoFecFin;
    }

    public Date getPagCuoFecPag() {
        return pagCuoFecPag;
    }

    public char getEstRegCod() {
        return estRegCod;
    }

    public void setFacVenCabCod(String facVenCabCod) {
        this.facVenCabCod = facVenCabCod;
    }

    public void setPagCuoNum(int pagCuoNum) {
        this.pagCuoNum = pagCuoNum;
    }

    public void setPagCuoNumPag(int pagCuoNumPag) {
        this.pagCuoNumPag = pagCuoNumPag;
    }

    public void setPagCuoDeuTot(double pagCuoDeuTot) {
        this.pagCuoDeuTot = pagCuoDeuTot;
    }

    public void setPagCuoTotPag(double pagCuoTotPag) {
        this.pagCuoTotPag = pagCuoTotPag;
    }

    public void setPagCuoFecIni(Date pagCuoFecIni) {
        this.pagCuoFecIni = pagCuoFecIni;
    }

    public void setPagCuoFecFin(Date pagCuoFecFin) {
        this.pagCuoFecFin = pagCuoFecFin;
    }

    public void setPagCuoFecPag(Date pagCuoFecPag) {
        this.pagCuoFecPag = pagCuoFecPag;
    }

    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }

    @Override
    public String toString() {
        return "PagosCuotas{" + "facVenCabCod=" + facVenCabCod + ", pagCuoNum=" + pagCuoNum + ", pagCuoNumPag=" + pagCuoNumPag + ", pagCuoDeuTot=" + pagCuoDeuTot + ", pagCuoTotPag=" + pagCuoTotPag + ", pagCuoFecIni=" + pagCuoFecIni + ", pagCuoFecFin=" + pagCuoFecFin + ", pagCuoFecPag=" + pagCuoFecPag + ", estRegCod=" + estRegCod + '}';
    }
    
}
