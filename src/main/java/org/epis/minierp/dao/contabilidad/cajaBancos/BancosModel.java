package org.epis.minierp.dao.contabilidad.cajaBancos;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.Table;

@Entity
@IdClass(CajaPK.class)
@Table(name="VIEW_BANCOS")
public class BancosModel implements Serializable {
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
    
    @Column(name="CueBanNum")
    private String cueBanNum;
    
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

    public String getCueBanNum() {
        return cueBanNum;
    }

    public void setCueBanNum(String cueBanNum) {
        this.cueBanNum = cueBanNum;
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
}
