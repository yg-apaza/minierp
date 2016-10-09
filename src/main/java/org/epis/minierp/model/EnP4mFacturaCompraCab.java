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
@Table(name = "en_p4m_factura_compra_cab", catalog = "episerp")
public class EnP4mFacturaCompraCab implements java.io.Serializable {

    private String facComCabCod;
    private EnP1mUsuario enP1mUsuario;
    private EnP4mProveedor enP4mProveedor;
    private TaGzzEstadoFactura taGzzEstadoFactura;
    private TaGzzMetodoPagoFactura taGzzMetodoPagoFactura;
    private TaGzzMoneda taGzzMoneda;
    private TaGzzTipoPagoFactura taGzzTipoPagoFactura;
    private Date facComCabFec;
    private double facComCabTot;
    private double facComCabDes;
    private double facComCabSubTot;
    private int facComCabIgv;
    private String facComCabObs;
    private char estRegCod;
    private Set enP4mGuiaCompraCabs = new HashSet(0);
    private Set enP4tFacturaCompraDets = new HashSet(0);

    public EnP4mFacturaCompraCab() {
    }

    public EnP4mFacturaCompraCab(String facComCabCod, EnP1mUsuario enP1mUsuario, EnP4mProveedor enP4mProveedor, TaGzzEstadoFactura taGzzEstadoFactura, TaGzzMetodoPagoFactura taGzzMetodoPagoFactura, TaGzzMoneda taGzzMoneda, TaGzzTipoPagoFactura taGzzTipoPagoFactura, Date facComCabFec, double facComCabTot, double facComCabDes, double facComCabSubTot, int facComCabIgv, String facComCabObs, char estRegCod) {
        this.facComCabCod = facComCabCod;
        this.enP1mUsuario = enP1mUsuario;
        this.enP4mProveedor = enP4mProveedor;
        this.taGzzEstadoFactura = taGzzEstadoFactura;
        this.taGzzMetodoPagoFactura = taGzzMetodoPagoFactura;
        this.taGzzMoneda = taGzzMoneda;
        this.taGzzTipoPagoFactura = taGzzTipoPagoFactura;
        this.facComCabFec = facComCabFec;
        this.facComCabTot = facComCabTot;
        this.facComCabDes = facComCabDes;
        this.facComCabSubTot = facComCabSubTot;
        this.facComCabIgv = facComCabIgv;
        this.facComCabObs = facComCabObs;
        this.estRegCod = estRegCod;
    }

    public EnP4mFacturaCompraCab(String facComCabCod, EnP1mUsuario enP1mUsuario, EnP4mProveedor enP4mProveedor, TaGzzEstadoFactura taGzzEstadoFactura, TaGzzMetodoPagoFactura taGzzMetodoPagoFactura, TaGzzMoneda taGzzMoneda, TaGzzTipoPagoFactura taGzzTipoPagoFactura, Date facComCabFec, double facComCabTot, double facComCabDes, double facComCabSubTot, int facComCabIgv, String facComCabObs, char estRegCod, Set enP4mGuiaCompraCabs, Set enP4tFacturaCompraDets) {
        this.facComCabCod = facComCabCod;
        this.enP1mUsuario = enP1mUsuario;
        this.enP4mProveedor = enP4mProveedor;
        this.taGzzEstadoFactura = taGzzEstadoFactura;
        this.taGzzMetodoPagoFactura = taGzzMetodoPagoFactura;
        this.taGzzMoneda = taGzzMoneda;
        this.taGzzTipoPagoFactura = taGzzTipoPagoFactura;
        this.facComCabFec = facComCabFec;
        this.facComCabTot = facComCabTot;
        this.facComCabDes = facComCabDes;
        this.facComCabSubTot = facComCabSubTot;
        this.facComCabIgv = facComCabIgv;
        this.facComCabObs = facComCabObs;
        this.estRegCod = estRegCod;
        this.enP4mGuiaCompraCabs = enP4mGuiaCompraCabs;
        this.enP4tFacturaCompraDets = enP4tFacturaCompraDets;
    }

    @Id

    @Column(name = "FacComCabCod", unique = true, nullable = false, length = 10)
    public String getFacComCabCod() {
        return this.facComCabCod;
    }

    public void setFacComCabCod(String facComCabCod) {
        this.facComCabCod = facComCabCod;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "UsuCod", nullable = false)
    public EnP1mUsuario getEnP1mUsuario() {
        return this.enP1mUsuario;
    }

