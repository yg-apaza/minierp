package org.epis.minierp.model;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class EnP1mDocumentoUsuarioId implements java.io.Serializable {
    private String usuCod;
    private int tipDocUsuCod;

    public EnP1mDocumentoUsuarioId() {
    }

    public EnP1mDocumentoUsuarioId(String usuCod, int tipDocUsuCod) {
        this.usuCod = usuCod;
        this.tipDocUsuCod = tipDocUsuCod;
    }

    @Column(name = "UsuCod", nullable = false, length = 15)
    public String getUsuCod() {
        return this.usuCod;
    }

    public void setUsuCod(String usuCod) {
        this.usuCod = usuCod;
    }

    @Column(name = "TipDocUsuCod", nullable = false)
    public int getTipDocUsuCod() {
        return this.tipDocUsuCod;
    }

    public void setTipDocUsuCod(int tipDocUsuCod) {
        this.tipDocUsuCod = tipDocUsuCod;
    }

    public boolean equals(Object other) {
        if ((this == other)) {
            return true;
        }
        if ((other == null)) {
            return false;
        }
        if (!(other instanceof EnP1mDocumentoUsuarioId)) {
            return false;
        }
        EnP1mDocumentoUsuarioId castOther = (EnP1mDocumentoUsuarioId) other;

        return ((this.getUsuCod() == castOther.getUsuCod()) || (this.getUsuCod() != null && castOther.getUsuCod() != null && this.getUsuCod().equals(castOther.getUsuCod())))
                && (this.getTipDocUsuCod() == castOther.getTipDocUsuCod());
    }

    public int hashCode() {
        int result = 17;

        result = 37 * result + (getUsuCod() == null ? 0 : this.getUsuCod().hashCode());
        result = 37 * result + this.getTipDocUsuCod();
        return result;
    }

    @Override
    public String toString() {
        return "EnP1mDocumentoUsuarioId{" + "usuCod=" + usuCod + ", tipDocUsuCod=" + tipDocUsuCod + '}';
    }
}