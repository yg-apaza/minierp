package org.epis.minierp.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "en_p1t_factura_venta_det")
public class FacVentaDet implements Serializable{
    
    @Id
    private String facVenCabCod;

    @Id
    private int facVenDetCod;
    
    @Column(name = "ClaProCod")
    private String claProCod;
    
    @Column(name = "SubClaProCod")
    private String subClaProCod;
    
    @Column(name = "ProCod")
    private String proCod;
    
    @Column(name = "FacVenDetCan")
    private double facVenDetCan;
    
    @Column(name = "FacVenDetValUni")
    private double facVenDetValUni;

    public String getFacVenCabCod() {
        return facVenCabCod;
    }

    public int getFacVenDetCod() {
        return facVenDetCod;
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

    public double getFacVenDetCan() {
        return facVenDetCan;
    }

    public double getFacVenDetValUni() {
        return facVenDetValUni;
    }

    public void setFacVenCabCod(String facVenCabCod) {
        this.facVenCabCod = facVenCabCod;
    }

    public void setFacVenDetCod(int facVenDetCod) {
        this.facVenDetCod = facVenDetCod;
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

    public void setFacVenDetCan(double facVenDetCan) {
        this.facVenDetCan = facVenDetCan;
    }

    public void setFacVenDetValUni(double facVenDetValUni) {
        this.facVenDetValUni = facVenDetValUni;
    }

    @Override
    public String toString() {
        return "FacturaDet{" + "facVenCabCod=" + facVenCabCod + ", facVenDetCod=" + facVenDetCod + ", claProCod=" + claProCod + ", subClaProCod=" + subClaProCod + ", proCod=" + proCod + ", facVenDetCan=" + facVenDetCan + ", facVenDetValUni=" + facVenDetValUni + '}';
    }
    
}
