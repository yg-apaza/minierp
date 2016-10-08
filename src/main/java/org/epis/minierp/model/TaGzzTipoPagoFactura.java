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
@Table(name = "ta_gzz_tipo_pago_factura",catalog = "episerp")
public class TaGzzTipoPagoFactura implements java.io.Serializable {
    private Integer tipPagCod;
    private String tipPagDet;
    private char estRegCod;
    private Set enP4mFacturaCompraCabs = new HashSet(0);
    private Set enP1mFacturaVentaCabs = new HashSet(0);

    public TaGzzTipoPagoFactura() {
    }

    public TaGzzTipoPagoFactura(String tipPagDet, char estRegCod) {
        this.tipPagDet = tipPagDet;
        this.estRegCod = estRegCod;
    }

    public TaGzzTipoPagoFactura(String tipPagDet, char estRegCod, Set enP4mFacturaCompraCabs, Set enP1mFacturaVentaCabs) {
        this.tipPagDet = tipPagDet;
        this.estRegCod = estRegCod;
        this.enP4mFacturaCompraCabs = enP4mFacturaCompraCabs;
        this.enP1mFacturaVentaCabs = enP1mFacturaVentaCabs;
    }

    @Id
    @GeneratedValue(strategy = IDENTITY)
    @Column(name = "TipPagCod", unique = true, nullable = false)
    public Integer getTipPagCod() {
        return this.tipPagCod;
    }

    public void setTipPagCod(Integer tipPagCod) {
        this.tipPagCod = tipPagCod;
    }

    @Column(name = "TipPagDet", nullable = false, length = 10)
    public String getTipPagDet() {
        return this.tipPagDet;
    }

    public void setTipPagDet(String tipPagDet) {
        this.tipPagDet = tipPagDet;
    }

    @Column(name = "EstRegCod", nullable = false, length = 1)
    public char getEstRegCod() {
        return this.estRegCod;
    }

    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "taGzzTipoPagoFactura")
    public Set getEnP4mFacturaCompraCabs() {
        return this.enP4mFacturaCompraCabs;
    }

    public void setEnP4mFacturaCompraCabs(Set enP4mFacturaCompraCabs) {
        this.enP4mFacturaCompraCabs = enP4mFacturaCompraCabs;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "taGzzTipoPagoFactura")
    public Set getEnP1mFacturaVentaCabs() {
        return this.enP1mFacturaVentaCabs;
    }

    public void setEnP1mFacturaVentaCabs(Set enP1mFacturaVentaCabs) {
        this.enP1mFacturaVentaCabs = enP1mFacturaVentaCabs;
    }

    @Override
    public String toString() {
        return "TaGzzTipoPagoFactura{" + "tipPagCod=" + tipPagCod + ", tipPagDet=" + tipPagDet + ", estRegCod=" + estRegCod + '}';
    }
}