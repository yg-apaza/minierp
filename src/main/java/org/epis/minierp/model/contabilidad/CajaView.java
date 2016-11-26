package org.epis.minierp.model.contabilidad;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.Table;

@Entity
@IdClass(CajaPKView.class)
@Table(name="VIEW_CAJA")
public class CajaView implements Serializable {
    @Id 
    @Column(name="LibDiaCod")
    private String libDiaCod;

    @Id
    @Column(name="AsiDetCod")
    private int asiDetCod;
    
    @Id
    @Column(name="AsiCabCod")
    private int asiCabCod;
    
    @Column(name="AsiCabFec")
    private Date asiCabFec;
    
    @Column(name="CueCod")
    private String cueCod;
    
    @Column(name="CueDes")
    private String cueDes;
    
    @Column(name="CueNum")
    private String cueNum;
    
    @Column(name="Debe")
    private double debe;
    
    @Column(name="Haber")
    private double haber;
    
    @Column(name="estado")
    private String estado;
    
    @Column(name="LibDiaPer")
    private String LibDiaPer;

    public String getLibDiaCod() {
        return libDiaCod;
    }

    public void setLibDiaCod(String libDiaCod) {
        this.libDiaCod = libDiaCod;
    }

    public int getAsiDetCod() {
        return asiDetCod;
    }

    public void setAsiDetCod(int asiDetCod) {
        this.asiDetCod = asiDetCod;
    }

    public int getAsiCabCod() {
        return asiCabCod;
    }

    public void setAsiCabCod(int asiCabCod) {
        this.asiCabCod = asiCabCod;
    }

    public Date getAsiCabFec() {
        return asiCabFec;
    }

    public void setAsiCabFec(Date asiCabFec) {
        this.asiCabFec = asiCabFec;
    }

    public String getCueCod() {
        return cueCod;
    }

    public void setCueCod(String cueCod) {
        this.cueCod = cueCod;
    }

    public String getCueDes() {
        return cueDes;
    }

    public void setCueDes(String cueDes) {
        this.cueDes = cueDes;
    }

    public String getCueNum() {
        return cueNum;
    }

    public void setCueNum(String cueNum) {
        this.cueNum = cueNum;
    }

    public double getDebe() {
        return debe;
    }

    public void setDebe(double debe) {
        this.debe = debe;
    }

    public double getHaber() {
        return haber;
    }

    public void setHaber(double haber) {
        this.haber = haber;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getLibDiaPer() {
        return LibDiaPer;
    }

    public void setLibDiaPer(String LibDiaPer) {
        this.LibDiaPer = LibDiaPer;
    }
    
}