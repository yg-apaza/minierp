package org.epis.minierp.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ta_gzz_tipo_pago_factura")
public class TipoPagoFactura implements Serializable {
    @Id
    private int tipPagCod;
    
    @Column(name="TipPagDet")
    private String tipPagDet;
    
    @Column(name="EstRegCod")
    private char estRegCod;

    public int getTipPagCod() {
        return tipPagCod;
    }

    public void setTipPagCod(int tipPagCod) {
        this.tipPagCod = tipPagCod;
    }

    public String getTipPagDet() {
        return tipPagDet;
    }

    public void setTipPagDet(String tipPagDet) {
        this.tipPagDet = tipPagDet;
    }

    public char getEstRegCod() {
        return estRegCod;
    }

    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }
    
    @Override
    public String toString() {
        return "TipoPagoFactura{" + "tipPagCod=" + tipPagCod + ", tipPagDet=" + tipPagDet + ", estRegCod=" + estRegCod + '}';
    }
}