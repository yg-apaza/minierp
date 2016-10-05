package org.epis.minierp.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="en_p2m_producto")
public class Producto implements Serializable
{
    @EmbeddedId
    private ProductoId proId;
    
    @Column(name="ProDet")
    private String proDet;
    
    @Column(name="UniMedCod")
    private String uniMedCod;
    
    @Column(name="ProPreUni")
    private String proValUni;
    
    @Column(name="MonCod")
    private String monCod;
    
    @Column(name="ProStk")
    private String proStk;
    
    @Column(name="ProStkPreVen")
    private String proStkPreVen;
    
    @Column(name="AlmCod")
    private String almCod;
    
    @Column(name="VolUniMed")
    private String volUniMed;
    
    @Column(name="ProStkMin")
    private String proStkMin;
    
    @Column(name="ProObs")
    private String proObs;
    
    @Column(name="EstRegCod")
    private String estRegCod;
     
    public String getProDet() {
        return proDet;
    }
    
    public void setProDet(String proDet) {
        this.proDet = proDet;
    }  
    
    public String getUniMedCod() {
        return uniMedCod;
    }
    
    public void setUniMedCod(String uniMedCod) {
        this.uniMedCod = uniMedCod;
    }
    
    public String getMonCod() {
        return monCod;
    }
    
    public void setMonCod(String monCod) {
        this.monCod = monCod;
    }
    
    public String getProStk() {
        return proStk;
    }
    
    public void setProStk(String proStk) {
        this.proStk = proStk;
    }
    
    public String getProStkPreVen() {
        return proStkPreVen;
    }
    
    public void setProStkPreVen(String proStkPreVen) {
        this.proStkPreVen = proStkPreVen;
    }
    
    public String getAlmCod() {
        return almCod;
    }
    
    public void setAlmCod(String almCod) {
        this.almCod = almCod;
    }
    
    public String getVolUniMed() {
        return volUniMed;
    }
    
    public void setVolUniMed(String volUniMed) {
        this.volUniMed = volUniMed;
    }
    
    public String getProStkMin() {
        return proStkMin;
    }
    
    public void setProStkMin(String proStkMin) {
        this.proStkMin = proStkMin;
    }
    
    public String getProObs() {
        return proObs;
    }
    
    public void setProObs(String proObs) {
        this.proObs = proObs;
    }
    
    public String getEstRegCod() {
        return estRegCod;
    }
    
    public void setEstRegCod(String estRegCod) {
        this.estRegCod = estRegCod;
    }
  
}