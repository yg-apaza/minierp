package org.epis.minierp.model;

import java.util.Date;
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
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "en_p1m_movimiento_punto_ven", catalog = "episerp")
public class EnP1mMovimientoPuntoVen implements java.io.Serializable {

    private EnP1mMovimientoPuntoVenId id;
    private EnP1mPuntoVenta enP1mPuntoVenta;
    private EnP1mUsuario enP1mUsuario;
    private int movPunVenCom;
    private String movPunVenComCod;
    private Date movPunVenFec;
    private double movPunVenMon;
    private char estRegCod;

    public EnP1mMovimientoPuntoVen() {
    }

    public EnP1mMovimientoPuntoVen(EnP1mMovimientoPuntoVenId id, EnP1mPuntoVenta enP1mPuntoVenta, EnP1mUsuario enP1mUsuario, int movPunVenCom, String movPunVenComCod, Date movPunVenFec, double movPunVenMon, char estRegCod) {
        this.id = id;
        this.enP1mPuntoVenta = enP1mPuntoVenta;
        this.enP1mUsuario = enP1mUsuario;
        this.movPunVenCom = movPunVenCom;
        this.movPunVenComCod = movPunVenComCod;
        this.movPunVenFec = movPunVenFec;
        this.movPunVenMon = movPunVenMon;
        this.estRegCod = estRegCod;
    }

    @EmbeddedId

    @AttributeOverrides({
        @AttributeOverride(name = "movPunVenCod", column = @Column(name = "MovPunVenCod", nullable = false)),
        @AttributeOverride(name = "sucCod", column = @Column(name = "SucCod", nullable = false)),
        @AttributeOverride(name = "punVenCod", column = @Column(name = "PunVenCod", nullable = false))})
    public EnP1mMovimientoPuntoVenId getId() {
        return this.id;
    }

    public void setId(EnP1mMovimientoPuntoVenId id) {
        this.id = id;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumns({
        @JoinColumn(name = "SucCod", referencedColumnName = "PunVenCod", nullable = false, insertable = false, updatable = false),
        @JoinColumn(name = "PunVenCod", referencedColumnName = "SucCod", nullable = false, insertable = false, updatable = false)})
    public EnP1mPuntoVenta getEnP1mPuntoVenta() {
        return this.enP1mPuntoVenta;
    }

    public void setEnP1mPuntoVenta(EnP1mPuntoVenta enP1mPuntoVenta) {
        this.enP1mPuntoVenta = enP1mPuntoVenta;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "UsuCod", nullable = false)
    public EnP1mUsuario getEnP1mUsuario() {
        return this.enP1mUsuario;
    }

    public void setEnP1mUsuario(EnP1mUsuario enP1mUsuario) {
        this.enP1mUsuario = enP1mUsuario;
    }

    @Column(name = "MovPunVenCom", nullable = false)
    public int getMovPunVenCom() {
        return this.movPunVenCom;
    }

    public void setMovPunVenCom(int movPunVenCom) {
        this.movPunVenCom = movPunVenCom;
    }

    @Column(name = "MovPunVenComCod", nullable = false, length = 10)
    public String getMovPunVenComCod() {
        return this.movPunVenComCod;
    }

    public void setMovPunVenComCod(String movPunVenComCod) {
        this.movPunVenComCod = movPunVenComCod;
    }

    @Temporal(TemporalType.DATE)
    @Column(name = "MovPunVenFec", nullable = false, length = 10)
    public Date getMovPunVenFec() {
        return this.movPunVenFec;
    }

    public void setMovPunVenFec(Date movPunVenFec) {
        this.movPunVenFec = movPunVenFec;
    }

    @Column(name = "MovPunVenMon", nullable = false, precision = 10)
    public double getMovPunVenMon() {
        return this.movPunVenMon;
    }

    public void setMovPunVenMon(double movPunVenMon) {
        this.movPunVenMon = movPunVenMon;
    }

    @Column(name = "EstRegCod", nullable = false, length = 1)
    public char getEstRegCod() {
        return this.estRegCod;
    }

    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }
}