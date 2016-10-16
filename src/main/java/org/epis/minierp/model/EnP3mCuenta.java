package org.epis.minierp.model;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "en_p3m_cuenta", catalog = "episerp")
public class EnP3mCuenta implements java.io.Serializable, Comparable<EnP3mCuenta> {

    private Integer cueCod;
    private EnP3mCuenta enP3mCuenta;
    private int cueNiv;
    private String cueNum;
    private String cueDes;
    private char estRegCod;
    private Set<EnP3tAsientoDet> enP3tAsientoDets = new HashSet(0);
    private Set<EnP3mCuentaBanco> enP3mCuentaBancos = new HashSet(0);
    private Set<EnP3mCuenta> enP3mCuentas = new HashSet(0);
    private Set<EnP3tPlantillaDet> enP3tPlantillaDets = new HashSet(0);

    public EnP3mCuenta() {
    }

    public EnP3mCuenta(int cueNiv, String cueNum, String cueDes, char estRegCod) {
        this.cueNiv = cueNiv;
        this.cueNum = cueNum;
        this.cueDes = cueDes;
        this.estRegCod = estRegCod;
    }

    public EnP3mCuenta(EnP3mCuenta enP3mCuenta, int cueNiv, String cueNum, String cueDes, char estRegCod, Set<EnP3tAsientoDet> enP3tAsientoDets, Set<EnP3mCuentaBanco> enP3mCuentaBancos, Set<EnP3mCuenta> enP3mCuentas, Set<EnP3tPlantillaDet> enP3tPlantillaDets) {
        this.enP3mCuenta = enP3mCuenta;
        this.cueNiv = cueNiv;
        this.cueNum = cueNum;
        this.cueDes = cueDes;
        this.estRegCod = estRegCod;
        this.enP3tAsientoDets = enP3tAsientoDets;
        this.enP3mCuentaBancos = enP3mCuentaBancos;
        this.enP3mCuentas = enP3mCuentas;
        this.enP3tPlantillaDets = enP3tPlantillaDets;
    }

    @Id
    @GeneratedValue(strategy = IDENTITY)

    @Column(name = "CueCod", unique = true, nullable = false)
    public Integer getCueCod() {
        return this.cueCod;
    }

    public void setCueCod(Integer cueCod) {
        this.cueCod = cueCod;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "CuePad")
    public EnP3mCuenta getEnP3mCuenta() {
        return this.enP3mCuenta;
    }

    public void setEnP3mCuenta(EnP3mCuenta enP3mCuenta) {
        this.enP3mCuenta = enP3mCuenta;
    }

    @Column(name = "CueNiv", nullable = false)
    public int getCueNiv() {
        return this.cueNiv;
    }

    public void setCueNiv(int cueNiv) {
        this.cueNiv = cueNiv;
    }

    @Column(name = "CueNum", nullable = false, length = 10)
    public String getCueNum() {
        return this.cueNum;
    }

    public void setCueNum(String cueNum) {
        this.cueNum = cueNum;
    }

    @Column(name = "CueDes", nullable = false, length = 150)
    public String getCueDes() {
        return this.cueDes;
    }

    public void setCueDes(String cueDes) {
        this.cueDes = cueDes;
    }

    @Column(name = "EstRegCod", nullable = false, length = 1)
    public char getEstRegCod() {
        return this.estRegCod;
    }

    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "enP3mCuenta")
    public Set<EnP3tAsientoDet> getEnP3tAsientoDets() {
        return this.enP3tAsientoDets;
    }

    public void setEnP3tAsientoDets(Set<EnP3tAsientoDet> enP3tAsientoDets) {
        this.enP3tAsientoDets = enP3tAsientoDets;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "enP3mCuenta")
    public Set<EnP3mCuentaBanco> getEnP3mCuentaBancos() {
        return this.enP3mCuentaBancos;
    }

    public void setEnP3mCuentaBancos(Set<EnP3mCuentaBanco> enP3mCuentaBancos) {
        this.enP3mCuentaBancos = enP3mCuentaBancos;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "enP3mCuenta")
    public Set<EnP3mCuenta> getEnP3mCuentas() {
        return this.enP3mCuentas;
    }

    public void setEnP3mCuentas(Set<EnP3mCuenta> enP3mCuentas) {
        this.enP3mCuentas = enP3mCuentas;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "enP3mCuenta")
    public Set<EnP3tPlantillaDet> getEnP3tPlantillaDets() {
        return this.enP3tPlantillaDets;
    }

    public void setEnP3tPlantillaDets(Set<EnP3tPlantillaDet> enP3tPlantillaDets) {
        this.enP3tPlantillaDets = enP3tPlantillaDets;
    }

    @Override
    public String toString() {
        return "EnP3mCuenta{" + "cueCod=" + cueCod + ", cueNiv=" + cueNiv + ", cueNum=" + cueNum + ", cueDes=" + cueDes + ", estRegCod=" + estRegCod + '}';
    }

    @Override
    public int compareTo(EnP3mCuenta that) {
        final int BEFORE = -1;
        final int AFTER = 1;
        if (that == null) {
            return BEFORE;
        }
        if (this.getCueNum().compareTo(that.getCueNum()) == 0) {
            return AFTER;
        } else {
            return this.getCueNum().compareTo(that.getCueNum());
        }
    }   
}
