package org.epis.minierp.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "en_p2m_subclase_producto")
public class SubClaseProducto implements Serializable {

    @Id
    private String claProCod;
    
    @Id
    private String subClaProCod;
    
    @Column(name = "SubClaProDet")
    private String subClaProDet;
    
    @Column(name = "EstRegCod")
    private char estRegCod;

    public String getClaProCod() {
        return claProCod;
    }

    public String getSubClaProCod() {
        return subClaProCod;
    }

    public String getSubClaProDet() {
        return subClaProDet;
    }

    public char getEstRegCod() {
        return estRegCod;
    }

    public void setClaProCod(String claProCod) {
        this.claProCod = claProCod;
    }

    public void setSubClaProCod(String subClaProCod) {
        this.subClaProCod = subClaProCod;
    }

    public void setSubClaProDet(String subClaProDet) {
        this.subClaProDet = subClaProDet;
    }

    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }

    @Override
    public String toString() {
        return "SubClaseProducto{" + "claProCod=" + claProCod + ", subClaProCod=" + subClaProCod + ", subClaProDet=" + subClaProDet + ", estRegCod=" + estRegCod + '}';
    }

}
