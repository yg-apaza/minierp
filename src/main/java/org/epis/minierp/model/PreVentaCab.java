package org.epis.minierp.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Entity
@Table(name = "en_p1m_preventa_cab")
public class PreVentaCab implements Serializable {

    @Id
    private String PreVenCabCod;

    @Column(name = "CliCod")
    private String cliCod;

    @Column(name = "UsuCod")
    private String usuCod;

    @Column(name = "PreVenCabFec")
    private Date preVenCabFec;

    @Column(name = "PreVenCabPla")
    private int preVenCabPla;

    @Column(name = "PreVenCabTot")
    private double preVenCabTot;

    @Column(name = "PreVenCabDes")
    private double preVenCabDes;

    @Column(name = "PreVenCabSubTot")
    private double preVenCabSubTot;

    @Column(name = "PreVenCabIGV")
    private int preVenCabIGV;

    @Column(name = "PreVenCabObs")
    private String preVenCabObs;

    @Column(name = "MonCod")
    private int monCod;

    @Column(name = "EstRegCod")
    private char estRegCod;

    public String getPreVenCabCod() {
        return PreVenCabCod;
    }

    public String getCliCod() {
        return cliCod;
    }

    public String getUsuCod() {
        return usuCod;
    }

    public Date getPreVenCabFec() {
        return preVenCabFec;
    }

    public int getPreVenCabPla() {
        return preVenCabPla;
    }

    public double getPreVenCabTot() {
        return preVenCabTot;
    }

    public double getPreVenCabDes() {
        return preVenCabDes;
    }

    public double getPreVenCabSubTot() {
        return preVenCabSubTot;
    }

    public int getPreVenCabIGV() {
        return preVenCabIGV;
    }

    public String getPreVenCabObs() {
        return preVenCabObs;
    }

    public int getMonCod() {
        return monCod;
    }

    public char getEstRegCod() {
        return estRegCod;
    }

    public void setPreVenCabCod(String PreVenCabCod) {
        this.PreVenCabCod = PreVenCabCod;
    }

    public void setCliCod(String cliCod) {
        this.cliCod = cliCod;
    }

    public void setUsuCod(String usuCod) {
        this.usuCod = usuCod;
    }

    public void setPreVenCabFec(Date preVenCabFec) {
        this.preVenCabFec = preVenCabFec;
    }

    public void setPreVenCabPla(int preVenCabPla) {
        this.preVenCabPla = preVenCabPla;
    }

    public void setPreVenCabTot(double preVenCabTot) {
        this.preVenCabTot = preVenCabTot;
    }

    public void setPreVenCabDes(double preVenCabDes) {
        this.preVenCabDes = preVenCabDes;
    }

    public void setPreVenCabSubTot(double preVenCabSubTot) {
        this.preVenCabSubTot = preVenCabSubTot;
    }

    public void setPreVenCabIGV(int preVenCabIGV) {
        this.preVenCabIGV = preVenCabIGV;
    }

    public void setPreVenCabObs(String preVenCabObs) {
        this.preVenCabObs = preVenCabObs;
    }

    public void setMonCod(int monCod) {
        this.monCod = monCod;
    }

    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }

    @Override
    public String toString() {
        return "PreVentaCab{" + "PreVenCabCod=" + PreVenCabCod + ", cliCod=" + cliCod + ", usuCod=" + usuCod + ", preVenCabFec=" + preVenCabFec + ", preVenCabPla=" + preVenCabPla + ", preVenCabTot=" + preVenCabTot + ", preVenCabDes=" + preVenCabDes + ", preVenCabSubTot=" + preVenCabSubTot + ", preVenCabIGV=" + preVenCabIGV + ", preVenCabObs=" + preVenCabObs + ", monCod=" + monCod + ", estRegCod=" + estRegCod + '}';
    }
  
}
