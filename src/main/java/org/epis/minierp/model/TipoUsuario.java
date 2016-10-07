package org.epis.minierp.model;
// Generated 07/10/2016 11:13:21 AM by Hibernate Tools 4.3.1


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * TipoUsuario generated by hbm2java
 */
@Entity
@Table(name="ta_gzz_tipo_usuario"
)
public class TipoUsuario  implements java.io.Serializable {


     private int tipUsuCod;
     private char estRegCod;
     private String tipUsuDet;

    public TipoUsuario() {
    }

	
    public TipoUsuario(int tipUsuCod) {
        this.tipUsuCod = tipUsuCod;
    }
    public TipoUsuario(int tipUsuCod, char estRegCod, String tipUsuDet) {
       this.tipUsuCod = tipUsuCod;
       this.estRegCod = estRegCod;
       this.tipUsuDet = tipUsuDet;
    }
   
     @Id 

    
    @Column(name="tipUsuCod", nullable=false)
    public int getTipUsuCod() {
        return this.tipUsuCod;
    }
    
    public void setTipUsuCod(int tipUsuCod) {
        this.tipUsuCod = tipUsuCod;
    }

    
    @Column(name="EstRegCod")
    public char getEstRegCod() {
        return this.estRegCod;
    }
    
    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }

    
    @Column(name="TipUsuDet")
    public String getTipUsuDet() {
        return this.tipUsuDet;
    }
    
    public void setTipUsuDet(String tipUsuDet) {
        this.tipUsuDet = tipUsuDet;
    }




}


