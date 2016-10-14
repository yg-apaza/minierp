package org.epis.minierp.model;

import java.util.Date;
import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "en_p1c_preventa_realizadas", catalog = "episerp")
public class EnP1cPreventaRealizadas implements java.io.Serializable {

    private EnP1cPreventaRealizadasId id;
    private EnP1mFacturaVentaCab enP1mFacturaVentaCab;
    private EnP1mPreventaCab enP1mPreventaCab;
    private Date preVenReaFec;

    public EnP1cPreventaRealizadas() {
    }

    public EnP1cPreventaRealizadas(EnP1cPreventaRealizadasId id, EnP1mFacturaVentaCab enP1mFacturaVentaCab, EnP1mPreventaCab enP1mPreventaCab, Date preVenReaFec) {
        this.id = id;
        this.enP1mFacturaVentaCab = enP1mFacturaVentaCab;
        this.enP1mPreventaCab = enP1mPreventaCab;
        this.preVenReaFec = preVenReaFec;
    }

    @EmbeddedId

    @AttributeOverrides({
        @AttributeOverride(name = "preVenCabCod", column = @Column(name = "PreVenCabCod", nullable = false, length = 10)),
        @AttributeOverride(name = "facVenCabCod", column = @Column(name = "FacVenCabCod", nullable = false, length = 10))})
    public EnP1cPreventaRealizadasId getId() {
        return this.id;
    }

    public void setId(EnP1cPreventaRealizadasId id) {
        this.id = id;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "FacVenCabCod", nullable = false, insertable = false, updatable = false)
    public EnP1mFacturaVentaCab getEnP1mFacturaVentaCab() {
        return this.enP1mFacturaVentaCab;
    }

    public void setEnP1mFacturaVentaCab(EnP1mFacturaVentaCab enP1mFacturaVentaCab) {
        this.enP1mFacturaVentaCab = enP1mFacturaVentaCab;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "PreVenCabCod", nullable = false, insertable = false, updatable = false)
    public EnP1mPreventaCab getEnP1mPreventaCab() {
        return this.enP1mPreventaCab;
    }

    public void setEnP1mPreventaCab(EnP1mPreventaCab enP1mPreventaCab) {
        this.enP1mPreventaCab = enP1mPreventaCab;
    }

    @Temporal(TemporalType.DATE)
    @Column(name = "PreVenReaFec", nullable = false, length = 10)
    public Date getPreVenReaFec() {
        return this.preVenReaFec;
    }

    public void setPreVenReaFec(Date preVenReaFec) {
        this.preVenReaFec = preVenReaFec;
    }
}
