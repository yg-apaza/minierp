package org.epis.minierp.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ta_gzz_estado_civil")
public class EstadoCivil implements Serializable
{
    @Id
    private int estCivCod;
    @Column(name="EstCivDet")
    private String estCivDet;
    @Column(name="EstRegCod")
    private char estRegCod;

    public int getEstCivCod() {
        return estCivCod;
    }

    public void setEstCivCod(int estCivCod) {
        this.estCivCod = estCivCod;
    }

    public String getEstCivDet() {
        return estCivDet;
    }

    public void setEstCivDet(String estCivDet) {
        this.estCivDet = estCivDet;
    }

    public char getEstRegCod() {
        return estRegCod;
    }

    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }

    @Override
    public String toString() {
        return "EstadoCivil{" + "estCivCod=" + estCivCod + ", estCivDet=" + estCivDet + ", estRegCod=" + estRegCod + '}';
    }
}
