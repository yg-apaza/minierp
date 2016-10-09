package org.epis.minierp.model;

import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "en_p4m_documento_proveedor", catalog = "episerp")
public class EnP4mDocumentoProveedor implements java.io.Serializable {

    private EnP4mDocumentoProveedorId id;
    private EnP4mProveedor enP4mProveedor;
    private TaGzzTipoDocProveedor taGzzTipoDocProveedor;
    private String docProNum;
    private char estRegCod;

    public EnP4mDocumentoProveedor() {
    }

    public EnP4mDocumentoProveedor(EnP4mDocumentoProveedorId id, EnP4mProveedor enP4mProveedor, TaGzzTipoDocProveedor taGzzTipoDocProveedor, String docProNum, char estRegCod) {
        this.id = id;
        this.enP4mProveedor = enP4mProveedor;
        this.taGzzTipoDocProveedor = taGzzTipoDocProveedor;
        this.docProNum = docProNum;
        this.estRegCod = estRegCod;
    }

    @EmbeddedId

    @AttributeOverrides({
        @AttributeOverride(name = "proCod", column = @Column(name = "ProCod", nullable = false, length = 15)),
        @AttributeOverride(name = "tipDocProCod", column = @Column(name = "TipDocProCod", nullable = false))})
    public EnP4mDocumentoProveedorId getId() {
        return this.id;
    }

    public void setId(EnP4mDocumentoProveedorId id) {
        this.id = id;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ProCod", nullable = false, insertable = false, updatable = false)
    public EnP4mProveedor getEnP4mProveedor() {
        return this.enP4mProveedor;
    }

    public void setEnP4mProveedor(EnP4mProveedor enP4mProveedor) {
        this.enP4mProveedor = enP4mProveedor;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "TipDocProCod", nullable = false, insertable = false, updatable = false)
    public TaGzzTipoDocProveedor getTaGzzTipoDocProveedor() {
        return this.taGzzTipoDocProveedor;
    }

    public void setTaGzzTipoDocProveedor(TaGzzTipoDocProveedor taGzzTipoDocProveedor) {
        this.taGzzTipoDocProveedor = taGzzTipoDocProveedor;
    }

    @Column(name = "DocProNum", nullable = false, length = 30)
    public String getDocProNum() {
        return this.docProNum;
    }

    public void setDocProNum(String docProNum) {
        this.docProNum = docProNum;
    }

    @Column(name = "EstRegCod", nullable = false, length = 1)
    public char getEstRegCod() {
        return this.estRegCod;
    }

    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }

    @Override
    public String toString() {
        return "EnP4mDocumentoProveedor{" + "id=" + id + ", enP4mProveedor=" + enP4mProveedor + ", taGzzTipoDocProveedor=" + taGzzTipoDocProveedor + ", docProNum=" + docProNum + ", estRegCod=" + estRegCod + '}';
    }
}
