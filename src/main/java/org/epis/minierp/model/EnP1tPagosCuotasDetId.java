package org.epis.minierp.model;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class EnP1tPagosCuotasDetId implements java.io.Serializable {
    private int pagCuoDetCod;
    private String facVenCabCod;

    public EnP1tPagosCuotasDetId() {
    }

    public EnP1tPagosCuotasDetId(int pagCuoDetCod, String facVenCabCod) {
        this.pagCuoDetCod = pagCuoDetCod;
        this.facVenCabCod = facVenCabCod;
    }

    @Column(name = "PagCuoDetCod", nullable = false)
    public int getPagCuoDetCod() {
        return this.pagCuoDetCod;
    }

    public void setPagCuoDetCod(int pagCuoDetCod) {
        this.pagCuoDetCod = pagCuoDetCod;
    }

    @Column(name = "FacVenCabCod", nullable = false, length = 10)
    public String getFacVenCabCod() {
        return this.facVenCabCod;
    }

    public void setFacVenCabCod(String facVenCabCod) {
        this.facVenCabCod = facVenCabCod;
    }

    public boolean equals(Object other) {
        if ((this == other)) {
            return true;
        }
        if ((other == null)) {
            return false;
        }
        if (!(other instanceof EnP1tPagosCuotasDetId)) {
            return false;
        }
        EnP1tPagosCuotasDetId castOther = (EnP1tPagosCuotasDetId) other;

        return (this.getPagCuoDetCod() == castOther.getPagCuoDetCod())
                && ((this.getFacVenCabCod() == castOther.getFacVenCabCod()) || (this.getFacVenCabCod() != null && castOther.getFacVenCabCod() != null && this.getFacVenCabCod().equals(castOther.getFacVenCabCod())));
    }

    public int hashCode() {
        int result = 17;

        result = 37 * result + this.getPagCuoDetCod();
        result = 37 * result + (getFacVenCabCod() == null ? 0 : this.getFacVenCabCod().hashCode());
        return result;
    }

    @Override
    public String toString() {
        return "EnP1tPagosCuotasDetId{" + "pagCuoDetCod=" + pagCuoDetCod + ", facVenCabCod=" + facVenCabCod + '}';
    }
}