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
 * TaGzzTipoFacturaBoleta generated by hbm2java
 */
@Entity
@Table(name="ta_gzz_tipo_factura_boleta"
    ,catalog="episerp"
)
public class TaGzzTipoFacturaBoleta  implements java.io.Serializable {


     private Integer tipFacObolCod;
     private String tipFacObolDet;
     private Character estRegCod;
     private Set enP1mFacturaVentaCabs = new HashSet(0);
     private Set enP4mFacturaCompraCabs = new HashSet(0);

    public TaGzzTipoFacturaBoleta() {
    }

	
    public TaGzzTipoFacturaBoleta(String tipFacObolDet) {
        this.tipFacObolDet = tipFacObolDet;
    }
    public TaGzzTipoFacturaBoleta(String tipFacObolDet, Character estRegCod, Set enP1mFacturaVentaCabs, Set enP4mFacturaCompraCabs) {
       this.tipFacObolDet = tipFacObolDet;
       this.estRegCod = estRegCod;
       this.enP1mFacturaVentaCabs = enP1mFacturaVentaCabs;
       this.enP4mFacturaCompraCabs = enP4mFacturaCompraCabs;
    }
   
     @Id @GeneratedValue(strategy=IDENTITY)

    
    @Column(name="TipFacOBolCod", unique=true, nullable=false)
    public Integer getTipFacObolCod() {
        return this.tipFacObolCod;
    }
    
    public void setTipFacObolCod(Integer tipFacObolCod) {
        this.tipFacObolCod = tipFacObolCod;
    }

    
    @Column(name="TipFacOBolDet", nullable=false, length=90)
    public String getTipFacObolDet() {
        return this.tipFacObolDet;
    }
    
    public void setTipFacObolDet(String tipFacObolDet) {
        this.tipFacObolDet = tipFacObolDet;
    }

    
    @Column(name="EstRegCod", length=1)
    public Character getEstRegCod() {
        return this.estRegCod;
    }
    
    public void setEstRegCod(Character estRegCod) {
        this.estRegCod = estRegCod;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="taGzzTipoFacturaBoleta")
    public Set getEnP1mFacturaVentaCabs() {
        return this.enP1mFacturaVentaCabs;
    }
    
    public void setEnP1mFacturaVentaCabs(Set enP1mFacturaVentaCabs) {
        this.enP1mFacturaVentaCabs = enP1mFacturaVentaCabs;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="taGzzTipoFacturaBoleta")
    public Set getEnP4mFacturaCompraCabs() {
        return this.enP4mFacturaCompraCabs;
    }
    
    public void setEnP4mFacturaCompraCabs(Set enP4mFacturaCompraCabs) {
        this.enP4mFacturaCompraCabs = enP4mFacturaCompraCabs;
    }




}

