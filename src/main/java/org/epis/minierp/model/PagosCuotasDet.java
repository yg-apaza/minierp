package org.epis.minierp.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="en_p1t_pagos_cuotas_det")
public class PagosCuotasDet implements Serializable{
    
    @Id
    private String facVenCabCod;
    
    @Id
    private int pagCuoDetCod;
    
    @Column(name="PagCuoDetTotPag")
    private double pagCuoDetTotPag;

    public String getFacVenCabCod() {
        return facVenCabCod;
    }

    public int getPagCuoDetCod() {
        return pagCuoDetCod;
    }

    public double getPagCuoDetTotPag() {
        return pagCuoDetTotPag;
    }

    public void setFacVenCabCod(String facVenCabCod) {
        this.facVenCabCod = facVenCabCod;
    }

    public void setPagCuoDetCod(int pagCuoDetCod) {
        this.pagCuoDetCod = pagCuoDetCod;
    }

    public void setPagCuoDetTotPag(double pagCuoDetTotPag) {
        this.pagCuoDetTotPag = pagCuoDetTotPag;
    }

    @Override
    public String toString() {
        return "PagosCuotasDet{" + "facVenCabCod=" + facVenCabCod + ", pagCuoDetCod=" + pagCuoDetCod + ", pagCuoDetTotPag=" + pagCuoDetTotPag + '}';
    }
    
}
