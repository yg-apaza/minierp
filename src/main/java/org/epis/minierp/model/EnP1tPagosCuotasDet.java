package org.epis.minierp.model;

import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "en_p1t_pagos_cuotas_det", catalog = "episerp")
public class EnP1tPagosCuotasDet implements java.io.Serializable {

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

    @EmbeddedId

    @AttributeOverrides({
        @AttributeOverride(name = "pagCuoDetCod", column = @Column(name = "PagCuoDetCod", nullable = false)),
        @AttributeOverride(name = "facVenCabCod", column = @Column(name = "FacVenCabCod", nullable = false, length = 10))})
    public EnP1tPagosCuotasDetId getId() {
        return this.id;
    }

    public void setId(EnP1tPagosCuotasDetId id) {
        this.id = id;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "FacVenCabCod", nullable = false, insertable = false, updatable = false)
    public EnP1mPagosCuotasCab getEnP1mPagosCuotasCab() {
        return this.enP1mPagosCuotasCab;
    }

    public void setEnP1mPagosCuotasCab(EnP1mPagosCuotasCab enP1mPagosCuotasCab) {
        this.enP1mPagosCuotasCab = enP1mPagosCuotasCab;
    }

    @Column(name = "PagCuoDetTotPag", nullable = false, precision = 10)
    public double getPagCuoDetTotPag() {
        return this.pagCuoDetTotPag;
    }

    public void setPagCuoDetTotPag(double pagCuoDetTotPag) {
        this.pagCuoDetTotPag = pagCuoDetTotPag;
    }

    @Override
    public String toString() {
        return "EnP1tPagosCuotasDet{" + "id=" + id + ", enP1mPagosCuotasCab=" + enP1mPagosCuotasCab + ", pagCuoDetTotPag=" + pagCuoDetTotPag + '}';
    }
}
