package org.epis.minierp.model;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="en_p1m_usuario")
public class Usuario
{
    @Id
    private String usuCod;
    @Column(name="UsuNom")
    private String usuNom;
    @Column(name="UsuApePat")
    private String usuApePat;
    @Column(name="UsuApeMat")
    private String usuApeMat;
    @Column(name="UsuPas")
    private String usuPas;
    @Column(name="TipUsuCod")
    private String tipUsuCod;
    @Column(name="UsuFecNac")
    private Date usuFecNac;
    @Column(name="EstCivCod")
    private String estCivCod;
    @Column(name="EstRegCod")
    private String estRegCod;

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

    public String getUsuPas() {
        return usuPas;
    }

    public void setUsuPas(String usuPas) {
        this.usuPas = usuPas;
    }

    public String getTipUsuCod() {
        return tipUsuCod;
    }

    public void setTipUsuCod(String tipUsuCod) {
        this.tipUsuCod = tipUsuCod;
    }

    public Date getUsuFecNac() {
        return usuFecNac;
    }

    public void setUsuFecNac(Date usuFecNac) {
        this.usuFecNac = usuFecNac;
    }

    public String getEstCivCod() {
        return estCivCod;
    }

    public void setEstCivCod(String estCivCod) {
        this.estCivCod = estCivCod;
    }

    public String getEstRegCod() {
        return estRegCod;
    }

    public void setEstRegCod(String estRegCod) {
        this.estRegCod = estRegCod;
    }

    @Override
    public String toString() {
        return "Usuario{" + "usuCod=" + usuCod + ", usuNom=" + usuNom + ", usuApePat=" + usuApePat + ", usuApeMat=" + usuApeMat + ", usuPas=" + usuPas + ", tipUsuCod=" + tipUsuCod + ", usuFecNac=" + usuFecNac + ", estCivCod=" + estCivCod + ", estRegCod=" + estRegCod + '}';
    }
}