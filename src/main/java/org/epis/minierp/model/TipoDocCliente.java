package org.epis.minierp.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "ta_gzz_tipo_doc_cliente")
public class TipoDocCliente implements Serializable {
    
    @Id
    private int tipDocCliCod;
    
    @Column(name="TipDocCliDet")
    private String tipDocCliDet;
            
    @Column(name="EstRegCod")
    private char estRegCod;

    public int getTipDocCliCod() {
        return tipDocCliCod;
    }

    public String getTipDocCliDet() {
        return tipDocCliDet;
    }

    public char getEstRegCod() {
        return estRegCod;
    }

    public void setTipDocCliCod(int tipDocCliCod) {
        this.tipDocCliCod = tipDocCliCod;
    }

    public void setTipDocCliDet(String tipDocCliDet) {
        this.tipDocCliDet = tipDocCliDet;
    }

    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }

    @Override
    public String toString() {
        return "TipoDocCliente{" + "tipDocCliCod=" + tipDocCliCod + ", tipDocCliDet=" + tipDocCliDet + ", estRegCod=" + estRegCod + '}';
    }

}
