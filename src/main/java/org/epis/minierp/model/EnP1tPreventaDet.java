package org.epis.minierp.model;

import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinColumns;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "en_p1t_preventa_det",catalog = "episerp")
public class EnP1tPreventaDet implements java.io.Serializable {
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

    @EmbeddedId
    @AttributeOverrides({
        @AttributeOverride(name = "preVenDetCod", column = @Column(name = "PreVenDetCod", nullable = false)),
        @AttributeOverride(name = "preVenCabCod", column = @Column(name = "PreVenCabCod", nullable = false, length = 10))})
    public EnP1tPreventaDetId getId() {
        return this.id;
    }

    public void setId(EnP1tPreventaDetId id) {
        this.id = id;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "PreVenCabCod", nullable = false, insertable = false, updatable = false)
    public EnP1mPreventaCab getEnP1mPreventaCab() {
        return this.enP1mPreventaCab;
    }

    public void setEnP1mPreventaCab(EnP1mPreventaCab enP1mPreventaCab) {
        this.enP1mPreventaCab = enP1mPreventaCab;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumns({
        @JoinColumn(name = "ProCod", referencedColumnName = "ProCod", nullable = false),
        @JoinColumn(name = "SubClaProCod", referencedColumnName = "SubClaProCod", nullable = false),
        @JoinColumn(name = "ClaProCod", referencedColumnName = "ClaProCod", nullable = false)})
    public EnP2mProducto getEnP2mProducto() {
        return this.enP2mProducto;
    }

    public void setEnP2mProducto(EnP2mProducto enP2mProducto) {
        this.enP2mProducto = enP2mProducto;
    }

    @Column(name = "PreVenDetCan", nullable = false, precision = 10)
    public double getPreVenDetCan() {
        return this.preVenDetCan;
    }

    public void setPreVenDetCan(double preVenDetCan) {
        this.preVenDetCan = preVenDetCan;
    }

    @Column(name = "PreVenDetValUni", nullable = false, precision = 10)
    public double getPreVenDetValUni() {
        return this.preVenDetValUni;
    }

    public void setPreVenDetValUni(double preVenDetValUni) {
        this.preVenDetValUni = preVenDetValUni;
    }

    @Override
    public String toString() {
        return "EnP1tPreventaDet{" + "id=" + id + ", enP1mPreventaCab=" + enP1mPreventaCab + ", enP2mProducto=" + enP2mProducto + ", preVenDetCan=" + preVenDetCan + ", preVenDetValUni=" + preVenDetValUni + '}';
    }
}