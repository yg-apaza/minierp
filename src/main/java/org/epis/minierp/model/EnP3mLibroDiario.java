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
@Table(name = "en_p3m_libro_diario",catalog = "episerp")
public class EnP3mLibroDiario implements java.io.Serializable {
    private String libDiaCod;
    private String libDiaPer;
    private char estRegCod;
    private Set enP3mAsientoCabs = new HashSet(0);

    public EnP3mLibroDiario() {
    }

    public EnP3mLibroDiario(String libDiaCod, String libDiaPer, char estRegCod) {
        this.libDiaCod = libDiaCod;
        this.libDiaPer = libDiaPer;
        this.estRegCod = estRegCod;
    }

    public EnP3mLibroDiario(String libDiaCod, String libDiaPer, char estRegCod, Set enP3mAsientoCabs) {
        this.libDiaCod = libDiaCod;
        this.libDiaPer = libDiaPer;
        this.estRegCod = estRegCod;
        this.enP3mAsientoCabs = enP3mAsientoCabs;
    }

    @Id
    @Column(name = "LibDiaCod", unique = true, nullable = false, length = 10)
    public String getLibDiaCod() {
        return this.libDiaCod;
    }

    public void setLibDiaCod(String libDiaCod) {
        this.libDiaCod = libDiaCod;
    }

    @Column(name = "LibDiaPer", nullable = false, length = 20)
    public String getLibDiaPer() {
        return this.libDiaPer;
    }

    public void setLibDiaPer(String libDiaPer) {
        this.libDiaPer = libDiaPer;
    }

    @Column(name = "EstRegCod", nullable = false, length = 1)
    public char getEstRegCod() {
        return this.estRegCod;
    }

    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "enP3mLibroDiario")
    public Set getEnP3mAsientoCabs() {
        return this.enP3mAsientoCabs;
    }

    public void setEnP3mAsientoCabs(Set enP3mAsientoCabs) {
        this.enP3mAsientoCabs = enP3mAsientoCabs;
    }

    @Override
    public String toString() {
        return "EnP3mLibroDiario{" + "libDiaCod=" + libDiaCod + ", libDiaPer=" + libDiaPer + ", estRegCod=" + estRegCod + '}';
    }
}