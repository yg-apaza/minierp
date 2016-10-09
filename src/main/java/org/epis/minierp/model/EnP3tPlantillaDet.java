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
@Table(name = "en_p3t_plantilla_det", catalog = "episerp")
public class EnP3tPlantillaDet implements java.io.Serializable {

    private EnP3tPlantillaDetId id;
    private EnP3mCuenta enP3mCuenta;
    private EnP3mPlantillaCab enP3mPlantillaCab;
    private boolean plaDetDebHab;
    private double plaDetPor;

    public EnP3tPlantillaDet() {
    }

    public EnP3tPlantillaDet(EnP3tPlantillaDetId id, EnP3mCuenta enP3mCuenta, EnP3mPlantillaCab enP3mPlantillaCab, boolean plaDetDebHab, double plaDetPor) {
        this.id = id;
        this.enP3mCuenta = enP3mCuenta;
        this.enP3mPlantillaCab = enP3mPlantillaCab;
        this.plaDetDebHab = plaDetDebHab;
        this.plaDetPor = plaDetPor;
    }

    @EmbeddedId

    @AttributeOverrides({
        @AttributeOverride(name = "plaDetCod", column = @Column(name = "PlaDetCod", nullable = false)),
        @AttributeOverride(name = "plaCod", column = @Column(name = "PlaCod", nullable = false))})
    public EnP3tPlantillaDetId getId() {
        return this.id;
    }

    public void setId(EnP3tPlantillaDetId id) {
        this.id = id;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "CueCod", nullable = false)
    public EnP3mCuenta getEnP3mCuenta() {
        return this.enP3mCuenta;
    }

    public void setEnP3mCuenta(EnP3mCuenta enP3mCuenta) {
        this.enP3mCuenta = enP3mCuenta;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "PlaCod", nullable = false, insertable = false, updatable = false)
    public EnP3mPlantillaCab getEnP3mPlantillaCab() {
        return this.enP3mPlantillaCab;
    }

    public void setEnP3mPlantillaCab(EnP3mPlantillaCab enP3mPlantillaCab) {
        this.enP3mPlantillaCab = enP3mPlantillaCab;
    }

    @Column(name = "PlaDetDebHab", nullable = false)
    public boolean isPlaDetDebHab() {
        return this.plaDetDebHab;
    }

    public void setPlaDetDebHab(boolean plaDetDebHab) {
        this.plaDetDebHab = plaDetDebHab;
    }

    @Column(name = "PlaDetPor", nullable = false, precision = 5)
    public double getPlaDetPor() {
        return this.plaDetPor;
    }

    public void setPlaDetPor(double plaDetPor) {
        this.plaDetPor = plaDetPor;
    }

    @Override
    public String toString() {
        return "EnP3tPlantillaDet{" + "id=" + id + ", enP3mCuenta=" + enP3mCuenta + ", enP3mPlantillaCab=" + enP3mPlantillaCab + ", plaDetDebHab=" + plaDetDebHab + ", plaDetPor=" + plaDetPor + '}';
    }
}
