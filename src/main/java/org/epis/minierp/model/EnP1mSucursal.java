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
@Table(name = "en_p1m_sucursal", catalog = "episerp")
public class EnP1mSucursal implements java.io.Serializable {

    private Integer sucCod;
    private String sucDes;
    private String sucDir;
    private char estRegCod;
    private Set enP1mPuntoVentas = new HashSet(0);
    private Set enP1mUsuarios = new HashSet(0);
    private Set enP2mAlmacens = new HashSet(0);

    public EnP1mSucursal() {
    }

    public EnP1mSucursal(char estRegCod) {
        this.estRegCod = estRegCod;
    }

    public EnP1mSucursal(String sucDes, String sucDir, char estRegCod, Set enP1mPuntoVentas, Set enP1mUsuarios, Set enP2mAlmacens) {
        this.sucDes = sucDes;
        this.sucDir = sucDir;
        this.estRegCod = estRegCod;
        this.enP1mPuntoVentas = enP1mPuntoVentas;
        this.enP1mUsuarios = enP1mUsuarios;
        this.enP2mAlmacens = enP2mAlmacens;
    }

    @Id
    @GeneratedValue(strategy = IDENTITY)

    @Column(name = "SucCod", unique = true, nullable = false)
    public Integer getSucCod() {
        return this.sucCod;
    }

    public void setSucCod(Integer sucCod) {
        this.sucCod = sucCod;
    }

    @Column(name = "SucDes", length = 60)
    public String getSucDes() {
        return this.sucDes;
    }

    public void setSucDes(String sucDes) {
        this.sucDes = sucDes;
    }

    @Column(name = "SucDir", length = 100)
    public String getSucDir() {
        return this.sucDir;
    }

    public void setSucDir(String sucDir) {
        this.sucDir = sucDir;
    }

    @Column(name = "EstRegCod", nullable = false, length = 1)
    public char getEstRegCod() {
        return this.estRegCod;
    }

    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "enP1mSucursal")
    public Set getEnP1mPuntoVentas() {
        return this.enP1mPuntoVentas;
    }

    public void setEnP1mPuntoVentas(Set enP1mPuntoVentas) {
        this.enP1mPuntoVentas = enP1mPuntoVentas;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "enP1mSucursal")
    public Set getEnP1mUsuarios() {
        return this.enP1mUsuarios;
    }

    public void setEnP1mUsuarios(Set enP1mUsuarios) {
        this.enP1mUsuarios = enP1mUsuarios;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "enP1mSucursal")
    public Set getEnP2mAlmacens() {
        return this.enP2mAlmacens;
    }

    public void setEnP2mAlmacens(Set enP2mAlmacens) {
        this.enP2mAlmacens = enP2mAlmacens;
    }
}