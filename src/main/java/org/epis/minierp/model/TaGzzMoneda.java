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
@Table(name = "ta_gzz_moneda",catalog = "episerp")
public class TaGzzMoneda implements java.io.Serializable {
    private Integer monCod;
    private String monDet;
    private char estRegCod;
    private Set enP2mProductos = new HashSet(0);
    private Set enP4mFacturaCompraCabs = new HashSet(0);
    private Set enP3mAsientoCabs = new HashSet(0);
    private Set enP1mPreventaCabs = new HashSet(0);
    private Set enP1mFacturaVentaCabs = new HashSet(0);

    public TaGzzMoneda() {
    }

    public TaGzzMoneda(String monDet, char estRegCod) {
        this.monDet = monDet;
        this.estRegCod = estRegCod;
    }

    public TaGzzMoneda(String monDet, char estRegCod, Set enP2mProductos, Set enP4mFacturaCompraCabs, Set enP3mAsientoCabs, Set enP1mPreventaCabs, Set enP1mFacturaVentaCabs) {
        this.monDet = monDet;
        this.estRegCod = estRegCod;
        this.enP2mProductos = enP2mProductos;
        this.enP4mFacturaCompraCabs = enP4mFacturaCompraCabs;
        this.enP3mAsientoCabs = enP3mAsientoCabs;
        this.enP1mPreventaCabs = enP1mPreventaCabs;
        this.enP1mFacturaVentaCabs = enP1mFacturaVentaCabs;
    }

    @Id
    @GeneratedValue(strategy = IDENTITY)
    @Column(name = "MonCod", unique = true, nullable = false)
    public Integer getMonCod() {
        return this.monCod;
    }

    public void setMonCod(Integer monCod) {
        this.monCod = monCod;
    }

    @Column(name = "MonDet", nullable = false, length = 90)
    public String getMonDet() {
        return this.monDet;
    }

    public void setMonDet(String monDet) {
        this.monDet = monDet;
    }

    @Column(name = "EstRegCod", nullable = false, length = 1)
    public char getEstRegCod() {
        return this.estRegCod;
    }

    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "taGzzMoneda")
    public Set getEnP2mProductos() {
        return this.enP2mProductos;
    }

    public void setEnP2mProductos(Set enP2mProductos) {
        this.enP2mProductos = enP2mProductos;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "taGzzMoneda")
    public Set getEnP4mFacturaCompraCabs() {
        return this.enP4mFacturaCompraCabs;
    }

    public void setEnP4mFacturaCompraCabs(Set enP4mFacturaCompraCabs) {
        this.enP4mFacturaCompraCabs = enP4mFacturaCompraCabs;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "taGzzMoneda")
    public Set getEnP3mAsientoCabs() {
        return this.enP3mAsientoCabs;
    }

    public void setEnP3mAsientoCabs(Set enP3mAsientoCabs) {
        this.enP3mAsientoCabs = enP3mAsientoCabs;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "taGzzMoneda")
    public Set getEnP1mPreventaCabs() {
        return this.enP1mPreventaCabs;
    }

    public void setEnP1mPreventaCabs(Set enP1mPreventaCabs) {
        this.enP1mPreventaCabs = enP1mPreventaCabs;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "taGzzMoneda")
    public Set getEnP1mFacturaVentaCabs() {
        return this.enP1mFacturaVentaCabs;
    }

    public void setEnP1mFacturaVentaCabs(Set enP1mFacturaVentaCabs) {
        this.enP1mFacturaVentaCabs = enP1mFacturaVentaCabs;
    }

    @Override
    public String toString() {
        return "TaGzzMoneda{" + "monCod=" + monCod + ", monDet=" + monDet + ", estRegCod=" + estRegCod + '}';
    }
}