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
@Table(name = "ta_gzz_tipo_comprobante", catalog = "episerp")
public class TaGzzTipoComprobante implements java.io.Serializable {

    private Integer tipComCod;
    private String tipComDet;
    private char estRegCod;
    private Set enP3mAsientoCabs = new HashSet(0);

    public TaGzzTipoComprobante() {
    }

    public TaGzzTipoComprobante(String tipComDet, char estRegCod) {
        this.tipComDet = tipComDet;
        this.estRegCod = estRegCod;
    }

    public TaGzzTipoComprobante(String tipComDet, char estRegCod, Set enP3mAsientoCabs) {
        this.tipComDet = tipComDet;
        this.estRegCod = estRegCod;
        this.enP3mAsientoCabs = enP3mAsientoCabs;
    }

    @Id
    @GeneratedValue(strategy = IDENTITY)

    @Column(name = "TipComCod", unique = true, nullable = false)
    public Integer getTipComCod() {
        return this.tipComCod;
    }

    public void setTipComCod(Integer tipComCod) {
        this.tipComCod = tipComCod;
    }

    @Column(name = "TipComDet", nullable = false, length = 100)
    public String getTipComDet() {
        return this.tipComDet;
    }

    public void setTipComDet(String tipComDet) {
        this.tipComDet = tipComDet;
    }

    @Column(name = "EstRegCod", nullable = false, length = 1)
    public char getEstRegCod() {
        return this.estRegCod;
    }

    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "taGzzTipoComprobante")
    public Set getEnP3mAsientoCabs() {
        return this.enP3mAsientoCabs;
    }

    public void setEnP3mAsientoCabs(Set enP3mAsientoCabs) {
        this.enP3mAsientoCabs = enP3mAsientoCabs;
    }

    @Override
    public String toString() {
        return "TaGzzTipoComprobante{" + "tipComCod=" + tipComCod + ", tipComDet=" + tipComDet + ", estRegCod=" + estRegCod + '}';
    }
}
