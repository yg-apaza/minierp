package org.epis.minierp.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "en_p2m_clase_producto")
public class ClaseProducto implements Serializable {

    @Id
    private String claProCod;
    
    @Column(name = "ClaProDet")
    private String claProDet;
    
    @Column(name = "EstRegCod")
    private char estRegCod;

    public String getClaProCod() {
        return claProCod;
    }

    public String getClaProDet() {
        return claProDet;
    }

    public char getEstRegCod() {
        return estRegCod;
    }

    public void setClaProCod(String claProCod) {
        this.claProCod = claProCod;
    }

    public void setClaProDet(String claProDet) {
        this.claProDet = claProDet;
    }

    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }

    @Override
    public String toString() {
        return "ClaseProducto{" + "claProCod=" + claProCod + ", claProDet=" + claProDet + ", estRegCod=" + estRegCod + '}';
    }

}
