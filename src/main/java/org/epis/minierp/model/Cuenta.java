package org.epis.minierp.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="en_p3m_cuenta")
public class Cuenta implements Serializable
{
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    public int cueCod;
    
    @Column(name="CuePad")
    public Integer cuePad;
    
    @Column(name="CueNiv")
    public int cueNiv;
    
    @Column(name="CueNum")
    public String cueNum;
    
    @Column(name="CueDes")
    public String cueDes;
    
    @Column(name="EstRegCod")
    public char estRegCod;

    public int getCueCod() {
        return cueCod;
    }

    public void setCueCod(Integer cueCod) {
        this.cueCod = cueCod;
    }

    public int getCuePad() {
        return cuePad;
    }

    public void setCuePad(int cuePad) {
        this.cuePad = cuePad;
    }

    public int getCueNiv() {
        return cueNiv;
    }

    public void setCueNiv(int cueNiv) {
        this.cueNiv = cueNiv;
    }

    public String getCueNum() {
        return cueNum;
    }

    public void setCueNum(String cueNum) {
        this.cueNum = cueNum;
    }

    public String getCueDes() {
        return cueDes;
    }

    public void setCueDes(String cueDes) {
        this.cueDes = cueDes;
    }

    public char getEstRegCod() {
        return estRegCod;
    }

    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }

    @Override
    public String toString() {
        return "Cuenta{" + "cueCod=" + cueCod + ", cuePad=" + cuePad + ", cueNiv=" + cueNiv + ", cueNum=" + cueNum + ", cueDes=" + cueDes + ", estRegCod=" + estRegCod + '}';
    }
}
