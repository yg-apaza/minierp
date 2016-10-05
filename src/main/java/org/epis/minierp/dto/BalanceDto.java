package org.epis.minierp.dto;

public class BalanceDto {
    
    private int asiDetCod;
    private int asiCabCod;
    private String libDiaCod;
    private int cueCod;
    private boolean asiDetDebHab;
    private double asiDetMon;
    
    public int getAsiDetCod() {
        return this.asiDetCod;
    }
    
    public void setAsiDetCod(int asiDetCod) {
        this.asiDetCod = asiDetCod;
    }

    public int getAsiCabCod() {
        return this.asiCabCod;
    }
    
    public void setAsiCabCod(int asiCabCod) {
        this.asiCabCod = asiCabCod;
    }

    public String getLibDiaCod() {
        return this.libDiaCod;
    }
    
    public void setLibDiaCod(String libDiaCod) {
        this.libDiaCod = libDiaCod;
    }
    
    public int getCueCod() {
        return this.cueCod;
    }
    
    public void setCueCod(int cueCod) {
        this.cueCod = cueCod;
    }

    public boolean isAsiDetDebHab() {
        return this.asiDetDebHab;
    }
    
    public void setAsiDetDebHab(boolean asiDetDebHab) {
        this.asiDetDebHab = asiDetDebHab;
    }

    public double getAsiDetMon() {
        return this.asiDetMon;
    }
    
    public void setAsiDetMon(double asiDetMon) {
        this.asiDetMon = asiDetMon;
    }
}
