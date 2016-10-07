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
@Table(name = "ta_gzz_metodo_pago_factura",catalog = "episerp")
public class TaGzzMetodoPagoFactura implements java.io.Serializable {
    private Integer metPagCod;
    private String metPagDet;
    private char estRegCod;
    private Set enP4mFacturaCompraCabs = new HashSet(0);
    private Set enP1mFacturaVentaCabs = new HashSet(0);

    public TaGzzMetodoPagoFactura() {
    }

    public TaGzzMetodoPagoFactura(String metPagDet, char estRegCod) {
        this.metPagDet = metPagDet;
        this.estRegCod = estRegCod;
    }

    public TaGzzMetodoPagoFactura(String metPagDet, char estRegCod, Set enP4mFacturaCompraCabs, Set enP1mFacturaVentaCabs) {
        this.metPagDet = metPagDet;
        this.estRegCod = estRegCod;
        this.enP4mFacturaCompraCabs = enP4mFacturaCompraCabs;
        this.enP1mFacturaVentaCabs = enP1mFacturaVentaCabs;
    }

    @Id
    @GeneratedValue(strategy = IDENTITY)
    @Column(name = "MetPagCod", unique = true, nullable = false)
    public Integer getMetPagCod() {
        return this.metPagCod;
    }

    public void setMetPagCod(Integer metPagCod) {
        this.metPagCod = metPagCod;
    }

    @Column(name = "MetPagDet", nullable = false, length = 10)
    public String getMetPagDet() {
        return this.metPagDet;
    }

    public void setMetPagDet(String metPagDet) {
        this.metPagDet = metPagDet;
    }

    @Column(name = "EstRegCod", nullable = false, length = 1)
    public char getEstRegCod() {
        return this.estRegCod;
    }

    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "taGzzMetodoPagoFactura")
    public Set getEnP4mFacturaCompraCabs() {
        return this.enP4mFacturaCompraCabs;
    }

    public void setEnP4mFacturaCompraCabs(Set enP4mFacturaCompraCabs) {
        this.enP4mFacturaCompraCabs = enP4mFacturaCompraCabs;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "taGzzMetodoPagoFactura")
    public Set getEnP1mFacturaVentaCabs() {
        return this.enP1mFacturaVentaCabs;
    }

    public void setEnP1mFacturaVentaCabs(Set enP1mFacturaVentaCabs) {
        this.enP1mFacturaVentaCabs = enP1mFacturaVentaCabs;
    }

    @Override
    public String toString() {
        return "TaGzzMetodoPagoFactura{" + "metPagCod=" + metPagCod + ", metPagDet=" + metPagDet + ", estRegCod=" + estRegCod + '}';
    }
}
