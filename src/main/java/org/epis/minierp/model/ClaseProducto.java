package org.epis.minierp.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="en_p2m_clase_producto")
public class ClaseProducto implements Serializable
{
    @EmbeddedId
    private ClaseProductoId claProId;
    
    @Column(name="ClaProDet")
    private String claProDet;
    
    @Column(name="EstRegCod")
    private String estRegCod; 

    public String getClaProDet() {
        return claProDet;
    }
    
    public void setClaProDet(String claProDet) {
        this.claProDet = claProDet;
    } 
    
    public String getEstRegCod() {
        return estRegCod;
    }
    
    public void setEstRegCod(String estRegCod) {
        this.estRegCod = estRegCod;
    }
    
    @Override
    public String toString() {
        return "ClaseProducto{" + "claProCod=" + claProId + ", claProDet=" + claProDet + ", estRegCod=" + estRegCod + '}';
    }
}
    
    
    