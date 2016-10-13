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
 * TaGzzUnidadMed generated by hbm2java
 */
@Entity
@Table(name="ta_gzz_unidad_med"
    ,catalog="episerp"
)
public class TaGzzUnidadMed  implements java.io.Serializable {


     private Integer uniMedCod;
     private String uniMedDet;
     private char estRegCod;
     private Set enP2mProductos = new HashSet(0);

    public TaGzzUnidadMed() {
    }

	
    public TaGzzUnidadMed(String uniMedDet, char estRegCod) {
        this.uniMedDet = uniMedDet;
        this.estRegCod = estRegCod;
    }
    public TaGzzUnidadMed(String uniMedDet, char estRegCod, Set enP2mProductos) {
       this.uniMedDet = uniMedDet;
       this.estRegCod = estRegCod;
       this.enP2mProductos = enP2mProductos;
    }
   
     @Id @GeneratedValue(strategy=IDENTITY)

    
    @Column(name="UniMedCod", unique=true, nullable=false)
    public Integer getUniMedCod() {
        return this.uniMedCod;
    }
    
    public void setUniMedCod(Integer uniMedCod) {
        this.uniMedCod = uniMedCod;
    }

    
    @Column(name="UniMedDet", nullable=false, length=90)
    public String getUniMedDet() {
        return this.uniMedDet;
    }
    
    public void setUniMedDet(String uniMedDet) {
        this.uniMedDet = uniMedDet;
    }

    
    @Column(name="EstRegCod", nullable=false, length=1)
    public char getEstRegCod() {
        return this.estRegCod;
    }
    
    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="taGzzUnidadMed")
    public Set getEnP2mProductos() {
        return this.enP2mProductos;
    }
    
    public void setEnP2mProductos(Set enP2mProductos) {
        this.enP2mProductos = enP2mProductos;
    }




}


