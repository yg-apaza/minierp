package org.epis.minierp.model;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "en_p1m_punto_venta", catalog = "episerp")
public class EnP1mPuntoVenta implements java.io.Serializable {

    private EnP1mPuntoVentaId id;
    private EnP1mSucursal enP1mSucursal;
    private String punVenDes;
    private char estRegCod;
    private Set enP1mMovimientoPuntoVens = new HashSet(0);

    public EnP1mPuntoVenta() {
    }

    public EnP1mPuntoVenta(EnP1mPuntoVentaId id, EnP1mSucursal enP1mSucursal, String punVenDes, char estRegCod) {
        this.id = id;
        this.enP1mSucursal = enP1mSucursal;
        this.punVenDes = punVenDes;
        this.estRegCod = estRegCod;
    }

    public EnP1mPuntoVenta(EnP1mPuntoVentaId id, EnP1mSucursal enP1mSucursal, String punVenDes, char estRegCod, Set enP1mMovimientoPuntoVens) {
        this.id = id;
        this.enP1mSucursal = enP1mSucursal;
        this.punVenDes = punVenDes;
        this.estRegCod = estRegCod;
        this.enP1mMovimientoPuntoVens = enP1mMovimientoPuntoVens;
    }

    @EmbeddedId

    @AttributeOverrides({
        @AttributeOverride(name = "punVenCod", column = @Column(name = "PunVenCod", nullable = false)),
        @AttributeOverride(name = "sucCod", column = @Column(name = "SucCod", nullable = false))})
    public EnP1mPuntoVentaId getId() {
        return this.id;
    }

    public void setId(EnP1mPuntoVentaId id) {
        this.id = id;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "SucCod", nullable = false, insertable = false, updatable = false)
    public EnP1mSucursal getEnP1mSucursal() {
        return this.enP1mSucursal;
    }

    public void setEnP1mSucursal(EnP1mSucursal enP1mSucursal) {
        this.enP1mSucursal = enP1mSucursal;
    }

    @Column(name = "PunVenDes", nullable = false, length = 60)
    public String getPunVenDes() {
        return this.punVenDes;
    }

    public void setPunVenDes(String punVenDes) {
        this.punVenDes = punVenDes;
    }

    @Column(name = "EstRegCod", nullable = false, length = 1)
    public char getEstRegCod() {
        return this.estRegCod;
    }

    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "enP1mPuntoVenta")
    public Set getEnP1mMovimientoPuntoVens() {
        return this.enP1mMovimientoPuntoVens;
    }

    public void setEnP1mMovimientoPuntoVens(Set enP1mMovimientoPuntoVens) {
        this.enP1mMovimientoPuntoVens = enP1mMovimientoPuntoVens;
    }
}
