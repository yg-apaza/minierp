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
@Table(name = "ta_gzz_estado_civil", catalog = "episerp")
public class TaGzzEstadoCivil implements java.io.Serializable {

    private Integer estCivCod;
    private String estCivDet;
    private char estRegCod;
    private Set enP1mClientes = new HashSet(0);
    private Set enP1mUsuarios = new HashSet(0);

    public TaGzzEstadoCivil() {
    }

    public TaGzzEstadoCivil(String estCivDet, char estRegCod) {
        this.estCivDet = estCivDet;
        this.estRegCod = estRegCod;
    }

    public TaGzzEstadoCivil(String estCivDet, char estRegCod, Set enP1mClientes, Set enP1mUsuarios) {
        this.estCivDet = estCivDet;
        this.estRegCod = estRegCod;
        this.enP1mClientes = enP1mClientes;
        this.enP1mUsuarios = enP1mUsuarios;
    }

    @Id
    @GeneratedValue(strategy = IDENTITY)

    @Column(name = "EstCivCod", unique = true, nullable = false)
    public Integer getEstCivCod() {
        return this.estCivCod;
    }

    public void setEstCivCod(Integer estCivCod) {
        this.estCivCod = estCivCod;
    }

    @Column(name = "EstCivDet", nullable = false, length = 20)
    public String getEstCivDet() {
        return this.estCivDet;
    }

    public void setEstCivDet(String estCivDet) {
        this.estCivDet = estCivDet;
    }

    @Column(name = "EstRegCod", nullable = false, length = 1)
    public char getEstRegCod() {
        return this.estRegCod;
    }

    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "taGzzEstadoCivil")
    public Set getEnP1mClientes() {
        return this.enP1mClientes;
    }

    public void setEnP1mClientes(Set enP1mClientes) {
        this.enP1mClientes = enP1mClientes;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "taGzzEstadoCivil")
    public Set getEnP1mUsuarios() {
        return this.enP1mUsuarios;
    }

    public void setEnP1mUsuarios(Set enP1mUsuarios) {
        this.enP1mUsuarios = enP1mUsuarios;
    }
}