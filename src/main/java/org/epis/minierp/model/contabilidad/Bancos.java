package org.epis.minierp.model.contabilidad;

import java.util.Date;

public class Bancos {
    
    private int asiDetCod;
    private Date asiCabFec;
    private String cueBanNum;
    private String asiCabNumCom;
    private String cueNum;
    private String cueDes;
    private double debe;
    private double haber;
    private String LibDiaPer;

    public Bancos(int asiDetCod, Date asiCabFec, String cueBanNum, String asiCabNumCom, String cueNum, String cueDes, double debe, double haber, String LibDiaPer) {
        this.asiDetCod = asiDetCod;
        this.asiCabFec = asiCabFec;
        this.cueBanNum = cueBanNum;
        this.asiCabNumCom = asiCabNumCom;
        this.cueDes = cueDes;
        this.debe = debe;
        this.haber = haber;
        this.LibDiaPer = LibDiaPer;
    }

    public Bancos() {
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

    public String getAsiCabNumCom() {
        return asiCabNumCom;
    }

    public void setAsiCabNumCom(String asiCabNumCom) {
        this.asiCabNumCom = asiCabNumCom;
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

    public String getLibDiaPer() {
        return LibDiaPer;
    }

    public void setLibDiaPer(String LibDiaPer) {
        this.LibDiaPer = LibDiaPer;
    }

    
}
