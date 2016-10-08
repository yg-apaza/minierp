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
@Table(name = "en_p1m_documento_cliente", catalog = "episerp")
public class EnP1mDocumentoCliente implements java.io.Serializable {
    private EnP1mDocumentoClienteId id;
    private EnP1mCliente enP1mCliente;
    private TaGzzTipoDocCliente taGzzTipoDocCliente;
    private String docCliNum;
    private char estRegCod;

    public EnP1mDocumentoCliente() {
    }

    public EnP1mDocumentoCliente(EnP1mDocumentoClienteId id, EnP1mCliente enP1mCliente, TaGzzTipoDocCliente taGzzTipoDocCliente, String docCliNum, char estRegCod) {
        this.id = id;
        this.enP1mCliente = enP1mCliente;
        this.taGzzTipoDocCliente = taGzzTipoDocCliente;
        this.docCliNum = docCliNum;
        this.estRegCod = estRegCod;
    }

    @EmbeddedId
    @AttributeOverrides({
        @AttributeOverride(name = "cliCod", column = @Column(name = "CliCod", nullable = false, length = 15)),
        @AttributeOverride(name = "tipDocCliCod", column = @Column(name = "TipDocCliCod", nullable = false))})
    public EnP1mDocumentoClienteId getId() {
        return this.id;
    }

    public void setId(EnP1mDocumentoClienteId id) {
        this.id = id;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "CliCod", nullable = false, insertable = false, updatable = false)
    public EnP1mCliente getEnP1mCliente() {
        return this.enP1mCliente;
    }

    public void setEnP1mCliente(EnP1mCliente enP1mCliente) {
        this.enP1mCliente = enP1mCliente;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "TipDocCliCod", nullable = false, insertable = false, updatable = false)
    public TaGzzTipoDocCliente getTaGzzTipoDocCliente() {
        return this.taGzzTipoDocCliente;
    }

    public void setTaGzzTipoDocCliente(TaGzzTipoDocCliente taGzzTipoDocCliente) {
        this.taGzzTipoDocCliente = taGzzTipoDocCliente;
    }

    @Column(name = "DocCliNum", nullable = false, length = 30)
    public String getDocCliNum() {
        return this.docCliNum;
    }

    public void setDocCliNum(String docCliNum) {
        this.docCliNum = docCliNum;
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
        return "EnP1mDocumentoCliente{" + "id=" + id + ", enP1mCliente=" + enP1mCliente + ", taGzzTipoDocCliente=" + taGzzTipoDocCliente + ", docCliNum=" + docCliNum + ", estRegCod=" + estRegCod + '}';
    }
}