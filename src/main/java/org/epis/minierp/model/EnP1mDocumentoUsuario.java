package org.epis.minierp.model;
// Generated 09/10/2016 12:57:36 AM by Hibernate Tools 4.3.1

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
@Table(name = "en_p1m_documento_usuario", catalog = "episerp")
public class EnP1mDocumentoUsuario implements java.io.Serializable {

    private EnP1mDocumentoUsuarioId id;
    private EnP1mUsuario enP1mUsuario;
    private TaGzzTipoDocUsuario taGzzTipoDocUsuario;
    private String docUsuNum;
    private char estRegCod;

    public EnP1mDocumentoUsuario() {
    }

    public EnP1mDocumentoUsuario(EnP1mDocumentoUsuarioId id, EnP1mUsuario enP1mUsuario, TaGzzTipoDocUsuario taGzzTipoDocUsuario, String docUsuNum, char estRegCod) {
        this.id = id;
        this.enP1mUsuario = enP1mUsuario;
        this.taGzzTipoDocUsuario = taGzzTipoDocUsuario;
        this.docUsuNum = docUsuNum;
        this.estRegCod = estRegCod;
    }

    @EmbeddedId

    @AttributeOverrides({
        @AttributeOverride(name = "usuCod", column = @Column(name = "UsuCod", nullable = false, length = 15)),
        @AttributeOverride(name = "tipDocUsuCod", column = @Column(name = "TipDocUsuCod", nullable = false))})
    public EnP1mDocumentoUsuarioId getId() {
        return this.id;
    }

    public void setId(EnP1mDocumentoUsuarioId id) {
        this.id = id;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "UsuCod", nullable = false, insertable = false, updatable = false)
    public EnP1mUsuario getEnP1mUsuario() {
        return this.enP1mUsuario;
    }

    public void setEnP1mUsuario(EnP1mUsuario enP1mUsuario) {
        this.enP1mUsuario = enP1mUsuario;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "TipDocUsuCod", nullable = false, insertable = false, updatable = false)
    public TaGzzTipoDocUsuario getTaGzzTipoDocUsuario() {
        return this.taGzzTipoDocUsuario;
    }

    public void setTaGzzTipoDocUsuario(TaGzzTipoDocUsuario taGzzTipoDocUsuario) {
        this.taGzzTipoDocUsuario = taGzzTipoDocUsuario;
    }

    @Column(name = "DocUsuNum", nullable = false, length = 30)
    public String getDocUsuNum() {
        return this.docUsuNum;
    }

    public void setDocUsuNum(String docUsuNum) {
        this.docUsuNum = docUsuNum;
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
        return "EnP1mDocumentoUsuario{" + "id=" + id + ", enP1mUsuario=" + enP1mUsuario + ", taGzzTipoDocUsuario=" + taGzzTipoDocUsuario + ", docUsuNum=" + docUsuNum + ", estRegCod=" + estRegCod + '}';
    }
}
