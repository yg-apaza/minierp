package org.epis.minierp.model;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinColumns;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "en_p2m_producto", catalog = "episerp")
public class EnP2mProducto implements java.io.Serializable {

    private EnP2mProductoId id;
    private EnP2mAlmacen enP2mAlmacen;
    private EnP2mSubclaseProducto enP2mSubclaseProducto;
    private TaGzzMoneda taGzzMoneda;
    private TaGzzUnidadMed taGzzUnidadMed;
    private String proDet;
    private double proPreUni;
    private double proStk;
    private double proStkPreVen;
    private Double volUniAlm;
    private Double proStkMin;
    private Double proStkMax;
    private String proObs;
    private char estRegCod;
    private Set enP1tFacturaVentaDets = new HashSet(0);
    private Set enP1tPreventaDets = new HashSet(0);
    private Set enP4tGuiaCompraDets = new HashSet(0);
    private Set enP4tFacturaCompraDets = new HashSet(0);

    public EnP2mProducto() {
    }

    public EnP2mProducto(EnP2mProductoId id, EnP2mAlmacen enP2mAlmacen, EnP2mSubclaseProducto enP2mSubclaseProducto, TaGzzMoneda taGzzMoneda, TaGzzUnidadMed taGzzUnidadMed, String proDet, double proPreUni, double proStk, double proStkPreVen, String proObs, char estRegCod) {
        this.id = id;
        this.enP2mAlmacen = enP2mAlmacen;
        this.enP2mSubclaseProducto = enP2mSubclaseProducto;
        this.taGzzMoneda = taGzzMoneda;
        this.taGzzUnidadMed = taGzzUnidadMed;
        this.proDet = proDet;
        this.proPreUni = proPreUni;
        this.proStk = proStk;
        this.proStkPreVen = proStkPreVen;
        this.proObs = proObs;
        this.estRegCod = estRegCod;
    }

    public EnP2mProducto(EnP2mProductoId id, EnP2mAlmacen enP2mAlmacen, EnP2mSubclaseProducto enP2mSubclaseProducto, TaGzzMoneda taGzzMoneda, TaGzzUnidadMed taGzzUnidadMed, String proDet, double proPreUni, double proStk, double proStkPreVen, Double volUniAlm, Double proStkMin, Double proStkMax, String proObs, char estRegCod, Set enP1tFacturaVentaDets, Set enP1tPreventaDets, Set enP4tGuiaCompraDets, Set enP4tFacturaCompraDets) {
        this.id = id;
        this.enP2mAlmacen = enP2mAlmacen;
        this.enP2mSubclaseProducto = enP2mSubclaseProducto;
        this.taGzzMoneda = taGzzMoneda;
        this.taGzzUnidadMed = taGzzUnidadMed;
        this.proDet = proDet;
        this.proPreUni = proPreUni;
        this.proStk = proStk;
        this.proStkPreVen = proStkPreVen;
        this.volUniAlm = volUniAlm;
        this.proStkMin = proStkMin;
        this.proStkMax = proStkMax;
        this.proObs = proObs;
        this.estRegCod = estRegCod;
        this.enP1tFacturaVentaDets = enP1tFacturaVentaDets;
        this.enP1tPreventaDets = enP1tPreventaDets;
        this.enP4tGuiaCompraDets = enP4tGuiaCompraDets;
        this.enP4tFacturaCompraDets = enP4tFacturaCompraDets;
    }

    @EmbeddedId

    @AttributeOverrides({
        @AttributeOverride(name = "proCod", column = @Column(name = "ProCod", nullable = false, length = 15)),
        @AttributeOverride(name = "subClaProCod", column = @Column(name = "SubClaProCod", nullable = false, length = 2)),
        @AttributeOverride(name = "claProCod", column = @Column(name = "ClaProCod", nullable = false, length = 2))})
    public EnP2mProductoId getId() {
        return this.id;
    }

    public void setId(EnP2mProductoId id) {
        this.id = id;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "AlmCod", nullable = false)
    public EnP2mAlmacen getEnP2mAlmacen() {
        return this.enP2mAlmacen;
    }

