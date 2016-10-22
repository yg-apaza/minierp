package org.epis.minierp.model.contabilidad;

import java.util.Date;

public class Bancos {
    
    private int asiDetCod;
    private Date asiCabFec;
    private String cueBanNum;
    private String cueNum;
    private String cueDes;
    private String debe;
    private String haber;

    public Bancos(int asiDetCod, Date asiCabFec, String cueBanNum, String cueNum, String cueDes, String debe, String haber) {
        this.asiDetCod = asiDetCod;
        this.asiCabFec = asiCabFec;
        this.cueBanNum = cueBanNum;
        this.cueNum = cueNum;
        this.cueDes = cueDes;
        this.debe = debe;
        this.haber = haber;
    }

    public int getAsiDetCod() {
        return asiDetCod;
    }

    public void setAsiDetCod(int asiDetCod) {
        this.asiDetCod = asiDetCod;
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
