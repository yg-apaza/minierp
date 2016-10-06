package org.epis.minierp.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "en_p2m_producto")
public class Producto implements Serializable {

    @Id
    private String claProCod;
    
    @Id
    private String subClaProCod;
    
    @Id
    private String proCod;
    
    @Column(name = "ProDet")
    private String proDet;
    
    @Column(name = "UniMedCod")
    private int uniMedCod;
    
    @Column(name = "ProPreUni")
    private double proPreUni;
    
    @Column(name = "MonCod")
    private int monCod;
    
    @Column(name = "ProStk")
    private double proStk;
    
    @Column(name = "ProStkPreVen")
    private double proStkPreVen;
    
    @Column(name = "AlmCod")
    private String almCod;
    
    @Column(name = "VolUniAlm")
    private double volUniAlm;
    
    @Column(name = "ProStkMin")
    private double proStkMin;
    
    @Column(name = "ProObs")
    private String proObs;
    
    @Column(name = "EstRegCod")
    private char estRegCod;

    public String getClaProCod() {
        return claProCod;
    }

    public String getSubClaProCod() {
        return subClaProCod;
    }

    public String getProCod() {
        return proCod;
    }

    public String getProDet() {
        return proDet;
    }

    public int getUniMedCod() {
        return uniMedCod;
    }

    public double getProPreUni() {
        return proPreUni;
    }

    public int getMonCod() {
        return monCod;
    }

    public double getProStk() {
        return proStk;
    }

    public double getProStkPreVen() {
        return proStkPreVen;
    }

    public String getAlmCod() {
        return almCod;
    }

    public double getVolUniAlm() {
        return volUniAlm;
    }

    public double getProStkMin() {
        return proStkMin;
    }

    public String getProObs() {
        return proObs;
    }

    public char getEstRegCod() {
        return estRegCod;
    }

    public void setClaProCod(String claProCod) {
        this.claProCod = claProCod;
    }

    public void setSubClaProCod(String subClaProCod) {
        this.subClaProCod = subClaProCod;
    }

    public void setProCod(String proCod) {
        this.proCod = proCod;
    }

    public void setProDet(String proDet) {
        this.proDet = proDet;
    }

    public void setUniMedCod(int uniMedCod) {
        this.uniMedCod = uniMedCod;
    }

    public void setProPreUni(double proPreUni) {
        this.proPreUni = proPreUni;
    }

    public void setMonCod(int monCod) {
        this.monCod = monCod;
    }

    public void setProStk(double proStk) {
        this.proStk = proStk;
    }

    public void setProStkPreVen(double proStkPreVen) {
        this.proStkPreVen = proStkPreVen;
    }

    public void setAlmCod(String almCod) {
        this.almCod = almCod;
    }

    public void setVolUniAlm(double volUniAlm) {
        this.volUniAlm = volUniAlm;
    }

    public void setProStkMin(double proStkMin) {
        this.proStkMin = proStkMin;
    }

    public void setProObs(String proObs) {
        this.proObs = proObs;
    }

    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }

    @Override
    public String toString() {
        return "Producto{" + "claProCod=" + claProCod + ", subClaProCod=" + subClaProCod + ", proCod=" + proCod + ", proDet=" + proDet + ", uniMedCod=" + uniMedCod + ", proPreUni=" + proPreUni + ", monCod=" + monCod + ", proStk=" + proStk + ", proStkPreVen=" + proStkPreVen + ", almCod=" + almCod + ", volUniAlm=" + volUniAlm + ", proStkMin=" + proStkMin + ", proObs=" + proObs + ", estRegCod=" + estRegCod + '}';
    }
    
}
