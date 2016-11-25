package org.epis.minierp.model.contabilidad;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "VIEW_LIBRO_DIARIO")
public class LibroDiarioView implements Serializable
{
    @EmbeddedId
    private LibroDiarioPKView idPK;
    
    @Column(name="AsiCabFec")
    private Date asiCabFec;
    
    @Column(name="AsiCabGlo")
    private String asiCabGlo;
    
    @Column(name="AsiCabTip")
    private char asiCabTip;
    
    @Column(name="AsiCabNumCom")
    private String asiCabNumCom;
    
    @Column(name="CueCod")
    private int cueCod;
    
    @Column(name="CueNum")
    private String cueNum;
    
    @Column(name="CueDes")
    private String cueDes;
    
    @Column(name="AsiDetDebHab")
    private boolean asiDetDebHab;
    
    @Column(name="AsiDetMon")
    private double asiDetMon;
    
    @Column(name="EstRegCod")
    private String estRegCod;

    public LibroDiarioPKView getIdPK() {
        return idPK;
    }

    public void setIdPK(LibroDiarioPKView idPK) {
        this.idPK = idPK;
    }
    
    public Date getAsiCabFec() {
        return asiCabFec;
    }

    public void setAsiCabFec(Date asiCabFec) {
        this.asiCabFec = asiCabFec;
    }

    public String getAsiCabGlo() {
        return asiCabGlo;
    }

    public void setAsiCabGlo(String asiCabGlo) {
        this.asiCabGlo = asiCabGlo;
    }

    public char getAsiCabTip() {
        return asiCabTip;
    }

    public void setAsiCabTip(char asiCabTip) {
        this.asiCabTip = asiCabTip;
    }

    public String getAsiCabNumCom() {
        return asiCabNumCom;
    }

    public void setAsiCabNumCom(String asiCabNumCom) {
        this.asiCabNumCom = asiCabNumCom;
    }

    public int getCueCod() {
        return cueCod;
    }

    public void setCueCod(int cueCod) {
        this.cueCod = cueCod;
    }

    public String getCueNum() {
        return cueNum;
    }

    public void setCueNum(String cueNum) {
        this.cueNum = cueNum;
    }

    public String getCueDes() {
        return cueDes;
    }

    public void setCueDes(String cueDes) {
        this.cueDes = cueDes;
    }

    public boolean isAsiDetDebHab() {
        return asiDetDebHab;
    }

    public void setAsiDetDebHab(boolean asiDetDebHab) {
        this.asiDetDebHab = asiDetDebHab;
    }

    public double getAsiDetMon() {
        return asiDetMon;
    }

    public void setAsiDetMon(double asiDetMon) {
        this.asiDetMon = asiDetMon;
    }

    public String getEstRegCod() {
        return estRegCod;
    }

    public void setEstRegCod(String estRegCod) {
        this.estRegCod = estRegCod;
    }

    @Override
    public String toString() {
        return "LibroDiarioView{" + "idPK=" + idPK + ", asiCabFec=" + asiCabFec + ", asiCabGlo=" + asiCabGlo + ", asiCabTip=" + asiCabTip + ", asiCabNumCom=" + asiCabNumCom + ", cueCod=" + cueCod + ", cueNum=" + cueNum + ", cueDes=" + cueDes + ", asiDetDebHab=" + asiDetDebHab + ", asiDetMon=" + asiDetMon + ", estRegCod=" + estRegCod + '}';
    }
}