package org.epis.minierp.model;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class EnP4tFacturaCompraDetId implements java.io.Serializable {
    private int facComDetCod;
    private String facComCabCod;

    public EnP4tFacturaCompraDetId() {
    }

    public EnP4tFacturaCompraDetId(int facComDetCod, String facComCabCod) {
        this.facComDetCod = facComDetCod;
        this.facComCabCod = facComCabCod;
    }

    @Column(name = "FacComDetCod", nullable = false)
    public int getFacComDetCod() {
        return this.facComDetCod;
    }

    public void setFacComDetCod(int facComDetCod) {
        this.facComDetCod = facComDetCod;
    }

    @Column(name = "FacComCabCod", nullable = false, length = 10)
    public String getFacComCabCod() {
        return this.facComCabCod;
    }

    public void setFacComCabCod(String facComCabCod) {
        this.facComCabCod = facComCabCod;
    }

    public boolean equals(Object other) {
        if ((this == other)) {
            return true;
        }
        if ((other == null)) {
            return false;
        }
        if (!(other instanceof EnP4tFacturaCompraDetId)) {
            return false;
        }
        EnP4tFacturaCompraDetId castOther = (EnP4tFacturaCompraDetId) other;

        return (this.getFacComDetCod() == castOther.getFacComDetCod())
                && ((this.getFacComCabCod() == castOther.getFacComCabCod()) || (this.getFacComCabCod() != null && castOther.getFacComCabCod() != null && this.getFacComCabCod().equals(castOther.getFacComCabCod())));
    }

    public int hashCode() {
        int result = 17;

        result = 37 * result + this.getFacComDetCod();
        result = 37 * result + (getFacComCabCod() == null ? 0 : this.getFacComCabCod().hashCode());
        return result;
    }

    @Override
    public String toString() {
        return "EnP4tFacturaCompraDetId{" + "facComDetCod=" + facComDetCod + ", facComCabCod=" + facComCabCod + '}';
    }
}
