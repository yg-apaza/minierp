package org.epis.minierp.view.contabilidad;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.Table;

@Entity
@IdClass(CajaPK.class)
@Table(name="VIEW_CAJA")
public class CajaModel implements Serializable {
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
    
    @Column(name="AsiCabTip")
    private String asiCabTip;
    
    @Column(name="CueCod")
    private String cueCod;
    
    @Column(name="CueDes")
    private String cueDes;
    
    @Column(name="Debe")
    private String debe;
    
    @Column(name="Haber")
    private String haber;

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

    public String getAsiCabTip() {
        return asiCabTip;
    }

    public void setAsiCabTip(String asiCabTip) {
        this.asiCabTip = asiCabTip;
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

    public String getDebe() {
        return debe;
    }

    public void setDebe(String debe) {
        this.debe = debe;
    }

    public String getHaber() {
        return haber;
    }

    public void setHaber(String haber) {
        this.haber = haber;
    }
    
    
    @Override
    public String toString() {
        return "VIEW_CAJA{" + "asiDetCod=" + asiDetCod + ", asiCabCod=" + asiCabCod + ", asiCabFec=" + asiCabFec + ", asiCabTip=" + asiCabTip + ", cueCod=" + cueCod + ", cueDes=" + cueDes + ", debe=" + debe + ", haber=" + haber + '}';
    }   
}