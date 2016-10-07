package org.epis.minierp.dto;

import java.util.List;
import org.epis.minierp.model.EnP3mCuenta;

public class CuentaDto
{
    public int cueCod;   
    public EnP3mCuenta enP3mCuenta;
    public int cueNiv;
    public String cueNum;
    public String cueDes;
    public char estRegCod;
    
    public List<CuentaDto> childs = null;

    public int getCueCod() {
        return cueCod;
    }

    public void setCueCod(int cueCod) {
        this.cueCod = cueCod;
    }

    public EnP3mCuenta getCuePad() {
        return enP3mCuenta;
    }

    public void setCuePad(EnP3mCuenta enP3mCuenta) {
        this.enP3mCuenta = enP3mCuenta;
    }

    public int getCueNiv() {
        return cueNiv;
    }

    public void setCueNiv(int cueNiv) {
        this.cueNiv = cueNiv;
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

    public char getEstRegCod() {
        return estRegCod;
    }

    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }

    public List<CuentaDto> getChilds() {
        return childs;
    }

    public void setChilds(List<CuentaDto> childs) {
        this.childs = childs;
    }

    @Override
    public String toString() {
        return "CuentaDto{" + "cueCod=" + cueCod + ", cueNiv=" + cueNiv + ", cueNum=" + cueNum + ", cueDes=" + cueDes + ", estRegCod=" + estRegCod + '}';
    }   
}