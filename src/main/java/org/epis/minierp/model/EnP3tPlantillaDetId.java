package org.epis.minierp.model;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class EnP3tPlantillaDetId implements java.io.Serializable {
    private int plaDetCod;
    private String plaCod;

    public EnP3tPlantillaDetId() {
    }

    public EnP3tPlantillaDetId(int plaDetCod, String plaCod) {
        this.plaDetCod = plaDetCod;
        this.plaCod = plaCod;
    }

    @Column(name = "PlaDetCod", nullable = false)
    public int getPlaDetCod() {
        return this.plaDetCod;
    }

    public void setPlaDetCod(int plaDetCod) {
        this.plaDetCod = plaDetCod;
    }

    @Column(name = "PlaCod", nullable = false, length = 10)
    public String getPlaCod() {
        return this.plaCod;
    }

    public void setPlaCod(String plaCod) {
        this.plaCod = plaCod;
    }

    public boolean equals(Object other) {
        if ((this == other)) {
            return true;
        }
        if ((other == null)) {
            return false;
        }
        if (!(other instanceof EnP3tPlantillaDetId)) {
            return false;
        }
        EnP3tPlantillaDetId castOther = (EnP3tPlantillaDetId) other;

        return (this.getPlaDetCod() == castOther.getPlaDetCod())
                && ((this.getPlaCod() == castOther.getPlaCod()) || (this.getPlaCod() != null && castOther.getPlaCod() != null && this.getPlaCod().equals(castOther.getPlaCod())));
    }

    public int hashCode() {
        int result = 17;

        result = 37 * result + this.getPlaDetCod();
        result = 37 * result + (getPlaCod() == null ? 0 : this.getPlaCod().hashCode());
        return result;
    }

    @Override
    public String toString() {
        return "EnP3tPlantillaDetId{" + "plaDetCod=" + plaDetCod + ", plaCod=" + plaCod + '}';
    }
}