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
@Table(name = "en_p3t_asiento_det",catalog = "episerp")
public class EnP3tAsientoDet implements java.io.Serializable {
    private EnP3tAsientoDetId id;
    private EnP3mAsientoCab enP3mAsientoCab;
    private EnP3mCuenta enP3mCuenta;
    private boolean asiDetDebHab;
    private double asiDetMon;

    public EnP3tAsientoDet() {
    }

    public EnP3tAsientoDet(EnP3tAsientoDetId id, EnP3mAsientoCab enP3mAsientoCab, EnP3mCuenta enP3mCuenta, boolean asiDetDebHab, double asiDetMon) {
        this.id = id;
        this.enP3mAsientoCab = enP3mAsientoCab;
        this.enP3mCuenta = enP3mCuenta;
        this.asiDetDebHab = asiDetDebHab;
        this.asiDetMon = asiDetMon;
    }

    @EmbeddedId
    @AttributeOverrides({
        @AttributeOverride(name = "asiDetCod", column = @Column(name = "AsiDetCod", nullable = false)),
        @AttributeOverride(name = "asiCabCod", column = @Column(name = "AsiCabCod", nullable = false)),
        @AttributeOverride(name = "libDiaCod", column = @Column(name = "LibDiaCod", nullable = false, length = 10))})
    public EnP3tAsientoDetId getId() {
        return this.id;
    }

    public void setId(EnP3tAsientoDetId id) {
        this.id = id;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumns({
        @JoinColumn(name = "AsiCabCod", referencedColumnName = "AsiCabCod", nullable = false, insertable = false, updatable = false),
        @JoinColumn(name = "LibDiaCod", referencedColumnName = "LibDiaCod", nullable = false, insertable = false, updatable = false)})
    public EnP3mAsientoCab getEnP3mAsientoCab() {
        return this.enP3mAsientoCab;
    }

    public void setEnP3mAsientoCab(EnP3mAsientoCab enP3mAsientoCab) {
        this.enP3mAsientoCab = enP3mAsientoCab;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "CueCod", nullable = false)
    public EnP3mCuenta getEnP3mCuenta() {
        return this.enP3mCuenta;
    }

    public void setEnP3mCuenta(EnP3mCuenta enP3mCuenta) {
        this.enP3mCuenta = enP3mCuenta;
    }

    @Column(name = "AsiDetDebHab", nullable = false)
    public boolean isAsiDetDebHab() {
        return this.asiDetDebHab;
    }

    public void setAsiDetDebHab(boolean asiDetDebHab) {
        this.asiDetDebHab = asiDetDebHab;
    }

    @Column(name = "AsiDetMon", nullable = false, precision = 10)
    public double getAsiDetMon() {
        return this.asiDetMon;
    }

    public void setAsiDetMon(double asiDetMon) {
        this.asiDetMon = asiDetMon;
    }

    @Override
    public String toString() {
        return "EnP3tAsientoDet{" + "id=" + id + ", enP3mAsientoCab=" + enP3mAsientoCab + ", enP3mCuenta=" + enP3mCuenta + ", asiDetDebHab=" + asiDetDebHab + ", asiDetMon=" + asiDetMon + '}';
    }
}
