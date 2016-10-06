package org.epis.minierp.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Entity
@Table(name = "en_p1m_factura_venta_cab")
public class FacVentaCab implements Serializable {

    @Id
    private String facVenCabCod;

    @Column(name = "CliCod")
    private String cliCod;

    @Column(name = "UsuCod")
    private String usuCod;

    @Column(name = "FacVenCabFec")
    private Date facVenCabFec;

    @Column(name = "FacVenCabTot")
    private double facVenCabTot;

    @Column(name = "FacVenCabDes")
    private double facVenCabDes;

    @Column(name = "FacVenCabSubTot")
    private double facVenCabSubTot;

    @Column(name = "FacVenCabIGV")
    private int facVenCabIGV;

    @Column(name = "FacVenCabObs")
    private String facVenCabObs;

    @Column(name = "EstFacCod")
    private int estFacCod;

    @Column(name = "MetPagCod")
    private int metPagCod;

    @Column(name = "TipPagCod")
    private int tipPagCod;

    @Column(name = "MonCod")
    private int monCod;

    @Column(name = "EstRegCod")
    private char estRegCod;

    public String getFacVenCabCod() {
        return facVenCabCod;
    }

    public String getCliCod() {
        return cliCod;
    }

    public String getUsuCod() {
        return usuCod;
    }

    public Date getFacVenCabFec() {
        return facVenCabFec;
    }

    public double getFacVenCabTot() {
        return facVenCabTot;
    }

    public double getFacVenCabDes() {
        return facVenCabDes;
    }

    public double getFacVenCabSubTot() {
        return facVenCabSubTot;
    }

    public int getFacVenCabIGV() {
        return facVenCabIGV;
    }

    public String getFacVenCabObs() {
        return facVenCabObs;
    }

    public int getEstFacCod() {
        return estFacCod;
    }

    public int getMetPagCod() {
        return metPagCod;
    }

    public int getTipPagCod() {
        return tipPagCod;
    }

    public int getMonCod() {
        return monCod;
    }

    public char getEstRegCod() {
        return estRegCod;
    }

    public void setFacVenCabCod(String facVenCabCod) {
        this.facVenCabCod = facVenCabCod;
    }

    public void setCliCod(String cliCod) {
        this.cliCod = cliCod;
    }

    public void setUsuCod(String usuCod) {
        this.usuCod = usuCod;
    }

    public void setFacVenCabFec(Date facVenCabFec) {
        this.facVenCabFec = facVenCabFec;
    }

    public void setFacVenCabTot(double facVenCabTot) {
        this.facVenCabTot = facVenCabTot;
    }

    public void setFacVenCabDes(double facVenCabDes) {
        this.facVenCabDes = facVenCabDes;
    }

    public void setFacVenCabSubTot(double facVenCabSubTot) {
        this.facVenCabSubTot = facVenCabSubTot;
    }

    public void setFacVenCabIGV(int facVenCabIGV) {
        this.facVenCabIGV = facVenCabIGV;
    }

    public void setFacVenCabObs(String facVenCabObs) {
        this.facVenCabObs = facVenCabObs;
    }

    public void setEstFacCod(int estFacCod) {
        this.estFacCod = estFacCod;
    }

    public void setMetPagCod(int metPagCod) {
        this.metPagCod = metPagCod;
    }

    public void setTipPagCod(int tipPagCod) {
        this.tipPagCod = tipPagCod;
    }

    public void setMonCod(int monCod) {
        this.monCod = monCod;
    }

    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }

    @Override
    public String toString() {
        return "FacturaCab{" + "facVenCabCod=" + facVenCabCod + ", cliCod=" + cliCod + ", usuCod=" + usuCod + ", facVenCabFec=" + facVenCabFec + ", facVenCabTot=" + facVenCabTot + ", facVenCabDes=" + facVenCabDes + ", facVenCabSubTot=" + facVenCabSubTot + ", facVenCabIGV=" + facVenCabIGV + ", facVenCabObs=" + facVenCabObs + ", estFacCod=" + estFacCod + ", metPagCod=" + metPagCod + ", tipPagCod=" + tipPagCod + ", monCod=" + monCod + ", estRegCod=" + estRegCod + '}';
    }

    
    
}
