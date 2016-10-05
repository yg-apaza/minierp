package org.epis.minierp.dto;

import java.io.Serializable;
import java.util.Date;

public class FacturaCompraCabeceraDto implements Serializable {
    private String facComCabCod;
    private String proCod; 
    private String proDes; /*Ojo*/
    private String usuCod; 
    private String usuDes; /*Ojo*/
    private Date facComCabFec; 
    private double facComCabTot; 
    private double facComCabDes; 
    private double facComCabSubTot; 
    private int facComCabIGV; 
    private String FacComCabObs; 
    private int estFacCod;
    private int metPagCod;
    private String metPagDes; /*Ojo*/
    private int tipPagCod;
    private String tipPagDes; /*Ojo*/
    private int monCod;
    private String tipMonDes; /*Ojo*/
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

    public String getProDes() {
        return proDes;
    }

    public void setProDes(String proDes) {
        this.proDes = proDes;
    }

    public String getUsuCod() {
        return usuCod;
    }

    public void setUsuCod(String usuCod) {
        this.usuCod = usuCod;
    }

    public String getUsuDes() {
        return usuDes;
    }

    public void setUsuDes(String usuDes) {
        this.usuDes = usuDes;
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

    public String getMetPagDes() {
        return metPagDes;
    }

    public void setMetPagDes(String metPagDes) {
        this.metPagDes = metPagDes;
    }

    public int getTipPagCod() {
        return tipPagCod;
    }

    public void setTipPagCod(int tipPagCod) {
        this.tipPagCod = tipPagCod;
    }

    public String getTipPagDes() {
        return tipPagDes;
    }

    public void setTipPagDes(String tipPagDes) {
        this.tipPagDes = tipPagDes;
    }

    public int getMonCod() {
        return monCod;
    }

    public void setMonCod(int monCod) {
        this.monCod = monCod;
    }

    public String getTipMonDes() {
        return tipMonDes;
    }

    public void setTipMonDes(String tipMonDes) {
        this.tipMonDes = tipMonDes;
    }

    public char getEstRegCod() {
        return estRegCod;
    }

    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }

    @Override
    public String toString() {
        return "FacturaCompraCabeceraDto{" + "facComCabCod=" + facComCabCod + ", proCod=" + proCod + ", proDes=" + proDes + ", usuCod=" + usuCod + ", usuDes=" + usuDes + ", facComCabFec=" + facComCabFec + ", facComCabTot=" + facComCabTot + ", facComCabDes=" + facComCabDes + ", facComCabSubTot=" + facComCabSubTot + ", facComCabIGV=" + facComCabIGV + ", FacComCabObs=" + FacComCabObs + ", estFacCod=" + estFacCod + ", metPagCod=" + metPagCod + ", metPagDes=" + metPagDes + ", tipPagCod=" + tipPagCod + ", tipPagDes=" + tipPagDes + ", monCod=" + monCod + ", tipMonDes=" + tipMonDes + ", estRegCod=" + estRegCod + '}';
    }
}