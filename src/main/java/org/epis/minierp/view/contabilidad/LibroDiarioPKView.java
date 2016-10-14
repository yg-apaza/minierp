package org.epis.minierp.view.contabilidad;

import java.io.Serializable;
import java.util.Objects;
import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class LibroDiarioPKView implements Serializable {
    
    @Column(name="LibDiaCod")
    protected Integer libDiaCod;
    
    @Column(name="AsiCabCod")
    protected Integer asiCabCod;
    
    @Column(name="AsiDetCod")
    protected Integer asiDetCod;
    
    public LibroDiarioPKView() {}

    public LibroDiarioPKView(Integer libDiaCod, Integer asiCabCod, Integer asiDetCod) {
        this.libDiaCod = libDiaCod;
        this.asiCabCod = asiCabCod;
        this.asiDetCod = asiDetCod;
    }

    public Integer getLibDiaCod() {
        return libDiaCod;
    }

    public void setLibDiaCod(Integer libDiaCod) {
        this.libDiaCod = libDiaCod;
    }

    public Integer getAsiCabCod() {
        return asiCabCod;
    }

    public void setAsiCabCod(Integer asiCabCod) {
        this.asiCabCod = asiCabCod;
    }

    public Integer getAsiDetCod() {
        return asiDetCod;
    }

    public void setAsiDetCod(Integer asiDetCod) {
        this.asiDetCod = asiDetCod;
    }

    @Override
    public int hashCode() {
        int hash = 3;
        hash = 61 * hash + Objects.hashCode(this.libDiaCod);
        hash = 61 * hash + Objects.hashCode(this.asiCabCod);
        hash = 61 * hash + Objects.hashCode(this.asiDetCod);
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final LibroDiarioPKView other = (LibroDiarioPKView) obj;
        if (!Objects.equals(this.libDiaCod, other.libDiaCod)) {
            return false;
        }
        if (!Objects.equals(this.asiCabCod, other.asiCabCod)) {
            return false;
        }
        if (!Objects.equals(this.asiDetCod, other.asiDetCod)) {
            return false;
        }
        return true;
    }
}
