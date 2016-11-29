package org.epis.minierp.model.contabilidad;

public class HojaTrabajo {
    String cueNum;
    String cueDes;
    double mayorDebe;
    double mayorHaber;
    boolean flagMayor;
    double mayorSaldo;
    boolean flagAjustes;
    double ajustesMonto;
    boolean flagBalance;
    double balanceMonto;
    boolean flagNaturaleza;
    double naturalezaMonto;
    boolean flagFuncion;
    double funcionMonto;

    public HojaTrabajo(String cueNum, String cueDes, double mayorDebe, double mayorHaber, boolean flagMayor, double mayorSaldo, boolean flagAjustes, double ajustesMonto, boolean flagBalance, double balanceMonto, boolean flagNaturaleza, double naturalezaMonto, boolean flagFuncion, double funcionMonto) {
        this.cueNum = cueNum;
        this.cueDes = cueDes;
        this.mayorDebe = mayorDebe;
        this.mayorHaber = mayorHaber;
        this.flagMayor = flagMayor;
        this.mayorSaldo = mayorSaldo;
        this.flagAjustes = flagAjustes;
        this.ajustesMonto = ajustesMonto;
        this.flagBalance = flagBalance;
        this.balanceMonto = balanceMonto;
        this.flagNaturaleza = flagNaturaleza;
        this.naturalezaMonto = naturalezaMonto;
        this.flagFuncion = flagFuncion;
        this.funcionMonto = funcionMonto;
    }

    public HojaTrabajo() {
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

    public double getMayorDebe() {
        return mayorDebe;
    }

    public void setMayorDebe(double mayorDebe) {
        this.mayorDebe = mayorDebe;
    }

    public double getMayorHaber() {
        return mayorHaber;
    }

    public void setMayorHaber(double mayorHaber) {
        this.mayorHaber = mayorHaber;
    }

    public boolean isFlagMayor() {
        return flagMayor;
    }

    public void setFlagMayor(boolean flagMayor) {
        this.flagMayor = flagMayor;
    }

    public double getMayorSaldo() {
        return mayorSaldo;
    }

    public void setMayorSaldo(double mayorSaldo) {
        this.mayorSaldo = mayorSaldo;
    }

    public boolean isFlagAjustes() {
        return flagAjustes;
    }

    public void setFlagAjustes(boolean flagAjustes) {
        this.flagAjustes = flagAjustes;
    }

    public double getAjustesMonto() {
        return ajustesMonto;
    }

    public void setAjustesMonto(double ajustesMonto) {
        this.ajustesMonto = ajustesMonto;
    }

    public boolean isFlagBalance() {
        return flagBalance;
    }

    public void setFlagBalance(boolean flagBalance) {
        this.flagBalance = flagBalance;
    }

    public double getBalanceMonto() {
        return balanceMonto;
    }

    public void setBalanceMonto(double balanceMonto) {
        this.balanceMonto = balanceMonto;
    }

    public boolean isFlagNaturaleza() {
        return flagNaturaleza;
    }

    public void setFlagNaturaleza(boolean flagNaturaleza) {
        this.flagNaturaleza = flagNaturaleza;
    }

    public double getNaturalezaMonto() {
        return naturalezaMonto;
    }

    public void setNaturalezaMonto(double naturalezaMonto) {
        this.naturalezaMonto = naturalezaMonto;
    }

    public boolean isFlagFuncion() {
        return flagFuncion;
    }

    public void setFlagFuncion(boolean flagFuncion) {
        this.flagFuncion = flagFuncion;
    }

    public double getFuncionMonto() {
        return funcionMonto;
    }

    public void setFuncionMonto(double funcionMonto) {
        this.funcionMonto = funcionMonto;
    }

    
    
}
