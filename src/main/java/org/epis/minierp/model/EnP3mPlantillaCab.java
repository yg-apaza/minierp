package org.epis.minierp.model;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "en_p3m_plantilla_cab", catalog = "episerp")
public class EnP3mPlantillaCab implements java.io.Serializable {

    private Integer plaCod;
    private String plaDet;
    private String plaGlo;
    private boolean plaHab;
    private char estRegCod;
    private Set enP3tPlantillaDets = new HashSet(0);

    public EnP3mPlantillaCab() {
    }

    public EnP3mPlantillaCab(boolean plaHab, char estRegCod) {
        this.plaHab = plaHab;
        this.estRegCod = estRegCod;
    }

    public EnP3mPlantillaCab(String plaDet, String plaGlo, boolean plaHab, char estRegCod, Set enP3tPlantillaDets) {
        this.plaDet = plaDet;
        this.plaGlo = plaGlo;
        this.plaHab = plaHab;
        this.estRegCod = estRegCod;
        this.enP3tPlantillaDets = enP3tPlantillaDets;
    }

    @Id
    @GeneratedValue(strategy = IDENTITY)

    @Column(name = "PlaCod", unique = true, nullable = false)
    public Integer getPlaCod() {
        return this.plaCod;
    }

    public void setPlaCod(Integer plaCod) {
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

    @Column(name = "PlaHab", nullable = false)
    public boolean isPlaHab() {
        return this.plaHab;
    }

    public void setPlaHab(boolean plaHab) {
        this.plaHab = plaHab;
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
}