package org.epis.minierp.model;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class EnP3mAsientoCabId implements java.io.Serializable {

    private int asiCabCod;
    private int libDiaCod;

    public EnP3mAsientoCabId() {
    }

    public EnP3mAsientoCabId(int asiCabCod, int libDiaCod) {
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

    @Column(name = "LibDiaCod", nullable = false)
    public int getLibDiaCod() {
        return this.libDiaCod;
    }

    public void setLibDiaCod(int libDiaCod) {
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
                && (this.getLibDiaCod() == castOther.getLibDiaCod());
    }

    public int hashCode() {
        int result = 17;

        result = 37 * result + this.getAsiCabCod();
        result = 37 * result + this.getLibDiaCod();
        return result;
    }

}
