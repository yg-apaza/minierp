package org.epis.minierp.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ta_gzz_estado_factura")
public class EstadoFactura implements Serializable {
    @Id
    private int estFacCod;
    
    @Column(name="EstFacDet")
    private String estFacDet;
    
    @Column(name="EstRegCod")
    private char estRegCod;

    public int getEstFacCod() {
        return estFacCod;
    }

    public void setEstFacCod(int estFacCod) {
        this.estFacCod = estFacCod;
    }

    public String getEstFacDet() {
        return estFacDet;
    }

    public void setEstFacDet(String estFacDet) {
        this.estFacDet = estFacDet;
    }

    public char getEstRegCod() {
        return estRegCod;
    }

    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }

    @Override
    public String toString() {
        return "EstadoFactura{" + "estFacCod=" + estFacCod + ", estFacDet=" + estFacDet + ", estRegCod=" + estRegCod + '}';
    }
}