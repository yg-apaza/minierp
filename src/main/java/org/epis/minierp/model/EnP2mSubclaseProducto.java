package org.epis.minierp.model;
// Generated 13/10/2016 06:03:52 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;
import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * EnP2mSubclaseProducto generated by hbm2java
 */
@Entity
@Table(name="en_p2m_subclase_producto"
    ,catalog="episerp"
)
public class EnP2mSubclaseProducto  implements java.io.Serializable {


     private EnP2mSubclaseProductoId id;
     private EnP2mClaseProducto enP2mClaseProducto;
     private String subClaProDet;
     private char estRegCod;
     private Set enP2mProductos = new HashSet(0);

    public EnP2mSubclaseProducto() {
    }

	
    public EnP2mSubclaseProducto(EnP2mSubclaseProductoId id, EnP2mClaseProducto enP2mClaseProducto, String subClaProDet, char estRegCod) {
        this.id = id;
        this.enP2mClaseProducto = enP2mClaseProducto;
        this.subClaProDet = subClaProDet;
        this.estRegCod = estRegCod;
    }
    public EnP2mSubclaseProducto(EnP2mSubclaseProductoId id, EnP2mClaseProducto enP2mClaseProducto, String subClaProDet, char estRegCod, Set enP2mProductos) {
       this.id = id;
       this.enP2mClaseProducto = enP2mClaseProducto;
       this.subClaProDet = subClaProDet;
       this.estRegCod = estRegCod;
       this.enP2mProductos = enP2mProductos;
    }
   
     @EmbeddedId

    
    @AttributeOverrides( {
        @AttributeOverride(name="subClaProCod", column=@Column(name="SubClaProCod", nullable=false, length=2) ), 
        @AttributeOverride(name="claProCod", column=@Column(name="ClaProCod", nullable=false, length=2) ) } )
    public EnP2mSubclaseProductoId getId() {
        return this.id;
    }
    
    public void setId(EnP2mSubclaseProductoId id) {
        this.id = id;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="ClaProCod", nullable=false, insertable=false, updatable=false)
    public EnP2mClaseProducto getEnP2mClaseProducto() {
        return this.enP2mClaseProducto;
    }
    
    public void setEnP2mClaseProducto(EnP2mClaseProducto enP2mClaseProducto) {
        this.enP2mClaseProducto = enP2mClaseProducto;
    }

    
    @Column(name="SubClaProDet", nullable=false, length=90)
    public String getSubClaProDet() {
        return this.subClaProDet;
    }
    
    public void setSubClaProDet(String subClaProDet) {
        this.subClaProDet = subClaProDet;
    }

    
    @Column(name="EstRegCod", nullable=false, length=1)
    public char getEstRegCod() {
        return this.estRegCod;
    }
    
    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="enP2mSubclaseProducto")
    public Set getEnP2mProductos() {
        return this.enP2mProductos;
    }
    
    public void setEnP2mProductos(Set enP2mProductos) {
        this.enP2mProductos = enP2mProductos;
    }




}


