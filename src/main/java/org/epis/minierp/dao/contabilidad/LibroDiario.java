package org.epis.minierp.dao.contabilidad;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;

@Entity
@IdClass(LibroDiarioPK.class)
public class LibroDiario implements Serializable
{
    @Id
    @Column(name="LibDiaCod")
    private String LibDiaCod;
    
    @Id
    @Column(name="AsiCabCod")
    private int AsiCabCod;
    
    @Id
    @Column(name="AsiDetCod")
    private int AsiDetCod;
    
    @Column(name="CueNum")
    private String CueNum;
    
    @Column(name="AsiDetDebHab")
    private boolean AsiDetDebHab;
    
    @Column(name="AsiDetMon")
    private double AsiDetMon;
    
    @Column(name="AsiCabFec")
    private String AsiCabFec;
    
    @Column(name="EstRegCod")
    private String EstRegCod;

    public String getLibDiaCod() {
        return LibDiaCod;
    }

    public void setLibDiaCod(String LibDiaCod) {
        this.LibDiaCod = LibDiaCod;
    }

    public int getAsiCabCod() {
        return AsiCabCod;
    }

    public void setAsiCabCod(int AsiCabCod) {
        this.AsiCabCod = AsiCabCod;
    }

    public int getAsiDetCod() {
        return AsiDetCod;
    }

    public void setAsiDetCod(int AsiDetCod) {
        this.AsiDetCod = AsiDetCod;
    }

    public String getCueNum() {
        return CueNum;
    }

    public void setCueNum(String CueNum) {
        this.CueNum = CueNum;
    }

    public boolean isAsiDetDebHab() {
        return AsiDetDebHab;
    }

    public void setAsiDetDebHab(boolean AsiDetDebHab) {
        this.AsiDetDebHab = AsiDetDebHab;
    }

    public double getAsiDetMon() {
        return AsiDetMon;
    }

    public void setAsiDetMon(double AsiDetMon) {
        this.AsiDetMon = AsiDetMon;
    }

    public String getAsiCabFec() {
        return AsiCabFec;
    }

    public void setAsiCabFec(String AsiCabFec) {
        this.AsiCabFec = AsiCabFec;
    }

    public String getEstRegCod() {
        return EstRegCod;
    }

    public void setEstRegCod(String EstRegCod) {
        this.EstRegCod = EstRegCod;
    }

    @Override
    public String toString() {
        return "LibroDiario{" + "LibDiaCod=" + LibDiaCod + ", AsiCabCod=" + AsiCabCod + ", AsiDetCod=" + AsiDetCod + ", CueNum=" + CueNum + ", AsiDetDebHab=" + AsiDetDebHab + ", AsiDetMon=" + AsiDetMon + ", AsiCabFec=" + AsiCabFec + ", EstRegCod=" + EstRegCod + '}';
    }
    
}
