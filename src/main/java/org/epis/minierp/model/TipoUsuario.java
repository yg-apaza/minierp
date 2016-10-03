package org.epis.minierp.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ta_gzz_tipo_usuario")
public class TipoUsuario implements Serializable
{
    @Id
    private int tipUsuCod;
    
    @Column(name="TipUsuDet")
    private String tipUsuDet;
    
    @Column(name="EstRegCod")
    private char estRegCod;

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

    public char getEstRegCod() {
        return estRegCod;
    }

    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }

    @Override
    public String toString() {
        return "TipoUsuario{" + "tipUsuCod=" + tipUsuCod + ", tipUsuDet=" + tipUsuDet + ", estRegCod=" + estRegCod + '}';
    }
}
