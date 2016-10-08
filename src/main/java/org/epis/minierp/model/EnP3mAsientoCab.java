package org.epis.minierp.model;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "en_p3m_asiento_cab",catalog = "episerp")
public class EnP3mAsientoCab implements java.io.Serializable {
    private EnP3mAsientoCabId id;
    private EnP3mLibroDiario enP3mLibroDiario;
    private TaGzzMoneda taGzzMoneda;
    private TaGzzTipoComprobante taGzzTipoComprobante;
    private char asiCabTip;
    private String asiCabGlo;
    private Date asiCabFec;
    private String asiCabNumCom;
    private char estRegCod;
    private Set enP3tAsientoDets = new HashSet(0);

    public EnP3mAsientoCab() {
    }

    public EnP3mAsientoCab(EnP3mAsientoCabId id, EnP3mLibroDiario enP3mLibroDiario, TaGzzMoneda taGzzMoneda, TaGzzTipoComprobante taGzzTipoComprobante, char asiCabTip, Date asiCabFec, char estRegCod) {
        this.id = id;
        this.enP3mLibroDiario = enP3mLibroDiario;
        this.taGzzMoneda = taGzzMoneda;
        this.taGzzTipoComprobante = taGzzTipoComprobante;
        this.asiCabTip = asiCabTip;
        this.asiCabFec = asiCabFec;
        this.estRegCod = estRegCod;
    }

    public EnP3mAsientoCab(EnP3mAsientoCabId id, EnP3mLibroDiario enP3mLibroDiario, TaGzzMoneda taGzzMoneda, TaGzzTipoComprobante taGzzTipoComprobante, char asiCabTip, String asiCabGlo, Date asiCabFec, String asiCabNumCom, char estRegCod, Set enP3tAsientoDets) {
        this.id = id;
        this.enP3mLibroDiario = enP3mLibroDiario;
        this.taGzzMoneda = taGzzMoneda;
        this.taGzzTipoComprobante = taGzzTipoComprobante;
        this.asiCabTip = asiCabTip;
        this.asiCabGlo = asiCabGlo;
        this.asiCabFec = asiCabFec;
        this.asiCabNumCom = asiCabNumCom;
        this.estRegCod = estRegCod;
        this.enP3tAsientoDets = enP3tAsientoDets;
    }

    @EmbeddedId
    @AttributeOverrides({
        @AttributeOverride(name = "asiCabCod", column = @Column(name = "AsiCabCod", nullable = false)),
        @AttributeOverride(name = "libDiaCod", column = @Column(name = "LibDiaCod", nullable = false, length = 10))})
    public EnP3mAsientoCabId getId() {
        return this.id;
    }

    public void setId(EnP3mAsientoCabId id) {
        this.id = id;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "LibDiaCod", nullable = false, insertable = false, updatable = false)
    public EnP3mLibroDiario getEnP3mLibroDiario() {
        return this.enP3mLibroDiario;
    }

    public void setEnP3mLibroDiario(EnP3mLibroDiario enP3mLibroDiario) {
        this.enP3mLibroDiario = enP3mLibroDiario;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "MonCod", nullable = false)
    public TaGzzMoneda getTaGzzMoneda() {
        return this.taGzzMoneda;
    }

    public void setTaGzzMoneda(TaGzzMoneda taGzzMoneda) {
        this.taGzzMoneda = taGzzMoneda;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "TipComCod", nullable = false)
    public TaGzzTipoComprobante getTaGzzTipoComprobante() {
        return this.taGzzTipoComprobante;
    }

    public void setTaGzzTipoComprobante(TaGzzTipoComprobante taGzzTipoComprobante) {
        this.taGzzTipoComprobante = taGzzTipoComprobante;
    }

    @Column(name = "AsiCabTip", nullable = false, length = 1)
    public char getAsiCabTip() {
        return this.asiCabTip;
    }

    public void setAsiCabTip(char asiCabTip) {
        this.asiCabTip = asiCabTip;
    }

    @Column(name = "AsiCabGlo", length = 60)
    public String getAsiCabGlo() {
        return this.asiCabGlo;
    }

    public void setAsiCabGlo(String asiCabGlo) {
        this.asiCabGlo = asiCabGlo;
    }

    @Temporal(TemporalType.DATE)
    @Column(name = "AsiCabFec", nullable = false, length = 10)
    public Date getAsiCabFec() {
        return this.asiCabFec;
    }

    public void setAsiCabFec(Date asiCabFec) {
        this.asiCabFec = asiCabFec;
    }

    @Column(name = "AsiCabNumCom", length = 15)
    public String getAsiCabNumCom() {
        return this.asiCabNumCom;
    }

    public void setAsiCabNumCom(String asiCabNumCom) {
        this.asiCabNumCom = asiCabNumCom;
    }

    @Column(name = "EstRegCod", nullable = false, length = 1)
    public char getEstRegCod() {
        return this.estRegCod;
    }

    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "enP3mAsientoCab")
    public Set getEnP3tAsientoDets() {
        return this.enP3tAsientoDets;
    }

    public void setEnP3tAsientoDets(Set enP3tAsientoDets) {
        this.enP3tAsientoDets = enP3tAsientoDets;
    }

    @Override
    public String toString() {
        return "EnP3mAsientoCab{" + "id=" + id + ", enP3mLibroDiario=" + enP3mLibroDiario + ", taGzzMoneda=" + taGzzMoneda + ", taGzzTipoComprobante=" + taGzzTipoComprobante + ", asiCabTip=" + asiCabTip + ", asiCabGlo=" + asiCabGlo + ", asiCabFec=" + asiCabFec + ", asiCabNumCom=" + asiCabNumCom + ", estRegCod=" + estRegCod + '}';
    }
}