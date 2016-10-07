package org.epis.minierp.model;
// Generated 07/10/2016 12:11:50 PM by Hibernate Tools 4.3.1


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * EnP3mCuentaBanco generated by hbm2java
 */
@Entity
@Table(name="en_p3m_cuenta_banco"
    ,catalog="episerp"
)
public class EnP3mCuentaBanco  implements java.io.Serializable {


     private int cueBanCod;
     private EnP3mCuenta enP3mCuenta;
     private TaGzzBanco taGzzBanco;
     private String cueBanNum;
     private char estRegCod;

    public EnP3mCuentaBanco() {
    }

    public EnP3mCuentaBanco(int cueBanCod, EnP3mCuenta enP3mCuenta, TaGzzBanco taGzzBanco, String cueBanNum, char estRegCod) {
       this.cueBanCod = cueBanCod;
       this.enP3mCuenta = enP3mCuenta;
       this.taGzzBanco = taGzzBanco;
       this.cueBanNum = cueBanNum;
       this.estRegCod = estRegCod;
    }
   
     @Id 

    
    @Column(name="CueBanCod", unique=true, nullable=false)
    public int getCueBanCod() {
        return this.cueBanCod;
    }
    
    public void setCueBanCod(int cueBanCod) {
        this.cueBanCod = cueBanCod;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="CueCod", nullable=false)
    public EnP3mCuenta getEnP3mCuenta() {
        return this.enP3mCuenta;
    }
    
    public void setEnP3mCuenta(EnP3mCuenta enP3mCuenta) {
        this.enP3mCuenta = enP3mCuenta;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="BanCod", nullable=false)
    public TaGzzBanco getTaGzzBanco() {
        return this.taGzzBanco;
    }
    
    public void setTaGzzBanco(TaGzzBanco taGzzBanco) {
        this.taGzzBanco = taGzzBanco;
    }

    
    @Column(name="CueBanNum", nullable=false, length=20)
    public String getCueBanNum() {
        return this.cueBanNum;
    }
    
    public void setCueBanNum(String cueBanNum) {
        this.cueBanNum = cueBanNum;
    }

    
    @Column(name="EstRegCod", nullable=false, length=1)
    public char getEstRegCod() {
        return this.estRegCod;
    }
    
    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }




}


