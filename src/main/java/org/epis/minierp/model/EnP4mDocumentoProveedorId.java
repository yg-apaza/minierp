package org.epis.minierp.model;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class EnP4mDocumentoProveedorId implements java.io.Serializable {
    private String proCod;
    private int tipDocProCod;

    public EnP4mDocumentoProveedorId() {
    }

    public EnP4mDocumentoProveedorId(String proCod, int tipDocProCod) {
        this.proCod = proCod;
        this.tipDocProCod = tipDocProCod;
    }

    @Column(name = "ProCod", nullable = false, length = 15)
    public String getProCod() {
        return this.proCod;
    }

    public void setProCod(String proCod) {
        this.proCod = proCod;
    }

    @Column(name = "TipDocProCod", nullable = false)
    public int getTipDocProCod() {
        return this.tipDocProCod;
    }

    public void setTipDocProCod(int tipDocProCod) {
        this.tipDocProCod = tipDocProCod;
    }

    public boolean equals(Object other) {
        if ((this == other)) {
            return true;
        }
        if ((other == null)) {
            return false;
        }
        if (!(other instanceof EnP4mDocumentoProveedorId)) {
            return false;
        }
        EnP4mDocumentoProveedorId castOther = (EnP4mDocumentoProveedorId) other;

        return ((this.getProCod() == castOther.getProCod()) || (this.getProCod() != null && castOther.getProCod() != null && this.getProCod().equals(castOther.getProCod())))
                && (this.getTipDocProCod() == castOther.getTipDocProCod());
    }

    public int hashCode() {
        int result = 17;

        result = 37 * result + (getProCod() == null ? 0 : this.getProCod().hashCode());
        result = 37 * result + this.getTipDocProCod();
        return result;
    }

    @Override
    public String toString() {
        return "EnP4mDocumentoProveedorId{" + "proCod=" + proCod + ", tipDocProCod=" + tipDocProCod + '}';
    }
}