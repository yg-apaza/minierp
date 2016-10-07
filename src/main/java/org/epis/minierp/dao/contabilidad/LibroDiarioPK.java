package org.epis.minierp.dao.contabilidad;

import java.io.Serializable;

public class LibroDiarioPK implements Serializable {
    protected String LibDiaCod;
    protected int AsiCabCod;
    protected int AsiDetCod;
    
    public LibroDiarioPK(){}

    public LibroDiarioPK(String LibDiaCod, int AsiCabCod, int AsiDetCod) {
        this.LibDiaCod = LibDiaCod;
        this.AsiCabCod = AsiCabCod;
        this.AsiDetCod = AsiDetCod;
    }

    public String getLibDiaCod() {
        return LibDiaCod;
    }

    public void setLibDiaCod(String LibDiaCod) {
        this.LibDiaCod = LibDiaCod;
    }

    public int getAsiCabCod() {
        return AsiCabCod;
    }

    public void setAsiCabCod(int AsiCabCod) {
        this.AsiCabCod = AsiCabCod;
    }

    public int getAsiDetCod() {
        return AsiDetCod;
    }

    public void setAsiDetCod(int AsiDetCod) {
        this.AsiDetCod = AsiDetCod;
    }
    
    public boolean equals(Object other) {
        if ((this == other)) {
            return true;
        }
        if ((other == null)) {
            return false;
        }
        if (!(other instanceof LibroDiarioPK)) {
            return false;
        }
        LibroDiarioPK castOther = (LibroDiarioPK) other;

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

}
