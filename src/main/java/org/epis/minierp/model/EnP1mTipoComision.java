package org.epis.minierp.model;
// Generated 28/10/2016 10:46:20 PM by Hibernate Tools 4.3.1


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
 * EnP1mTipoComision generated by hbm2java
 */
@Entity
@Table(name="en_p1m_tipo_comision"
    ,catalog="episerp"
)
public class EnP1mTipoComision  implements java.io.Serializable {


     private Integer tipComCod;
     private String tipComDet;
     private Integer tipComVal;
     private Character estRegCod;
     private Set enP1mFacturaVentaCabs = new HashSet(0);

    public EnP1mTipoComision() {
    }

    public EnP1mTipoComision(String tipComDet, Integer tipComVal, Character estRegCod, Set enP1mFacturaVentaCabs) {
       this.tipComDet = tipComDet;
       this.tipComVal = tipComVal;
       this.estRegCod = estRegCod;
       this.enP1mFacturaVentaCabs = enP1mFacturaVentaCabs;
    }
   
     @Id @GeneratedValue(strategy=IDENTITY)

    
    @Column(name="TipComCod", unique=true, nullable=false)
    public Integer getTipComCod() {
        return this.tipComCod;
    }
    
    public void setTipComCod(Integer tipComCod) {
        this.tipComCod = tipComCod;
    }

    
    @Column(name="TipComDet", length=90)
    public String getTipComDet() {
        return this.tipComDet;
    }
    
    public void setTipComDet(String tipComDet) {
        this.tipComDet = tipComDet;
    }

    
    @Column(name="TipComVal")
    public Integer getTipComVal() {
        return this.tipComVal;
    }
    
    public void setTipComVal(Integer tipComVal) {
        this.tipComVal = tipComVal;
    }

    
    @Column(name="EstRegCod", length=1)
    public Character getEstRegCod() {
        return this.estRegCod;
    }
    
    public void setEstRegCod(Character estRegCod) {
        this.estRegCod = estRegCod;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="enP1mTipoComision")
    public Set getEnP1mFacturaVentaCabs() {
        return this.enP1mFacturaVentaCabs;
    }
    
    public void setEnP1mFacturaVentaCabs(Set enP1mFacturaVentaCabs) {
        this.enP1mFacturaVentaCabs = enP1mFacturaVentaCabs;
    }




}

