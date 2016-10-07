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
@Table(name = "ta_gzz_tipo_doc_cliente",catalog = "episerp")
public class TaGzzTipoDocCliente implements java.io.Serializable {
    private Integer tipDocCliCod;
    private String tipDocCliDet;
    private char estRegCod;
    private Set enP1mDocumentoClientes = new HashSet(0);

    public TaGzzTipoDocCliente() {
    }

    public TaGzzTipoDocCliente(String tipDocCliDet, char estRegCod) {
        this.tipDocCliDet = tipDocCliDet;
        this.estRegCod = estRegCod;
    }

    public TaGzzTipoDocCliente(String tipDocCliDet, char estRegCod, Set enP1mDocumentoClientes) {
        this.tipDocCliDet = tipDocCliDet;
        this.estRegCod = estRegCod;
        this.enP1mDocumentoClientes = enP1mDocumentoClientes;
    }

    @Id
    @GeneratedValue(strategy = IDENTITY)
    @Column(name = "TipDocCliCod", unique = true, nullable = false)
    public Integer getTipDocCliCod() {
        return this.tipDocCliCod;
    }

    public void setTipDocCliCod(Integer tipDocCliCod) {
        this.tipDocCliCod = tipDocCliCod;
    }

    @Column(name = "TipDocCliDet", nullable = false, length = 90)
    public String getTipDocCliDet() {
        return this.tipDocCliDet;
    }

    public void setTipDocCliDet(String tipDocCliDet) {
        this.tipDocCliDet = tipDocCliDet;
    }

    @Column(name = "EstRegCod", nullable = false, length = 1)
    public char getEstRegCod() {
        return this.estRegCod;
    }

    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "taGzzTipoDocCliente")
    public Set getEnP1mDocumentoClientes() {
        return this.enP1mDocumentoClientes;
    }

    public void setEnP1mDocumentoClientes(Set enP1mDocumentoClientes) {
        this.enP1mDocumentoClientes = enP1mDocumentoClientes;
    }

    @Override
    public String toString() {
        return "TaGzzTipoDocCliente{" + "tipDocCliCod=" + tipDocCliCod + ", tipDocCliDet=" + tipDocCliDet + ", estRegCod=" + estRegCod + '}';
    }
}
