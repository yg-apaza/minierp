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
@Table(name = "ta_gzz_tipo_usuario",catalog = "episerp")
public class TaGzzTipoUsuario implements java.io.Serializable {
    private Integer tipUsuCod;
    private String tipUsuDet;
    private char estRegCod;
    private Set enP1mUsuarios = new HashSet(0);

    public TaGzzTipoUsuario() {
    }

    public TaGzzTipoUsuario(String tipUsuDet, char estRegCod) {
        this.tipUsuDet = tipUsuDet;
        this.estRegCod = estRegCod;
    }

    public TaGzzTipoUsuario(String tipUsuDet, char estRegCod, Set enP1mUsuarios) {
        this.tipUsuDet = tipUsuDet;
        this.estRegCod = estRegCod;
        this.enP1mUsuarios = enP1mUsuarios;
    }

    @Id
    @GeneratedValue(strategy = IDENTITY)
    @Column(name = "TipUsuCod", unique = true, nullable = false)
    public Integer getTipUsuCod() {
        return this.tipUsuCod;
    }

    public void setTipUsuCod(Integer tipUsuCod) {
        this.tipUsuCod = tipUsuCod;
    }

    @Column(name = "TipUsuDet", nullable = false, length = 20)
    public String getTipUsuDet() {
        return this.tipUsuDet;
    }

    public void setTipUsuDet(String tipUsuDet) {
        this.tipUsuDet = tipUsuDet;
    }

    @Column(name = "EstRegCod", nullable = false, length = 1)
    public char getEstRegCod() {
        return this.estRegCod;
    }

    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "taGzzTipoUsuario")
    public Set getEnP1mUsuarios() {
        return this.enP1mUsuarios;
    }

    public void setEnP1mUsuarios(Set enP1mUsuarios) {
        this.enP1mUsuarios = enP1mUsuarios;
    }

    @Override
    public String toString() {
        return "TaGzzTipoUsuario{" + "tipUsuCod=" + tipUsuCod + ", tipUsuDet=" + tipUsuDet + ", estRegCod=" + estRegCod + '}';
    }
}