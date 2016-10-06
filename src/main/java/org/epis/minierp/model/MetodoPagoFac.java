package org.epis.minierp.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ta_gzz_metodo_pago_factura")
public class MetodoPagoFac implements Serializable
{
    @Id
    private int metPagCod;
    
    @Column(name="MetPagDet")
    private String metPagDet;
    
    @Column(name="EstRegCod")
    private char estRegCod;

    public int getMetPagCod() {
        return metPagCod;
    }

    public String getMetPagDet() {
        return metPagDet;
    }

    public char getEstRegCod() {
        return estRegCod;
    }

    public void setMetPagCod(int metPagCod) {
        this.metPagCod = metPagCod;
    }

    public void setMetPagDet(String metPagDet) {
        this.metPagDet = metPagDet;
    }

    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }

    @Override
    public String toString() {
        return "MetodoPagoFac{" + "metPagCod=" + metPagCod + ", metPagDet=" + metPagDet + ", estRegCod=" + estRegCod + '}';
    }
    
}
