package org.epis.minierp.model;
// Generated 07/10/2016 12:11:50 PM by Hibernate Tools 4.3.1


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
 * TaGzzTipoDocUsuario generated by hbm2java
 */
@Entity
@Table(name="ta_gzz_tipo_doc_usuario"
    ,catalog="episerp"
)
public class TaGzzTipoDocUsuario  implements java.io.Serializable {


     private Integer tipDocUsuCod;
     private String tipDocUsuDet;
     private char estRegCod;
     private Set enP1mDocumentoUsuarios = new HashSet(0);

    public TaGzzTipoDocUsuario() {
    }

	
    public TaGzzTipoDocUsuario(String tipDocUsuDet, char estRegCod) {
        this.tipDocUsuDet = tipDocUsuDet;
        this.estRegCod = estRegCod;
    }
    public TaGzzTipoDocUsuario(String tipDocUsuDet, char estRegCod, Set enP1mDocumentoUsuarios) {
       this.tipDocUsuDet = tipDocUsuDet;
       this.estRegCod = estRegCod;
       this.enP1mDocumentoUsuarios = enP1mDocumentoUsuarios;
    }
   
     @Id @GeneratedValue(strategy=IDENTITY)

    
    @Column(name="TipDocUsuCod", unique=true, nullable=false)
    public Integer getTipDocUsuCod() {
        return this.tipDocUsuCod;
    }
    
    public void setTipDocUsuCod(Integer tipDocUsuCod) {
        this.tipDocUsuCod = tipDocUsuCod;
    }

    
    @Column(name="TipDocUsuDet", nullable=false, length=90)
    public String getTipDocUsuDet() {
        return this.tipDocUsuDet;
    }
    
    public void setTipDocUsuDet(String tipDocUsuDet) {
        this.tipDocUsuDet = tipDocUsuDet;
    }

    
    @Column(name="EstRegCod", nullable=false, length=1)
    public char getEstRegCod() {
        return this.estRegCod;
    }
    
    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="taGzzTipoDocUsuario")
    public Set getEnP1mDocumentoUsuarios() {
        return this.enP1mDocumentoUsuarios;
    }
    
    public void setEnP1mDocumentoUsuarios(Set enP1mDocumentoUsuarios) {
        this.enP1mDocumentoUsuarios = enP1mDocumentoUsuarios;
    }




}


