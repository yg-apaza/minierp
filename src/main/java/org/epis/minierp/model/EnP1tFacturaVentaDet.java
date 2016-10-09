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
@Table(name = "en_p1t_factura_venta_det", catalog = "episerp")
public class EnP1tFacturaVentaDet implements java.io.Serializable {

    private EnP1tFacturaVentaDetId id;
    private EnP1mFacturaVentaCab enP1mFacturaVentaCab;
    private EnP2mProducto enP2mProducto;
    private double facVenDetCan;
    private double facVenDetValUni;

    public EnP1tFacturaVentaDet() {
    }

    public EnP1tFacturaVentaDet(EnP1tFacturaVentaDetId id, EnP1mFacturaVentaCab enP1mFacturaVentaCab, EnP2mProducto enP2mProducto, double facVenDetCan, double facVenDetValUni) {
        this.id = id;
        this.enP1mFacturaVentaCab = enP1mFacturaVentaCab;
        this.enP2mProducto = enP2mProducto;
        this.facVenDetCan = facVenDetCan;
        this.facVenDetValUni = facVenDetValUni;
    }

    @EmbeddedId

    @AttributeOverrides({
        @AttributeOverride(name = "facVenDetCod", column = @Column(name = "FacVenDetCod", nullable = false)),
        @AttributeOverride(name = "facVenCabCod", column = @Column(name = "FacVenCabCod", nullable = false, length = 10))})
    public EnP1tFacturaVentaDetId getId() {
        return this.id;
    }

    public void setId(EnP1tFacturaVentaDetId id) {
        this.id = id;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "FacVenCabCod", nullable = false, insertable = false, updatable = false)
    public EnP1mFacturaVentaCab getEnP1mFacturaVentaCab() {
        return this.enP1mFacturaVentaCab;
    }

    public void setEnP1mFacturaVentaCab(EnP1mFacturaVentaCab enP1mFacturaVentaCab) {
        this.enP1mFacturaVentaCab = enP1mFacturaVentaCab;
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

    @Column(name = "FacVenDetCan", nullable = false, precision = 10)
    public double getFacVenDetCan() {
        return this.facVenDetCan;
    }

    public void setFacVenDetCan(double facVenDetCan) {
        this.facVenDetCan = facVenDetCan;
    }

    @Column(name = "FacVenDetValUni", nullable = false, precision = 10)
    public double getFacVenDetValUni() {
        return this.facVenDetValUni;
    }

    public void setFacVenDetValUni(double facVenDetValUni) {
        this.facVenDetValUni = facVenDetValUni;
    }

    @Override
    public String toString() {
        return "EnP1tFacturaVentaDet{" + "id=" + id + ", enP1mFacturaVentaCab=" + enP1mFacturaVentaCab + ", enP2mProducto=" + enP2mProducto + ", facVenDetCan=" + facVenDetCan + ", facVenDetValUni=" + facVenDetValUni + '}';
    }
}
