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
@Table(name = "en_p1m_preventa_cab", catalog = "episerp")
public class EnP1mPreventaCab implements java.io.Serializable {
    private String preVenCabCod;
    private EnP1mCliente enP1mCliente;
    private EnP1mUsuario enP1mUsuario;
    private TaGzzMoneda taGzzMoneda;
    private Date preVenCabFec;
    private int preVenCabPla;
    private double preVenCabTot;
    private double preVenCabDes;
    private double preVenCabSubTot;
    private int preVenCabIgv;
    private String preVenCabObs;
    private char estRegCod;
    private Set enP1cPreventaRealizadases = new HashSet(0);
    private Set enP1tPreventaDets = new HashSet(0);

    public EnP1mPreventaCab() {
    }

    public EnP1mPreventaCab(String preVenCabCod, EnP1mCliente enP1mCliente, EnP1mUsuario enP1mUsuario, TaGzzMoneda taGzzMoneda, Date preVenCabFec, int preVenCabPla, double preVenCabTot, double preVenCabDes, double preVenCabSubTot, int preVenCabIgv, String preVenCabObs, char estRegCod) {
        this.preVenCabCod = preVenCabCod;
        this.enP1mCliente = enP1mCliente;
        this.enP1mUsuario = enP1mUsuario;
        this.taGzzMoneda = taGzzMoneda;
        this.preVenCabFec = preVenCabFec;
        this.preVenCabPla = preVenCabPla;
        this.preVenCabTot = preVenCabTot;
        this.preVenCabDes = preVenCabDes;
        this.preVenCabSubTot = preVenCabSubTot;
        this.preVenCabIgv = preVenCabIgv;
        this.preVenCabObs = preVenCabObs;
        this.estRegCod = estRegCod;
    }

    public EnP1mPreventaCab(String preVenCabCod, EnP1mCliente enP1mCliente, EnP1mUsuario enP1mUsuario, TaGzzMoneda taGzzMoneda, Date preVenCabFec, int preVenCabPla, double preVenCabTot, double preVenCabDes, double preVenCabSubTot, int preVenCabIgv, String preVenCabObs, char estRegCod, Set enP1cPreventaRealizadases, Set enP1tPreventaDets) {
        this.preVenCabCod = preVenCabCod;
        this.enP1mCliente = enP1mCliente;
        this.enP1mUsuario = enP1mUsuario;
        this.taGzzMoneda = taGzzMoneda;
        this.preVenCabFec = preVenCabFec;
        this.preVenCabPla = preVenCabPla;
        this.preVenCabTot = preVenCabTot;
        this.preVenCabDes = preVenCabDes;
        this.preVenCabSubTot = preVenCabSubTot;
        this.preVenCabIgv = preVenCabIgv;
        this.preVenCabObs = preVenCabObs;
        this.estRegCod = estRegCod;
        this.enP1cPreventaRealizadases = enP1cPreventaRealizadases;
        this.enP1tPreventaDets = enP1tPreventaDets;
    }

    @Id

    @Column(name = "PreVenCabCod", unique = true, nullable = false, length = 10)
    public String getPreVenCabCod() {
        return this.preVenCabCod;
    }

    public void setPreVenCabCod(String preVenCabCod) {
        this.preVenCabCod = preVenCabCod;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "CliCod", nullable = false)
    public EnP1mCliente getEnP1mCliente() {
        return this.enP1mCliente;
    }

    public void setEnP1mCliente(EnP1mCliente enP1mCliente) {
        this.enP1mCliente = enP1mCliente;
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
    @JoinColumn(name = "MonCod", nullable = false)
    public TaGzzMoneda getTaGzzMoneda() {
        return this.taGzzMoneda;
    }

    public void setTaGzzMoneda(TaGzzMoneda taGzzMoneda) {
        this.taGzzMoneda = taGzzMoneda;
    }

    @Temporal(TemporalType.DATE)
    @Column(name = "PreVenCabFec", nullable = false, length = 10)
    public Date getPreVenCabFec() {
        return this.preVenCabFec;
    }

    public void setPreVenCabFec(Date preVenCabFec) {
        this.preVenCabFec = preVenCabFec;
    }

    @Column(name = "PreVenCabPla", nullable = false)
    public int getPreVenCabPla() {
        return this.preVenCabPla;
    }

    public void setPreVenCabPla(int preVenCabPla) {
        this.preVenCabPla = preVenCabPla;
    }

    @Column(name = "PreVenCabTot", nullable = false, precision = 10)
    public double getPreVenCabTot() {
        return this.preVenCabTot;
    }

    public void setPreVenCabTot(double preVenCabTot) {
        this.preVenCabTot = preVenCabTot;
    }

    @Column(name = "PreVenCabDes", nullable = false, precision = 10)
    public double getPreVenCabDes() {
        return this.preVenCabDes;
    }

    public void setPreVenCabDes(double preVenCabDes) {
        this.preVenCabDes = preVenCabDes;
    }

    @Column(name = "PreVenCabSubTot", nullable = false, precision = 10)
    public double getPreVenCabSubTot() {
        return this.preVenCabSubTot;
    }

    public void setPreVenCabSubTot(double preVenCabSubTot) {
        this.preVenCabSubTot = preVenCabSubTot;
    }

    @Column(name = "PreVenCabIGV", nullable = false)
    public int getPreVenCabIgv() {
        return this.preVenCabIgv;
    }

    public void setPreVenCabIgv(int preVenCabIgv) {
        this.preVenCabIgv = preVenCabIgv;
    }

    @Column(name = "PreVenCabObs", nullable = false, length = 90)
    public String getPreVenCabObs() {
        return this.preVenCabObs;
    }

    public void setPreVenCabObs(String preVenCabObs) {
        this.preVenCabObs = preVenCabObs;
    }

    @Column(name = "EstRegCod", nullable = false, length = 1)
    public char getEstRegCod() {
        return this.estRegCod;
    }

    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "enP1mPreventaCab")
    public Set getEnP1cPreventaRealizadases() {
        return this.enP1cPreventaRealizadases;
    }

    public void setEnP1cPreventaRealizadases(Set enP1cPreventaRealizadases) {
        this.enP1cPreventaRealizadases = enP1cPreventaRealizadases;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "enP1mPreventaCab")
    public Set getEnP1tPreventaDets() {
        return this.enP1tPreventaDets;
    }

    public void setEnP1tPreventaDets(Set enP1tPreventaDets) {
        this.enP1tPreventaDets = enP1tPreventaDets;
    }

    @Override
    public String toString() {
        return "EnP1mPreventaCab{" + "preVenCabCod=" + preVenCabCod + ", enP1mCliente=" + enP1mCliente + ", enP1mUsuario=" + enP1mUsuario + ", taGzzMoneda=" + taGzzMoneda + ", preVenCabFec=" + preVenCabFec + ", preVenCabPla=" + preVenCabPla + ", preVenCabTot=" + preVenCabTot + ", preVenCabDes=" + preVenCabDes + ", preVenCabSubTot=" + preVenCabSubTot + ", preVenCabIgv=" + preVenCabIgv + ", preVenCabObs=" + preVenCabObs + ", estRegCod=" + estRegCod + '}';
    }
}
