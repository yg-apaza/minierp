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
@Table(name = "en_p4t_guia_compra_det",catalog = "episerp")
public class EnP4tGuiaCompraDet implements java.io.Serializable {
    private EnP4tGuiaCompraDetId id;
    private EnP2mProducto enP2mProducto;
    private EnP4mGuiaCompraCab enP4mGuiaCompraCab;
    private double guiComDetCan;

    public EnP4tGuiaCompraDet() {
    }

    public EnP4tGuiaCompraDet(EnP4tGuiaCompraDetId id, EnP2mProducto enP2mProducto, EnP4mGuiaCompraCab enP4mGuiaCompraCab, double guiComDetCan) {
        this.id = id;
        this.enP2mProducto = enP2mProducto;
        this.enP4mGuiaCompraCab = enP4mGuiaCompraCab;
        this.guiComDetCan = guiComDetCan;
    }

    @EmbeddedId

    @AttributeOverrides({
        @AttributeOverride(name = "guiComDetCod", column = @Column(name = "GuiComDetCod", nullable = false)),
        @AttributeOverride(name = "guiComCabCod", column = @Column(name = "GuiComCabCod", nullable = false, length = 10))})
    public EnP4tGuiaCompraDetId getId() {
        return this.id;
    }

    public void setId(EnP4tGuiaCompraDetId id) {
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
    @JoinColumn(name = "GuiComCabCod", nullable = false, insertable = false, updatable = false)
    public EnP4mGuiaCompraCab getEnP4mGuiaCompraCab() {
        return this.enP4mGuiaCompraCab;
    }

    public void setEnP4mGuiaCompraCab(EnP4mGuiaCompraCab enP4mGuiaCompraCab) {
        this.enP4mGuiaCompraCab = enP4mGuiaCompraCab;
    }

    @Column(name = "GuiComDetCan", nullable = false, precision = 10)
    public double getGuiComDetCan() {
        return this.guiComDetCan;
    }

    public void setGuiComDetCan(double guiComDetCan) {
        this.guiComDetCan = guiComDetCan;
    }

    @Override
    public String toString() {
        return "EnP4tGuiaCompraDet{" + "id=" + id + ", enP2mProducto=" + enP2mProducto + ", enP4mGuiaCompraCab=" + enP4mGuiaCompraCab + ", guiComDetCan=" + guiComDetCan + '}';
    }
}