package org.epis.minierp.model.contabilidad;

import java.io.Serializable;

public class LibroMayorPKView implements Serializable {
    protected String libDiaCod;
    protected int asiCabCod;
    protected int asiDetCod;
    
    public LibroMayorPKView(){}

    public LibroMayorPKView(String LibDiaCod, int AsiCabCod, int AsiDetCod) {
        this.libDiaCod = LibDiaCod;
        this.asiCabCod = AsiCabCod;
        this.asiDetCod = AsiDetCod;
    }

    public String getLibDiaCod() {
        return libDiaCod;
    }

    public void setLibDiaCod(String LibDiaCod) {
        this.libDiaCod = LibDiaCod;
    }

    public int getAsiCabCod() {
        return asiCabCod;
    }

    public void setAsiCabCod(int AsiCabCod) {
        this.asiCabCod = AsiCabCod;
    }

    public int getAsiDetCod() {
        return asiDetCod;
    }

    public void setAsiDetCod(int AsiDetCod) {
        this.asiDetCod = AsiDetCod;
    }
    
    public boolean equals(Object other) {
        if ((this == other)) {
            return true;
        }
        if ((other == null)) {
            return false;
        }
        if (!(other instanceof LibroMayorPKView)) {
            return false;
        }
        LibroMayorPKView castOther = (LibroMayorPKView) other;

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
