package org.epis.minierp.model;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="en_p1m_usuario")
public class Usuario implements Serializable
{
    @Id
    private String usuCod;
    
    @Column(name="UsuNom")
    private String usuNom;
    
    @Column(name="UsuApePat")
    private String usuApePat;
    
    @Column(name="UsuApeMat")
    private String usuApeMat;
    
    @Column(name="UsuLog")
    private String usuLog;
    
    @Column(name="UsuPas")
    private String usuPas;
    
    @Column(name="UsuHue")
    private byte[] usuHue;
    
    @Column(name="TipUsuCod")
    private int tipUsuCod;
    
    @Column(name="UsuFecNac")
    private Date usuFecNac;
    
    @Column(name="EstCivCod")
    private int estCivCod;
    
    @Column(name="UsuSex")
    private char usuSex;
    
    @Column(name="EstRegCod")
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

    public char getEstRegCod() {
        return estRegCod;
    }

    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }

    public char getUsuSex() {
        return usuSex;
    }

    public void setUsuSex(char usuSex) {
        this.usuSex = usuSex;
    }

    @Override
    public String toString() {
        return "Usuario{" + "usuCod=" + usuCod + ", usuNom=" + usuNom + ", usuApePat=" + usuApePat + ", usuApeMat=" + usuApeMat + ", usuLog=" + usuLog + ", tipUsuCod=" + tipUsuCod + ", usuFecNac=" + usuFecNac + ", estCivCod=" + estCivCod + ", usuSex=" + usuSex + ", estRegCod=" + estRegCod + '}';
    }
}