package org.epis.minierp.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ta_gzz_metodo_pago_factura")
public class Moneda implements Serializable {
    @Id
    private int monCod;
    
    @Column(name="MonDet")
    private String monDet;
    
    @Column(name="EstRegCod")
    private char estRegCod;

    public int getMonCod() {
        return monCod;
    }

    public void setMonCod(int monCod) {
        this.monCod = monCod;
    }

    public String getMonDet() {
        return monDet;
    }

    public void setMonDet(String monDet) {
        this.monDet = monDet;
    }

    public char getEstRegCod() {
        return estRegCod;
    }

    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }

    @Override
    public String toString() {
        return "Moneda{" + "monCod=" + monCod + ", monDet=" + monDet + ", estRegCod=" + estRegCod + '}';
    }
}