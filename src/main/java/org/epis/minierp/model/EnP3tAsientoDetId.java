package org.epis.minierp.model;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class EnP3tAsientoDetId implements java.io.Serializable {
    private int asiDetCod;
    private int asiCabCod;
    private String libDiaCod;

    public EnP3tAsientoDetId() {
    }

    public EnP3tAsientoDetId(int asiDetCod, int asiCabCod, String libDiaCod) {
        this.asiDetCod = asiDetCod;
        this.asiCabCod = asiCabCod;
        this.libDiaCod = libDiaCod;
    }

    @Column(name = "AsiDetCod", nullable = false)
    public int getAsiDetCod() {
        return this.asiDetCod;
    }

    public void setAsiDetCod(int asiDetCod) {
        this.asiDetCod = asiDetCod;
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
        if (!(other instanceof EnP3tAsientoDetId)) {
            return false;
        }
        EnP3tAsientoDetId castOther = (EnP3tAsientoDetId) other;

        return (this.getAsiDetCod() == castOther.getAsiDetCod())
                && (this.getAsiCabCod() == castOther.getAsiCabCod())
                && ((this.getLibDiaCod() == castOther.getLibDiaCod()) || (this.getLibDiaCod() != null && castOther.getLibDiaCod() != null && this.getLibDiaCod().equals(castOther.getLibDiaCod())));
    }

    public int hashCode() {
        int result = 17;

        result = 37 * result + this.getAsiDetCod();
        result = 37 * result + this.getAsiCabCod();
        result = 37 * result + (getLibDiaCod() == null ? 0 : this.getLibDiaCod().hashCode());
        return result;
    }

    @Override
    public String toString() {
        return "EnP3tAsientoDetId{" + "asiDetCod=" + asiDetCod + ", asiCabCod=" + asiCabCod + ", libDiaCod=" + libDiaCod + '}';
    }
}
