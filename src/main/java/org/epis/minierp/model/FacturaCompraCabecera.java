package org.epis.minierp.model;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="en_p4m_factura_compra_cab")
public class FacturaCompraCabecera implements Serializable {
    @Id
    private String facComCabCod;
    
    @Column(name="ProCod")
    private String proCod; 
    
    @Column(name="UsuCod")
    private String usuCod; 
    
    @Column(name="FacComCabFec")
    private Date facComCabFec; 
    
    @Column(name="FacComCabTot")
    private double facComCabTot; 
    
    @Column(name="FacComCabDes")
    private double facComCabDes; 
    
    @Column(name="FacComCabSubTot")
    private double facComCabSubTot; 
    
    @Column(name="FacComCabIGV")
    private int facComCabIGV; 
    
    @Column(name="FacComCabObs")
    private String FacComCabObs; 
    
    @Column(name="EstFacCod")
    private int estFacCod;
    
    @Column(name="MetPagCod")
    private int metPagCod;
    
    @Column(name="TipPagCod")
    private int tipPagCod;
    
    @Column(name="MonCod")
    private int monCod;
    
    @Column(name="EstRegCod")
    private char estRegCod;

    public String getFacComCabCod() {
        return facComCabCod;
    }

    public void setFacComCabCod(String facComCabCod) {
        this.facComCabCod = facComCabCod;
    }

    public String getProCod() {
        return proCod;
    }

    public void setProCod(String proCod) {
        this.proCod = proCod;
    }

    public String getUsuCod() {
        return usuCod;
    }

    public void setUsuCod(String usuCod) {
        this.usuCod = usuCod;
    }

    public Date getFacComCabFec() {
        return facComCabFec;
    }

    public void setFacComCabFec(Date facComCabFec) {
        this.facComCabFec = facComCabFec;
    }

    public double getFacComCabTot() {
        return facComCabTot;
    }

    public void setFacComCabTot(double facComCabTot) {
        this.facComCabTot = facComCabTot;
    }

    public double getFacComCabDes() {
        return facComCabDes;
    }

    public void setFacComCabDes(double facComCabDes) {
        this.facComCabDes = facComCabDes;
    }

    public double getFacComCabSubTot() {
        return facComCabSubTot;
    }

    public void setFacComCabSubTot(double facComCabSubTot) {
        this.facComCabSubTot = facComCabSubTot;
    }

    public int getFacComCabIGV() {
        return facComCabIGV;
    }

    public void setFacComCabIGV(int facComCabIGV) {
        this.facComCabIGV = facComCabIGV;
    }

    public String getFacComCabObs() {
        return FacComCabObs;
    }

    public void setFacComCabObs(String FacComCabObs) {
        this.FacComCabObs = FacComCabObs;
    }

    public int getEstFacCod() {
        return estFacCod;
    }

    public void setEstFacCod(int estFacCod) {
        this.estFacCod = estFacCod;
    }

    public int getMetPagCod() {
        return metPagCod;
    }

    public void setMetPagCod(int metPagCod) {
        this.metPagCod = metPagCod;
    }

    public int getTipPagCod() {
        return tipPagCod;
    }

    public void setTipPagCod(int tipPagCod) {
        this.tipPagCod = tipPagCod;
    }

    public int getMonCod() {
        return monCod;
    }

    public void setMonCod(int monCod) {
        this.monCod = monCod;
    }

    public char getEstRegCod() {
        return estRegCod;
    }

    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }

    @Override
    public String toString() {
        return "FacturaCompraCabecera{" + "facComCabCod=" + facComCabCod + ", proCod=" + proCod + ", usuCod=" + usuCod + ", facComCabFec=" + facComCabFec + ", facComCabTot=" + facComCabTot + ", facComCabDes=" + facComCabDes + ", facComCabSubTot=" + facComCabSubTot + ", facComCabIGV=" + facComCabIGV + ", FacComCabObs=" + FacComCabObs + ", estFacCod=" + estFacCod + ", metPagCod=" + metPagCod + ", tipPagCod=" + tipPagCod + ", monCod=" + monCod + ", estRegCod=" + estRegCod + '}';
    }
}