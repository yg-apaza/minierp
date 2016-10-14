package org.epis.minierp.model;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class EnP1mMovimientoPuntoVenId implements java.io.Serializable {

    private int movPunVenCod;
    private int sucCod;
    private int punVenCod;

    public EnP1mMovimientoPuntoVenId() {
    }

    public EnP1mMovimientoPuntoVenId(int movPunVenCod, int sucCod, int punVenCod) {
        this.movPunVenCod = movPunVenCod;
        this.sucCod = sucCod;
        this.punVenCod = punVenCod;
    }

    @Column(name = "MovPunVenCod", nullable = false)
    public int getMovPunVenCod() {
        return this.movPunVenCod;
    }

    public void setMovPunVenCod(int movPunVenCod) {
        this.movPunVenCod = movPunVenCod;
    }

    @Column(name = "SucCod", nullable = false)
    public int getSucCod() {
        return this.sucCod;
    }

    public void setSucCod(int sucCod) {
        this.sucCod = sucCod;
    }

    @Column(name = "PunVenCod", nullable = false)
    public int getPunVenCod() {
        return this.punVenCod;
    }

    public void setPunVenCod(int punVenCod) {
        this.punVenCod = punVenCod;
    }

    public boolean equals(Object other) {
        if ((this == other)) {
            return true;
        }
        if ((other == null)) {
            return false;
        }
        if (!(other instanceof EnP1mMovimientoPuntoVenId)) {
            return false;
        }
        EnP1mMovimientoPuntoVenId castOther = (EnP1mMovimientoPuntoVenId) other;

        return (this.getMovPunVenCod() == castOther.getMovPunVenCod())
                && (this.getSucCod() == castOther.getSucCod())
                && (this.getPunVenCod() == castOther.getPunVenCod());
    }

    public int hashCode() {
        int result = 17;

        result = 37 * result + this.getMovPunVenCod();
        result = 37 * result + this.getSucCod();
        result = 37 * result + this.getPunVenCod();
        return result;
    }
}
