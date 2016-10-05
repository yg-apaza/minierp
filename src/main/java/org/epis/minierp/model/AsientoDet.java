package org.epis.minierp.model;

import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="en_p3t_asiento_det"
    ,catalog="episerp"
)
public class AsientoDet  implements java.io.Serializable {


     private AsientoDetId id;
     private int cueCod;
     private boolean asiDetDebHab;
     private double asiDetMon;

    public AsientoDet() {
    }

    public AsientoDet(AsientoDetId id, int cueCod, boolean asiDetDebHab, double asiDetMon) {
       this.id = id;
       this.cueCod = cueCod;
       this.asiDetDebHab = asiDetDebHab;
       this.asiDetMon = asiDetMon;
    }
   
     @EmbeddedId

    
    @AttributeOverrides( {
        @AttributeOverride(name="asiDetCod", column=@Column(name="AsiDetCod", nullable=false) ), 
        @AttributeOverride(name="asiCabCod", column=@Column(name="AsiCabCod", nullable=false) ), 
        @AttributeOverride(name="libDiaCod", column=@Column(name="LibDiaCod", nullable=false, length=10) ) } )
    public AsientoDetId getId() {
        return this.id;
    }
    
    public void setId(AsientoDetId id) {
        this.id = id;
    }

    
    @Column(name="CueCod", nullable=false)
    public int getCueCod() {
        return this.cueCod;
    }
    
    public void setCueCod(int cueCod) {
        this.cueCod = cueCod;
    }

    
    @Column(name="AsiDetDebHab", nullable=false)
    public boolean isAsiDetDebHab() {
        return this.asiDetDebHab;
    }
    
    public void setAsiDetDebHab(boolean asiDetDebHab) {
        this.asiDetDebHab = asiDetDebHab;
    }

    
    @Column(name="AsiDetMon", nullable=false, precision=10)
    public double getAsiDetMon() {
        return this.asiDetMon;
    }
    
    public void setAsiDetMon(double asiDetMon) {
        this.asiDetMon = asiDetMon;
    }




}
