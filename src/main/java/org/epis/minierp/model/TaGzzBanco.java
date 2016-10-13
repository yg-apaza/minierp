package org.epis.minierp.model;
// Generated 13/10/2016 06:03:52 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * TaGzzBanco generated by hbm2java
 */
@Entity
@Table(name="ta_gzz_banco"
    ,catalog="episerp"
)
public class TaGzzBanco  implements java.io.Serializable {


     private Integer banCod;
     private String banDet;
     private char estRegCod;
     private Set enP3mCuentaBancos = new HashSet(0);

    public TaGzzBanco() {
    }

	
    public TaGzzBanco(String banDet, char estRegCod) {
        this.banDet = banDet;
        this.estRegCod = estRegCod;
    }
    public TaGzzBanco(String banDet, char estRegCod, Set enP3mCuentaBancos) {
       this.banDet = banDet;
       this.estRegCod = estRegCod;
       this.enP3mCuentaBancos = enP3mCuentaBancos;
    }
   
     @Id @GeneratedValue(strategy=IDENTITY)

    
    @Column(name="BanCod", unique=true, nullable=false)
    public Integer getBanCod() {
        return this.banCod;
    }
    
    public void setBanCod(Integer banCod) {
        this.banCod = banCod;
    }

    
    @Column(name="BanDet", nullable=false, length=90)
    public String getBanDet() {
        return this.banDet;
    }
    
    public void setBanDet(String banDet) {
        this.banDet = banDet;
    }

    
    @Column(name="EstRegCod", nullable=false, length=1)
    public char getEstRegCod() {
        return this.estRegCod;
    }
    
    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="taGzzBanco")
    public Set getEnP3mCuentaBancos() {
        return this.enP3mCuentaBancos;
    }
    
    public void setEnP3mCuentaBancos(Set enP3mCuentaBancos) {
        this.enP3mCuentaBancos = enP3mCuentaBancos;
    }




}


