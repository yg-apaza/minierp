package org.epis.minierp.model;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class EnP1tPreventaDetId implements java.io.Serializable {

    private int preVenDetCod;
    private String preVenCabCod;

    public EnP1tPreventaDetId() {
    }

    public EnP1tPreventaDetId(int preVenDetCod, String preVenCabCod) {
        this.preVenDetCod = preVenDetCod;
        this.preVenCabCod = preVenCabCod;
    }

    @Column(name = "PreVenDetCod", nullable = false)
    public int getPreVenDetCod() {
        return this.preVenDetCod;
    }

    public void setPreVenDetCod(int preVenDetCod) {
        this.preVenDetCod = preVenDetCod;
    }

    @Column(name = "PreVenCabCod", nullable = false, length = 10)
    public String getPreVenCabCod() {
        return this.preVenCabCod;
    }

    public void setPreVenCabCod(String preVenCabCod) {
        this.preVenCabCod = preVenCabCod;
    }

    public boolean equals(Object other) {
        if ((this == other)) {
            return true;
        }
        if ((other == null)) {
            return false;
        }
        if (!(other instanceof EnP1tPreventaDetId)) {
            return false;
        }
        EnP1tPreventaDetId castOther = (EnP1tPreventaDetId) other;

        return (this.getPreVenDetCod() == castOther.getPreVenDetCod())
                && ((this.getPreVenCabCod() == castOther.getPreVenCabCod()) || (this.getPreVenCabCod() != null && castOther.getPreVenCabCod() != null && this.getPreVenCabCod().equals(castOther.getPreVenCabCod())));
    }

    public int hashCode() {
        int result = 17;

        result = 37 * result + this.getPreVenDetCod();
        result = 37 * result + (getPreVenCabCod() == null ? 0 : this.getPreVenCabCod().hashCode());
        return result;
    }

}
