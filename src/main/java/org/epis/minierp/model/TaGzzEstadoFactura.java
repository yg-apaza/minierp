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
@Table(name = "ta_gzz_estado_factura",catalog = "episerp")
public class TaGzzEstadoFactura implements java.io.Serializable {
    private Integer estFacCod;
    private String estFacDet;
    private char estRegCod;
    private Set enP4mFacturaCompraCabs = new HashSet(0);
    private Set enP1mFacturaVentaCabs = new HashSet(0);

    public TaGzzEstadoFactura() {
    }

    public TaGzzEstadoFactura(String estFacDet, char estRegCod) {
        this.estFacDet = estFacDet;
        this.estRegCod = estRegCod;
    }

    public TaGzzEstadoFactura(String estFacDet, char estRegCod, Set enP4mFacturaCompraCabs, Set enP1mFacturaVentaCabs) {
        this.estFacDet = estFacDet;
        this.estRegCod = estRegCod;
        this.enP4mFacturaCompraCabs = enP4mFacturaCompraCabs;
        this.enP1mFacturaVentaCabs = enP1mFacturaVentaCabs;
    }

    @Id
    @GeneratedValue(strategy = IDENTITY)
    @Column(name = "EstFacCod", unique = true, nullable = false)
    public Integer getEstFacCod() {
        return this.estFacCod;
    }

    public void setEstFacCod(Integer estFacCod) {
        this.estFacCod = estFacCod;
    }

    @Column(name = "EstFacDet", nullable = false, length = 10)
    public String getEstFacDet() {
        return this.estFacDet;
    }

    public void setEstFacDet(String estFacDet) {
        this.estFacDet = estFacDet;
    }

    @Column(name = "EstRegCod", nullable = false, length = 1)
    public char getEstRegCod() {
        return this.estRegCod;
    }

    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "taGzzEstadoFactura")
    public Set getEnP4mFacturaCompraCabs() {
        return this.enP4mFacturaCompraCabs;
    }

    public void setEnP4mFacturaCompraCabs(Set enP4mFacturaCompraCabs) {
        this.enP4mFacturaCompraCabs = enP4mFacturaCompraCabs;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "taGzzEstadoFactura")
    public Set getEnP1mFacturaVentaCabs() {
        return this.enP1mFacturaVentaCabs;
    }

    public void setEnP1mFacturaVentaCabs(Set enP1mFacturaVentaCabs) {
        this.enP1mFacturaVentaCabs = enP1mFacturaVentaCabs;
    }

    @Override
    public String toString() {
        return "TaGzzEstadoFactura{" + "estFacCod=" + estFacCod + ", estFacDet=" + estFacDet + ", estRegCod=" + estRegCod + '}';
    }
}