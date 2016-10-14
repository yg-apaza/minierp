package org.epis.minierp.model;

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

@Entity
@Table(name = "en_p2m_almacen", catalog = "episerp")
public class EnP2mAlmacen implements java.io.Serializable {

    private String almCod;
    private EnP1mSucursal enP1mSucursal;
    private String almDet;
    private Double almVolTot;
    private String almObs;
    private char estRegCod;
    private Set enP2mProductos = new HashSet(0);

    public EnP2mAlmacen() {
    }

    public EnP2mAlmacen(String almCod, EnP1mSucursal enP1mSucursal, String almObs, char estRegCod) {
        this.almCod = almCod;
        this.enP1mSucursal = enP1mSucursal;
        this.almObs = almObs;
        this.estRegCod = estRegCod;
    }

    public EnP2mAlmacen(String almCod, EnP1mSucursal enP1mSucursal, String almDet, Double almVolTot, String almObs, char estRegCod, Set enP2mProductos) {
        this.almCod = almCod;
        this.enP1mSucursal = enP1mSucursal;
        this.almDet = almDet;
        this.almVolTot = almVolTot;
        this.almObs = almObs;
        this.estRegCod = estRegCod;
        this.enP2mProductos = enP2mProductos;
    }

    @Id

    @Column(name = "AlmCod", unique = true, nullable = false, length = 15)
    public String getAlmCod() {
        return this.almCod;
    }

    public void setAlmCod(String almCod) {
        this.almCod = almCod;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "SucCod", nullable = false)
    public EnP1mSucursal getEnP1mSucursal() {
        return this.enP1mSucursal;
    }

    public void setEnP1mSucursal(EnP1mSucursal enP1mSucursal) {
        this.enP1mSucursal = enP1mSucursal;
    }

    @Column(name = "AlmDet", length = 90)
    public String getAlmDet() {
        return this.almDet;
    }

    public void setAlmDet(String almDet) {
        this.almDet = almDet;
    }

    @Column(name = "AlmVolTot", precision = 10)
    public Double getAlmVolTot() {
        return this.almVolTot;
    }

    public void setAlmVolTot(Double almVolTot) {
        this.almVolTot = almVolTot;
    }

    @Column(name = "AlmObs", nullable = false, length = 90)
    public String getAlmObs() {
        return this.almObs;
    }

    public void setAlmObs(String almObs) {
        this.almObs = almObs;
    }

    @Column(name = "EstRegCod", nullable = false, length = 1)
    public char getEstRegCod() {
        return this.estRegCod;
    }

    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "enP2mAlmacen")
    public Set getEnP2mProductos() {
        return this.enP2mProductos;
    }

    public void setEnP2mProductos(Set enP2mProductos) {
        this.enP2mProductos = enP2mProductos;
    }
}