    public void setEnP1mUsuario(EnP1mUsuario enP1mUsuario) {
        this.enP1mUsuario = enP1mUsuario;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ProCod", nullable = false)
    public EnP4mProveedor getEnP4mProveedor() {
        return this.enP4mProveedor;
    }

    public void setEnP4mProveedor(EnP4mProveedor enP4mProveedor) {
        this.enP4mProveedor = enP4mProveedor;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "EstFacCod", nullable = false)
    public TaGzzEstadoFactura getTaGzzEstadoFactura() {
        return this.taGzzEstadoFactura;
    }

    public void setTaGzzEstadoFactura(TaGzzEstadoFactura taGzzEstadoFactura) {
        this.taGzzEstadoFactura = taGzzEstadoFactura;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "MetPagCod", nullable = false)
    public TaGzzMetodoPagoFactura getTaGzzMetodoPagoFactura() {
        return this.taGzzMetodoPagoFactura;
    }

    public void setTaGzzMetodoPagoFactura(TaGzzMetodoPagoFactura taGzzMetodoPagoFactura) {
        this.taGzzMetodoPagoFactura = taGzzMetodoPagoFactura;
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
    @JoinColumn(name = "TipPagCod", nullable = false)
    public TaGzzTipoPagoFactura getTaGzzTipoPagoFactura() {
        return this.taGzzTipoPagoFactura;
    }

    public void setTaGzzTipoPagoFactura(TaGzzTipoPagoFactura taGzzTipoPagoFactura) {
        this.taGzzTipoPagoFactura = taGzzTipoPagoFactura;
    }

    @Temporal(TemporalType.DATE)
    @Column(name = "FacComCabFec", nullable = false, length = 10)
    public Date getFacComCabFec() {
        return this.facComCabFec;
    }

    public void setFacComCabFec(Date facComCabFec) {
        this.facComCabFec = facComCabFec;
    }

    @Column(name = "FacComCabTot", nullable = false, precision = 10)
    public double getFacComCabTot() {
        return this.facComCabTot;
    }

    public void setFacComCabTot(double facComCabTot) {
        this.facComCabTot = facComCabTot;
    }

    @Column(name = "FacComCabDes", nullable = false, precision = 10)
    public double getFacComCabDes() {
        return this.facComCabDes;
    }

    public void setFacComCabDes(double facComCabDes) {
        this.facComCabDes = facComCabDes;
    }

    @Column(name = "FacComCabSubTot", nullable = false, precision = 10)
    public double getFacComCabSubTot() {
        return this.facComCabSubTot;
    }

    public void setFacComCabSubTot(double facComCabSubTot) {
        this.facComCabSubTot = facComCabSubTot;
    }

    @Column(name = "FacComCabIGV", nullable = false)
    public int getFacComCabIgv() {
        return this.facComCabIgv;
    }

    public void setFacComCabIgv(int facComCabIgv) {
        this.facComCabIgv = facComCabIgv;
    }

    @Column(name = "FacComCabObs", nullable = false, length = 90)
    public String getFacComCabObs() {
        return this.facComCabObs;
    }

    public void setFacComCabObs(String facComCabObs) {
        this.facComCabObs = facComCabObs;
    }

    @Column(name = "EstRegCod", nullable = false, length = 1)
    public char getEstRegCod() {
        return this.estRegCod;
    }

    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "enP4mFacturaCompraCab")
    public Set getEnP4mGuiaCompraCabs() {
        return this.enP4mGuiaCompraCabs;
    }

    public void setEnP4mGuiaCompraCabs(Set enP4mGuiaCompraCabs) {
        this.enP4mGuiaCompraCabs = enP4mGuiaCompraCabs;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "enP4mFacturaCompraCab")
    public Set getEnP4tFacturaCompraDets() {
        return this.enP4tFacturaCompraDets;
    }

    public void setEnP4tFacturaCompraDets(Set enP4tFacturaCompraDets) {
        this.enP4tFacturaCompraDets = enP4tFacturaCompraDets;
    }

    @Override
    public String toString() {
        return "EnP4mFacturaCompraCab{" + "facComCabCod=" + facComCabCod + ", enP1mUsuario=" + enP1mUsuario + ", enP4mProveedor=" + enP4mProveedor + ", taGzzEstadoFactura=" + taGzzEstadoFactura + ", taGzzMetodoPagoFactura=" + taGzzMetodoPagoFactura + ", taGzzMoneda=" + taGzzMoneda + ", taGzzTipoPagoFactura=" + taGzzTipoPagoFactura + ", facComCabFec=" + facComCabFec + ", facComCabTot=" + facComCabTot + ", facComCabDes=" + facComCabDes + ", facComCabSubTot=" + facComCabSubTot + ", facComCabIgv=" + facComCabIgv + ", facComCabObs=" + facComCabObs + ", estRegCod=" + estRegCod + '}';
    }
}
