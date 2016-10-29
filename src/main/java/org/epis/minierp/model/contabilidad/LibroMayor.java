package org.epis.minierp.model.contabilidad;

import java.util.Date;

public class LibroMayor {

    private String libDiaCod;
    private int asiDetCod;
    private int asiCabCod;
    private Date asiCabFec;
    private String asiCabGlo;
    private String cueCod;
    private String cueDes;
    private String cueNum;
    private double debe;
    private double haber;
    private String estado;

    public LibroMayor(int asiDetCod, Date asiCabFec, String asiCabGlo, String cueDes, String cueNum, double debe, double haber) {
        this.asiDetCod = asiDetCod;
        this.asiCabFec = asiCabFec;
        this.asiCabGlo = asiCabGlo;
        this.cueDes = cueDes;
        this.cueNum = cueNum;
        this.debe = debe;
        this.haber = haber;
    }

    public LibroMayor() {
    }

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

    public String getAsiCabGlo() {
        return asiCabGlo;
    }

    public void setAsiCabGlo(String asiCabGlo) {
        this.asiCabGlo = asiCabGlo;
    }

}