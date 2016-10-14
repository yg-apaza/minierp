package org.epis.minierp.view.contabilidad;

import java.io.Serializable;
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
    
    @Column(name="CueNum")
    private String cueNum;
    
    @Column(name="CueDes")
    private String cueDes;
    
    @Column(name="AsiDetDebHab")
    private boolean asiDetDebHab;
    
    @Column(name="AsiDetMon")
    private double asiDetMon;
    
    @Column(name="AsiCabFec")
    private String asiCabFec;
    
    @Column(name="EstRegCod")
    private String estRegCod;

    public LibroDiarioPKView getIdPK() {
        return idPK;
    }

    public void setIdPK(LibroDiarioPKView idPK) {
        this.idPK = idPK;
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

    public String getAsiCabFec() {
        return asiCabFec;
    }

    public void setAsiCabFec(String asiCabFec) {
        this.asiCabFec = asiCabFec;
    }

    public String getEstRegCod() {
        return estRegCod;
    }

    public void setEstRegCod(String estRegCod) {
        this.estRegCod = estRegCod;
    }

    @Override
    public String toString() {
        return "LibroDiario{" + "idPK=" + idPK + ", cueNum=" + cueNum + ", cueDes=" + cueDes + ", asiDetDebHab=" + asiDetDebHab + ", asiDetMon=" + asiDetMon + ", asiCabFec=" + asiCabFec + ", estRegCod=" + estRegCod + '}';
    }
    
}