    public void setEnP2mAlmacen(EnP2mAlmacen enP2mAlmacen) {
        this.enP2mAlmacen = enP2mAlmacen;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumns({
        @JoinColumn(name = "SubClaProCod", referencedColumnName = "SubClaProCod", nullable = false, insertable = false, updatable = false),
        @JoinColumn(name = "ClaProCod", referencedColumnName = "ClaProCod", nullable = false, insertable = false, updatable = false)})
    public EnP2mSubclaseProducto getEnP2mSubclaseProducto() {
        return this.enP2mSubclaseProducto;
    }

    public void setEnP2mSubclaseProducto(EnP2mSubclaseProducto enP2mSubclaseProducto) {
        this.enP2mSubclaseProducto = enP2mSubclaseProducto;
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
    @JoinColumn(name = "UniMedCod", nullable = false)
    public TaGzzUnidadMed getTaGzzUnidadMed() {
        return this.taGzzUnidadMed;
    }

    public void setTaGzzUnidadMed(TaGzzUnidadMed taGzzUnidadMed) {
        this.taGzzUnidadMed = taGzzUnidadMed;
    }

    @Column(name = "ProDet", nullable = false, length = 90)
    public String getProDet() {
        return this.proDet;
    }

    public void setProDet(String proDet) {
        this.proDet = proDet;
    }

    @Column(name = "ProPreUni", nullable = false, precision = 10)
    public double getProPreUni() {
        return this.proPreUni;
    }

    public void setProPreUni(double proPreUni) {
        this.proPreUni = proPreUni;
    }

    @Column(name = "ProStk", nullable = false, precision = 10)
    public double getProStk() {
        return this.proStk;
    }

    public void setProStk(double proStk) {
        this.proStk = proStk;
    }

    @Column(name = "ProStkPreVen", nullable = false, precision = 10)
    public double getProStkPreVen() {
        return this.proStkPreVen;
    }

    public void setProStkPreVen(double proStkPreVen) {
        this.proStkPreVen = proStkPreVen;
    }

    @Column(name = "VolUniAlm", precision = 10)
    public Double getVolUniAlm() {
        return this.volUniAlm;
    }

    public void setVolUniAlm(Double volUniAlm) {
        this.volUniAlm = volUniAlm;
    }

    @Column(name = "ProStkMin", precision = 10)
    public Double getProStkMin() {
        return this.proStkMin;
    }

    public void setProStkMin(Double proStkMin) {
        this.proStkMin = proStkMin;
    }

    @Column(name = "ProStkMax", precision = 10)
    public Double getProStkMax() {
        return this.proStkMax;
    }

    public void setProStkMax(Double proStkMax) {
        this.proStkMax = proStkMax;
    }

    @Column(name = "ProObs", nullable = false, length = 90)
    public String getProObs() {
        return this.proObs;
    }

    public void setProObs(String proObs) {
        this.proObs = proObs;
    }

    @Column(name = "EstRegCod", nullable = false, length = 1)
    public char getEstRegCod() {
        return this.estRegCod;
    }

    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "enP2mProducto")
    public Set getEnP1tFacturaVentaDets() {
        return this.enP1tFacturaVentaDets;
    }

    public void setEnP1tFacturaVentaDets(Set enP1tFacturaVentaDets) {
        this.enP1tFacturaVentaDets = enP1tFacturaVentaDets;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "enP2mProducto")
    public Set getEnP1tPreventaDets() {
        return this.enP1tPreventaDets;
    }

    public void setEnP1tPreventaDets(Set enP1tPreventaDets) {
        this.enP1tPreventaDets = enP1tPreventaDets;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "enP2mProducto")
    public Set getEnP4tGuiaCompraDets() {
        return this.enP4tGuiaCompraDets;
    }

    public void setEnP4tGuiaCompraDets(Set enP4tGuiaCompraDets) {
        this.enP4tGuiaCompraDets = enP4tGuiaCompraDets;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "enP2mProducto")
    public Set getEnP4tFacturaCompraDets() {
        return this.enP4tFacturaCompraDets;
    }

    public void setEnP4tFacturaCompraDets(Set enP4tFacturaCompraDets) {
        this.enP4tFacturaCompraDets = enP4tFacturaCompraDets;
    }

    @Override
    public String toString() {
        return "EnP2mProducto{" + "id=" + id + ", enP2mAlmacen=" + enP2mAlmacen + ", enP2mSubclaseProducto=" + enP2mSubclaseProducto + ", taGzzMoneda=" + taGzzMoneda + ", taGzzUnidadMed=" + taGzzUnidadMed + ", proDet=" + proDet + ", proPreUni=" + proPreUni + ", proStk=" + proStk + ", proStkPreVen=" + proStkPreVen + ", volUniAlm=" + volUniAlm + ", proStkMin=" + proStkMin + ", proStkMax=" + proStkMax + ", proObs=" + proObs + ", estRegCod=" + estRegCod + '}';
    }
}
