package org.epis.minierp.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "ta_gzz_tipo_doc_usuario")
public class TipoDocUsuario implements Serializable {
    
    @Id
    private int tipDocUsuCod;
    
    @Column(name="TipDocUsuDet")
    private String tipDocUsuDet;
            
    @Column(name="EstRegCod")
    private char estRegCod;

    public int getTipDocUsuCod() {
        return tipDocUsuCod;
    }

    public String getTipDocUsuDet() {
        return tipDocUsuDet;
    }

    public char getEstRegCod() {
        return estRegCod;
    }

    public void setTipDocUsuCod(int tipDocUsuCod) {
        this.tipDocUsuCod = tipDocUsuCod;
    }

    public void setTipDocUsuDet(String tipDocUsuDet) {
        this.tipDocUsuDet = tipDocUsuDet;
    }

    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }

    @Override
    public String toString() {
        return "TipoDocUsuario{" + "tipDocUsuCod=" + tipDocUsuCod + ", tipDocUsuDet=" + tipDocUsuDet + ", estRegCod=" + estRegCod + '}';
    }

}
