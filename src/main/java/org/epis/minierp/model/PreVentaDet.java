package org.epis.minierp.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "en_p1t_preventa_det")
public class PreVentaDet implements Serializable{
    
    @Id
    private String preVenCabCod;

    @Id
    private int preVenDetCod;
    
    @Column(name = "ClaProCod")
    private String claProCod;
    
    @Column(name = "SubClaProCod")
    private String subClaProCod;
    
    @Column(name = "ProCod")
    private String proCod;
    
    @Column(name = "preVenDetCan")
    private double preVenDetCan;
    
    @Column(name = "preVenDetValUni")
    private double preVenDetValUni;

    public String getPreVenCabCod() {
        return preVenCabCod;
    }

    public int getPreVenDetCod() {
        return preVenDetCod;
    }

    public String getClaProCod() {
        return claProCod;
    }

    public String getSubClaProCod() {
        return subClaProCod;
    }

    public String getProCod() {
        return proCod;
    }

    public double getPreVenDetCan() {
        return preVenDetCan;
    }

    public double getPreVenDetValUni() {
        return preVenDetValUni;
    }

    public void setPreVenCabCod(String preVenCabCod) {
        this.preVenCabCod = preVenCabCod;
    }

    public void setPreVenDetCod(int preVenDetCod) {
        this.preVenDetCod = preVenDetCod;
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

    public void setPreVenDetCan(double preVenDetCan) {
        this.preVenDetCan = preVenDetCan;
    }

    public void setPreVenDetValUni(double preVenDetValUni) {
        this.preVenDetValUni = preVenDetValUni;
    }

    @Override
    public String toString() {
        return "PreVentaDet{" + "preVenCabCod=" + preVenCabCod + ", preVenDetCod=" + preVenDetCod + ", claProCod=" + claProCod + ", subClaProCod=" + subClaProCod + ", proCod=" + proCod + ", preVenDetCan=" + preVenDetCan + ", preVenDetValUni=" + preVenDetValUni + '}';
    }

}
