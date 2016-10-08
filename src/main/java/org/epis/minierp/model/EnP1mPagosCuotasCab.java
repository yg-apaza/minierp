package org.epis.minierp.model;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;

@Entity
@Table(name = "en_p1m_pagos_cuotas_cab", catalog = "episerp")
public class EnP1mPagosCuotasCab implements java.io.Serializable {

    private String facVenCabCod;
    private EnP1mFacturaVentaCab enP1mFacturaVentaCab;
    private int pagCuoNum;
    private int pagCuoNumPag;
    private double pagCuoDeuTot;
    private double pagCuoTotPag;
    private Date pagCuoFecIni;
    private Date pagCuoFecFin;
    private Date pagCuoFecPag;
    private char estRegCod;
    private Set enP1tPagosCuotasDets = new HashSet(0);

    public EnP1mPagosCuotasCab() {
    }

    public EnP1mPagosCuotasCab(EnP1mFacturaVentaCab enP1mFacturaVentaCab, int pagCuoNum, int pagCuoNumPag, double pagCuoDeuTot, double pagCuoTotPag, Date pagCuoFecIni, Date pagCuoFecFin, Date pagCuoFecPag, char estRegCod) {
        this.enP1mFacturaVentaCab = enP1mFacturaVentaCab;
        this.pagCuoNum = pagCuoNum;
        this.pagCuoNumPag = pagCuoNumPag;
        this.pagCuoDeuTot = pagCuoDeuTot;
        this.pagCuoTotPag = pagCuoTotPag;
        this.pagCuoFecIni = pagCuoFecIni;
        this.pagCuoFecFin = pagCuoFecFin;
        this.pagCuoFecPag = pagCuoFecPag;
        this.estRegCod = estRegCod;
    }

    public EnP1mPagosCuotasCab(EnP1mFacturaVentaCab enP1mFacturaVentaCab, int pagCuoNum, int pagCuoNumPag, double pagCuoDeuTot, double pagCuoTotPag, Date pagCuoFecIni, Date pagCuoFecFin, Date pagCuoFecPag, char estRegCod, Set enP1tPagosCuotasDets) {
        this.enP1mFacturaVentaCab = enP1mFacturaVentaCab;
        this.pagCuoNum = pagCuoNum;
        this.pagCuoNumPag = pagCuoNumPag;
        this.pagCuoDeuTot = pagCuoDeuTot;
        this.pagCuoTotPag = pagCuoTotPag;
        this.pagCuoFecIni = pagCuoFecIni;
        this.pagCuoFecFin = pagCuoFecFin;
        this.pagCuoFecPag = pagCuoFecPag;
        this.estRegCod = estRegCod;
        this.enP1tPagosCuotasDets = enP1tPagosCuotasDets;
    }

    @GenericGenerator(name = "generator", strategy = "foreign", parameters = @Parameter(name = "property", value = "enP1mFacturaVentaCab"))
    @Id
    @GeneratedValue(generator = "generator")
    @Column(name = "FacVenCabCod", unique = true, nullable = false, length = 10)
    public String getFacVenCabCod() {
        return this.facVenCabCod;
    }

    public void setFacVenCabCod(String facVenCabCod) {
        this.facVenCabCod = facVenCabCod;
    }

    @OneToOne(fetch = FetchType.LAZY)
    @PrimaryKeyJoinColumn
    public EnP1mFacturaVentaCab getEnP1mFacturaVentaCab() {
        return this.enP1mFacturaVentaCab;
    }

    public void setEnP1mFacturaVentaCab(EnP1mFacturaVentaCab enP1mFacturaVentaCab) {
        this.enP1mFacturaVentaCab = enP1mFacturaVentaCab;
    }

    @Column(name = "PagCuoNum", nullable = false)
    public int getPagCuoNum() {
        return this.pagCuoNum;
    }

    public void setPagCuoNum(int pagCuoNum) {
        this.pagCuoNum = pagCuoNum;
    }

    @Column(name = "PagCuoNumPag", nullable = false)
    public int getPagCuoNumPag() {
        return this.pagCuoNumPag;
    }

    public void setPagCuoNumPag(int pagCuoNumPag) {
        this.pagCuoNumPag = pagCuoNumPag;
    }

    @Column(name = "PagCuoDeuTot", nullable = false, precision = 10)
    public double getPagCuoDeuTot() {
        return this.pagCuoDeuTot;
    }

    public void setPagCuoDeuTot(double pagCuoDeuTot) {
        this.pagCuoDeuTot = pagCuoDeuTot;
    }

    @Column(name = "PagCuoTotPag", nullable = false, precision = 10)
    public double getPagCuoTotPag() {
        return this.pagCuoTotPag;
    }

    public void setPagCuoTotPag(double pagCuoTotPag) {
        this.pagCuoTotPag = pagCuoTotPag;
    }

    @Temporal(TemporalType.DATE)
    @Column(name = "PagCuoFecIni", nullable = false, length = 10)
    public Date getPagCuoFecIni() {
        return this.pagCuoFecIni;
    }

    public void setPagCuoFecIni(Date pagCuoFecIni) {
        this.pagCuoFecIni = pagCuoFecIni;
    }

    @Temporal(TemporalType.DATE)
    @Column(name = "PagCuoFecFin", nullable = false, length = 10)
    public Date getPagCuoFecFin() {
        return this.pagCuoFecFin;
    }

    public void setPagCuoFecFin(Date pagCuoFecFin) {
        this.pagCuoFecFin = pagCuoFecFin;
    }

    @Temporal(TemporalType.DATE)
    @Column(name = "PagCuoFecPag", nullable = false, length = 10)
    public Date getPagCuoFecPag() {
        return this.pagCuoFecPag;
    }

    public void setPagCuoFecPag(Date pagCuoFecPag) {
        this.pagCuoFecPag = pagCuoFecPag;
    }

    @Column(name = "EstRegCod", nullable = false, length = 1)
    public char getEstRegCod() {
        return this.estRegCod;
    }

    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "enP1mPagosCuotasCab")
    public Set getEnP1tPagosCuotasDets() {
        return this.enP1tPagosCuotasDets;
    }

    public void setEnP1tPagosCuotasDets(Set enP1tPagosCuotasDets) {
        this.enP1tPagosCuotasDets = enP1tPagosCuotasDets;
    }

    @Override
    public String toString() {
        return "EnP1mPagosCuotasCab{" + "facVenCabCod=" + facVenCabCod + ", enP1mFacturaVentaCab=" + enP1mFacturaVentaCab + ", pagCuoNum=" + pagCuoNum + ", pagCuoNumPag=" + pagCuoNumPag + ", pagCuoDeuTot=" + pagCuoDeuTot + ", pagCuoTotPag=" + pagCuoTotPag + ", pagCuoFecIni=" + pagCuoFecIni + ", pagCuoFecFin=" + pagCuoFecFin + ", pagCuoFecPag=" + pagCuoFecPag + ", estRegCod=" + estRegCod + '}';
    }
}