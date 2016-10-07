package org.epis.minierp.model;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class EnP3mAsientoCabId implements java.io.Serializable {
    private int asiCabCod;
    private String libDiaCod;

    public EnP3mAsientoCabId() {
    }

    public EnP3mAsientoCabId(int asiCabCod, String libDiaCod) {
        this.asiCabCod = asiCabCod;
        this.libDiaCod = libDiaCod;
    }

    @Column(name = "AsiCabCod", nullable = false)
    public int getAsiCabCod() {
        return this.asiCabCod;
    }

    public void setAsiCabCod(int asiCabCod) {
        this.asiCabCod = asiCabCod;
    }

    @Column(name = "LibDiaCod", nullable = false, length = 10)
    public String getLibDiaCod() {
        return this.libDiaCod;
    }

    public void setLibDiaCod(String libDiaCod) {
        this.libDiaCod = libDiaCod;
    }

    public boolean equals(Object other) {
        if ((this == other)) {
            return true;
        }
        if ((other == null)) {
            return false;
        }
        if (!(other instanceof EnP3mAsientoCabId)) {
            return false;
        }
        EnP3mAsientoCabId castOther = (EnP3mAsientoCabId) other;

        return (this.getAsiCabCod() == castOther.getAsiCabCod())
                && ((this.getLibDiaCod() == castOther.getLibDiaCod()) || (this.getLibDiaCod() != null && castOther.getLibDiaCod() != null && this.getLibDiaCod().equals(castOther.getLibDiaCod())));
    }

    public int hashCode() {
        int result = 17;

        result = 37 * result + this.getAsiCabCod();
        result = 37 * result + (getLibDiaCod() == null ? 0 : this.getLibDiaCod().hashCode());
        return result;
    }

    @Override
    public String toString() {
        return "EnP3mAsientoCabId{" + "asiCabCod=" + asiCabCod + ", libDiaCod=" + libDiaCod + '}';
    }
}
