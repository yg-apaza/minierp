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
@Table(name = "en_p4t_factura_compra_det",catalog = "episerp")
public class EnP4tFacturaCompraDet implements java.io.Serializable {
    private EnP4tFacturaCompraDetId id;
    private EnP2mProducto enP2mProducto;
    private EnP4mFacturaCompraCab enP4mFacturaCompraCab;
    private double facComDetCan;
    private double facComDetValUni;

    public EnP4tFacturaCompraDet() {
    }

    public EnP4tFacturaCompraDet(EnP4tFacturaCompraDetId id, EnP2mProducto enP2mProducto, EnP4mFacturaCompraCab enP4mFacturaCompraCab, double facComDetCan, double facComDetValUni) {
        this.id = id;
        this.enP2mProducto = enP2mProducto;
        this.enP4mFacturaCompraCab = enP4mFacturaCompraCab;
        this.facComDetCan = facComDetCan;
        this.facComDetValUni = facComDetValUni;
    }

    @EmbeddedId
    @AttributeOverrides({
        @AttributeOverride(name = "facComDetCod", column = @Column(name = "FacComDetCod", nullable = false)),
        @AttributeOverride(name = "facComCabCod", column = @Column(name = "FacComCabCod", nullable = false, length = 10))})
    public EnP4tFacturaCompraDetId getId() {
        return this.id;
    }

    public void setId(EnP4tFacturaCompraDetId id) {
        this.id = id;
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

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "FacComCabCod", nullable = false, insertable = false, updatable = false)
    public EnP4mFacturaCompraCab getEnP4mFacturaCompraCab() {
        return this.enP4mFacturaCompraCab;
    }

    public void setEnP4mFacturaCompraCab(EnP4mFacturaCompraCab enP4mFacturaCompraCab) {
        this.enP4mFacturaCompraCab = enP4mFacturaCompraCab;
    }

    @Column(name = "FacComDetCan", nullable = false, precision = 10)
    public double getFacComDetCan() {
        return this.facComDetCan;
    }

    public void setFacComDetCan(double facComDetCan) {
        this.facComDetCan = facComDetCan;
    }

    @Column(name = "FacComDetValUni", nullable = false, precision = 10)
    public double getFacComDetValUni() {
        return this.facComDetValUni;
    }

    public void setFacComDetValUni(double facComDetValUni) {
        this.facComDetValUni = facComDetValUni;
    }

    @Override
    public String toString() {
        return "EnP4tFacturaCompraDet{" + "id=" + id + ", enP2mProducto=" + enP2mProducto + ", enP4mFacturaCompraCab=" + enP4mFacturaCompraCab + ", facComDetCan=" + facComDetCan + ", facComDetValUni=" + facComDetValUni + '}';
    }
}
