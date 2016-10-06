package org.epis.minierp.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "en_p2m_almacen")
public class Almacen implements Serializable {

    @Id
    private String almCod;
    
    @Column(name = "AlmDet")
    private String almDet;
    
    @Column(name = "AlmVolTot")
    private double almVolTot;
    
    @Column(name = "AlmObs")
    private String almObs;
    
    @Column(name = "EstRegCod")
    private char estRegCod;

    public String getAlmCod() {
        return almCod;
    }

    public String getAlmDet() {
        return almDet;
    }

    public double getAlmVolTot() {
        return almVolTot;
    }

    public String getAlmObs() {
        return almObs;
    }

    public char getEstRegCod() {
        return estRegCod;
    }

    public void setAlmCod(String almCod) {
        this.almCod = almCod;
    }

    public void setAlmDet(String almDet) {
        this.almDet = almDet;
    }

    public void setAlmVolTot(double almVolTot) {
        this.almVolTot = almVolTot;
    }

    public void setAlmObs(String almObs) {
        this.almObs = almObs;
    }

    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }

    @Override
    public String toString() {
        return "Almacen{" + "almCod=" + almCod + ", almDet=" + almDet + ", almVolTot=" + almVolTot + ", almObs=" + almObs + ", estRegCod=" + estRegCod + '}';
    }
   
}
