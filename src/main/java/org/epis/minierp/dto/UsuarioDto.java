package org.epis.minierp.dto;

import java.io.Serializable;
import java.util.Date;

public class UsuarioDto implements Serializable
{
    private String usuCod;
    private String usuNom;
    private String usuApePat;
    private String usuApeMat;
    private String usuLog;
    private String usuPas;
    private byte[] usuHue;
    private int tipUsuCod;
    private String tipUsuDet;
    private Date usuFecNac;
    private int estCivCod;
    private String estCivDet;
    private char usuSex;
    private char estRegCod;

    public String getUsuCod() {
        return usuCod;
    }

    public void setUsuCod(String usuCod) {
        this.usuCod = usuCod;
    }

    public String getUsuNom() {
        return usuNom;
    }

    public void setUsuNom(String usuNom) {
        this.usuNom = usuNom;
    }

    public String getUsuApePat() {
        return usuApePat;
    }

    public void setUsuApePat(String usuApePat) {
        this.usuApePat = usuApePat;
    }

    public String getUsuApeMat() {
        return usuApeMat;
    }

    public void setUsuApeMat(String usuApeMat) {
        this.usuApeMat = usuApeMat;
    }

    public String getUsuLog() {
        return usuLog;
    }

    public void setUsuLog(String usuLog) {
        this.usuLog = usuLog;
    }
    
    public String getUsuPas() {
        return usuPas;
    }

    public void setUsuPas(String usuPas) {
        this.usuPas = usuPas;
    }

    public byte[] getUsuHue() {
        return usuHue;
    }

    public void setUsuHue(byte[] usuHue) {
        this.usuHue = usuHue;
    }

    public int getTipUsuCod() {
        return tipUsuCod;
    }

    public void setTipUsuCod(int tipUsuCod) {
        this.tipUsuCod = tipUsuCod;
    }

    public String getTipUsuDet() {
        return tipUsuDet;
    }

    public void setTipUsuDet(String tipUsuDet) {
        this.tipUsuDet = tipUsuDet;
    }

    public Date getUsuFecNac() {
        return usuFecNac;
    }

    public void setUsuFecNac(Date usuFecNac) {
        this.usuFecNac = usuFecNac;
    }

    public int getEstCivCod() {
        return estCivCod;
    }

    public void setEstCivCod(int estCivCod) {
        this.estCivCod = estCivCod;
    }

    public String getEstCivDet() {
        return estCivDet;
    }

    public void setEstCivDet(String estCivDet) {
        this.estCivDet = estCivDet;
    }

    public char getUsuSex() {
        return usuSex;
    }

    public void setUsuSex(char usuSex) {
        this.usuSex = usuSex;
    }

    public char getEstRegCod() {
        return estRegCod;
    }

    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }

    @Override
    public String toString() {
        return "UsuarioDto{" + "usuCod=" + usuCod + ", usuNom=" + usuNom + ", usuApePat=" + usuApePat + ", usuApeMat=" + usuApeMat + ", usuLog=" + usuLog + ", tipUsuCod=" + tipUsuCod + ", tipUsuDet=" + tipUsuDet + ", usuFecNac=" + usuFecNac + ", estCivCod=" + estCivCod + ", estCivDet=" + estCivDet + ", usuSex=" + usuSex + ", estRegCod=" + estRegCod + '}';
    }
}
