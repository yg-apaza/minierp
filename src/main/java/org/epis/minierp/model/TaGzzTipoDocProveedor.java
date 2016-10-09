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
@Table(name = "ta_gzz_tipo_doc_proveedor", catalog = "episerp")
public class TaGzzTipoDocProveedor implements java.io.Serializable {

    private Integer tipDocProCod;
    private String tipDocProDet;
    private char estRegCod;
    private Set enP4mDocumentoProveedors = new HashSet(0);

    public TaGzzTipoDocProveedor() {
    }

    public TaGzzTipoDocProveedor(String tipDocProDet, char estRegCod) {
        this.tipDocProDet = tipDocProDet;
        this.estRegCod = estRegCod;
    }

    public TaGzzTipoDocProveedor(String tipDocProDet, char estRegCod, Set enP4mDocumentoProveedors) {
        this.tipDocProDet = tipDocProDet;
        this.estRegCod = estRegCod;
        this.enP4mDocumentoProveedors = enP4mDocumentoProveedors;
    }

    @Id
    @GeneratedValue(strategy = IDENTITY)

    @Column(name = "TipDocProCod", unique = true, nullable = false)
    public Integer getTipDocProCod() {
        return this.tipDocProCod;
    }

    public void setTipDocProCod(Integer tipDocProCod) {
        this.tipDocProCod = tipDocProCod;
    }

    @Column(name = "TipDocProDet", nullable = false, length = 90)
    public String getTipDocProDet() {
        return this.tipDocProDet;
    }

    public void setTipDocProDet(String tipDocProDet) {
        this.tipDocProDet = tipDocProDet;
    }

    @Column(name = "EstRegCod", nullable = false, length = 1)
    public char getEstRegCod() {
        return this.estRegCod;
    }

    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "taGzzTipoDocProveedor")
    public Set getEnP4mDocumentoProveedors() {
        return this.enP4mDocumentoProveedors;
    }

    public void setEnP4mDocumentoProveedors(Set enP4mDocumentoProveedors) {
        this.enP4mDocumentoProveedors = enP4mDocumentoProveedors;
    }

    @Override
    public String toString() {
        return "TaGzzTipoDocProveedor{" + "tipDocProCod=" + tipDocProCod + ", tipDocProDet=" + tipDocProDet + ", estRegCod=" + estRegCod + '}';
    }
}
