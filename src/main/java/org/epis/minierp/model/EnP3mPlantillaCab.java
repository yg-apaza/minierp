package org.epis.minierp.model;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "en_p3m_plantilla_cab",catalog = "episerp")
public class EnP3mPlantillaCab implements java.io.Serializable {
    private String plaCod;
    private String plaDet;
    private String plaGlo;
    private char estRegCod;
    private Set enP3tPlantillaDets = new HashSet(0);

    public EnP3mPlantillaCab() {
    }

    public EnP3mPlantillaCab(String plaCod, char estRegCod) {
        this.plaCod = plaCod;
        this.estRegCod = estRegCod;
    }

    public EnP3mPlantillaCab(String plaCod, String plaDet, String plaGlo, char estRegCod, Set enP3tPlantillaDets) {
        this.plaCod = plaCod;
        this.plaDet = plaDet;
        this.plaGlo = plaGlo;
        this.estRegCod = estRegCod;
        this.enP3tPlantillaDets = enP3tPlantillaDets;
    }

    @Id
    @Column(name = "PlaCod", unique = true, nullable = false, length = 10)
    public String getPlaCod() {
        return this.plaCod;
    }

    public void setPlaCod(String plaCod) {
        this.plaCod = plaCod;
    }

    @Column(name = "PlaDet", length = 90)
    public String getPlaDet() {
        return this.plaDet;
    }

    public void setPlaDet(String plaDet) {
        this.plaDet = plaDet;
    }

    @Column(name = "PlaGlo", length = 60)
    public String getPlaGlo() {
        return this.plaGlo;
    }

    public void setPlaGlo(String plaGlo) {
        this.plaGlo = plaGlo;
    }

    @Column(name = "EstRegCod", nullable = false, length = 1)
    public char getEstRegCod() {
        return this.estRegCod;
    }

    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "enP3mPlantillaCab")
    public Set getEnP3tPlantillaDets() {
        return this.enP3tPlantillaDets;
    }

    public void setEnP3tPlantillaDets(Set enP3tPlantillaDets) {
        this.enP3tPlantillaDets = enP3tPlantillaDets;
    }

    @Override
    public String toString() {
        return "EnP3mPlantillaCab{" + "plaCod=" + plaCod + ", plaDet=" + plaDet + ", plaGlo=" + plaGlo + ", estRegCod=" + estRegCod + '}';
    }
}
