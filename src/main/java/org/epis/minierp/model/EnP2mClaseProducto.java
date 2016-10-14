package org.epis.minierp.model;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "en_p2m_clase_producto", catalog = "episerp")
public class EnP2mClaseProducto implements java.io.Serializable {

    private String claProCod;
    private String claProDet;
    private char estRegCod;
    private Set enP2mSubclaseProductos = new HashSet(0);

    public EnP2mClaseProducto() {
    }

    public EnP2mClaseProducto(String claProCod, String claProDet, char estRegCod) {
        this.claProCod = claProCod;
        this.claProDet = claProDet;
        this.estRegCod = estRegCod;
    }

    public EnP2mClaseProducto(String claProCod, String claProDet, char estRegCod, Set enP2mSubclaseProductos) {
        this.claProCod = claProCod;
        this.claProDet = claProDet;
        this.estRegCod = estRegCod;
        this.enP2mSubclaseProductos = enP2mSubclaseProductos;
    }

    @Id

    @Column(name = "ClaProCod", unique = true, nullable = false, length = 2)
    public String getClaProCod() {
        return this.claProCod;
    }

    public void setClaProCod(String claProCod) {
        this.claProCod = claProCod;
    }

    @Column(name = "ClaProDet", nullable = false, length = 90)
    public String getClaProDet() {
        return this.claProDet;
    }

    public void setClaProDet(String claProDet) {
        this.claProDet = claProDet;
    }

    @Column(name = "EstRegCod", nullable = false, length = 1)
    public char getEstRegCod() {
        return this.estRegCod;
    }

    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "enP2mClaseProducto")
    public Set getEnP2mSubclaseProductos() {
        return this.enP2mSubclaseProductos;
    }

    public void setEnP2mSubclaseProductos(Set enP2mSubclaseProductos) {
        this.enP2mSubclaseProductos = enP2mSubclaseProductos;
    }
}