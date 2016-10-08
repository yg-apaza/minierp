package org.epis.minierp.model;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "en_p4m_guia_compra_cab",catalog = "episerp")
public class EnP4mGuiaCompraCab implements java.io.Serializable {
    private String guiComCabCod;
    private EnP4mFacturaCompraCab enP4mFacturaCompraCab;
    private EnP4mProveedor enP4mProveedor;
    private String guiComCabPunPar;
    private String guiComCabPunLle;
    private Date guiComCabFec;
    private char estRegCod;
    private Set enP4tGuiaCompraDets = new HashSet(0);

    public EnP4mGuiaCompraCab() {
    }

    public EnP4mGuiaCompraCab(String guiComCabCod, EnP4mFacturaCompraCab enP4mFacturaCompraCab, EnP4mProveedor enP4mProveedor, Date guiComCabFec, char estRegCod) {
        this.guiComCabCod = guiComCabCod;
        this.enP4mFacturaCompraCab = enP4mFacturaCompraCab;
        this.enP4mProveedor = enP4mProveedor;
        this.guiComCabFec = guiComCabFec;
        this.estRegCod = estRegCod;
    }

    public EnP4mGuiaCompraCab(String guiComCabCod, EnP4mFacturaCompraCab enP4mFacturaCompraCab, EnP4mProveedor enP4mProveedor, String guiComCabPunPar, String guiComCabPunLle, Date guiComCabFec, char estRegCod, Set enP4tGuiaCompraDets) {
        this.guiComCabCod = guiComCabCod;
        this.enP4mFacturaCompraCab = enP4mFacturaCompraCab;
        this.enP4mProveedor = enP4mProveedor;
        this.guiComCabPunPar = guiComCabPunPar;
        this.guiComCabPunLle = guiComCabPunLle;
        this.guiComCabFec = guiComCabFec;
        this.estRegCod = estRegCod;
        this.enP4tGuiaCompraDets = enP4tGuiaCompraDets;
    }

    @Id
    @Column(name = "GuiComCabCod", unique = true, nullable = false, length = 10)
    public String getGuiComCabCod() {
        return this.guiComCabCod;
    }

    public void setGuiComCabCod(String guiComCabCod) {
        this.guiComCabCod = guiComCabCod;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "FacComCabCod", nullable = false)
    public EnP4mFacturaCompraCab getEnP4mFacturaCompraCab() {
        return this.enP4mFacturaCompraCab;
    }

    public void setEnP4mFacturaCompraCab(EnP4mFacturaCompraCab enP4mFacturaCompraCab) {
        this.enP4mFacturaCompraCab = enP4mFacturaCompraCab;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ProCod", nullable = false)
    public EnP4mProveedor getEnP4mProveedor() {
        return this.enP4mProveedor;
    }

    public void setEnP4mProveedor(EnP4mProveedor enP4mProveedor) {
        this.enP4mProveedor = enP4mProveedor;
    }

    @Column(name = "GuiComCabPunPar", length = 30)
    public String getGuiComCabPunPar() {
        return this.guiComCabPunPar;
    }

    public void setGuiComCabPunPar(String guiComCabPunPar) {
        this.guiComCabPunPar = guiComCabPunPar;
    }

    @Column(name = "GuiComCabPunLle", length = 30)
    public String getGuiComCabPunLle() {
        return this.guiComCabPunLle;
    }

    public void setGuiComCabPunLle(String guiComCabPunLle) {
        this.guiComCabPunLle = guiComCabPunLle;
    }

    @Temporal(TemporalType.DATE)
    @Column(name = "GuiComCabFec", nullable = false, length = 10)
    public Date getGuiComCabFec() {
        return this.guiComCabFec;
    }

    public void setGuiComCabFec(Date guiComCabFec) {
        this.guiComCabFec = guiComCabFec;
    }

    @Column(name = "EstRegCod", nullable = false, length = 1)
    public char getEstRegCod() {
        return this.estRegCod;
    }

    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "enP4mGuiaCompraCab")
    public Set getEnP4tGuiaCompraDets() {
        return this.enP4tGuiaCompraDets;
    }

    public void setEnP4tGuiaCompraDets(Set enP4tGuiaCompraDets) {
        this.enP4tGuiaCompraDets = enP4tGuiaCompraDets;
    }

    @Override
    public String toString() {
        return "EnP4mGuiaCompraCab{" + "guiComCabCod=" + guiComCabCod + ", enP4mFacturaCompraCab=" + enP4mFacturaCompraCab + ", enP4mProveedor=" + enP4mProveedor + ", guiComCabPunPar=" + guiComCabPunPar + ", guiComCabPunLle=" + guiComCabPunLle + ", guiComCabFec=" + guiComCabFec + ", estRegCod=" + estRegCod + '}';
    }
}