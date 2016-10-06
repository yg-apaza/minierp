package org.epis.minierp.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ta_gzz_unidad_med")
public class UnidadMed implements Serializable
{
    @Id
    private int uniMedCod;
    
    @Column(name="UniMedDet")
    private String uniMedDet;
    
    @Column(name="EstRegCod")
    private char estRegCod;

    public int getUniMedCod() {
        return uniMedCod;
    }

    public String getUniMedDet() {
        return uniMedDet;
    }

    public char getEstRegCod() {
        return estRegCod;
    }

    public void setUniMedCod(int uniMedCod) {
        this.uniMedCod = uniMedCod;
    }

    public void setUniMedDet(String uniMedDet) {
        this.uniMedDet = uniMedDet;
    }

    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }

    @Override
    public String toString() {
        return "UnidadMed{" + "uniMedCod=" + uniMedCod + ", uniMedDet=" + uniMedDet + ", estRegCod=" + estRegCod + '}';
    }

}
