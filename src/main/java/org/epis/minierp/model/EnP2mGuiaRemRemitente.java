package org.epis.minierp.model;
// Generated 28/10/2016 10:46:20 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * EnP2mGuiaRemRemitente generated by hbm2java
 */
@Entity
@Table(name="en_p2m_guia_rem_remitente"
    ,catalog="episerp"
)
public class EnP2mGuiaRemRemitente  implements java.io.Serializable {


     private String guiRemRemNum;
     private EnP1mEmpresa enP1mEmpresa;
     private TaGzzMotivoTraslado taGzzMotivoTraslado;
     private TaGzzTipoDestinatario taGzzTipoDestinatario;
     private String guiRemRemDen;
     private String guiRemRemDes;
     private char estRegCod;
     private Set enP1cDevolucionVentases = new HashSet(0);
     private Set enP1mFacturaVentaCabs = new HashSet(0);
     private Set enP4mFacturaCompraCabs = new HashSet(0);
     private Set enP2cDevolucionComprases = new HashSet(0);

    public EnP2mGuiaRemRemitente() {
    }

	
    public EnP2mGuiaRemRemitente(String guiRemRemNum, EnP1mEmpresa enP1mEmpresa, TaGzzMotivoTraslado taGzzMotivoTraslado, TaGzzTipoDestinatario taGzzTipoDestinatario, String guiRemRemDen, String guiRemRemDes, char estRegCod) {
        this.guiRemRemNum = guiRemRemNum;
        this.enP1mEmpresa = enP1mEmpresa;
        this.taGzzMotivoTraslado = taGzzMotivoTraslado;
        this.taGzzTipoDestinatario = taGzzTipoDestinatario;
        this.guiRemRemDen = guiRemRemDen;
        this.guiRemRemDes = guiRemRemDes;
        this.estRegCod = estRegCod;
    }
    public EnP2mGuiaRemRemitente(String guiRemRemNum, EnP1mEmpresa enP1mEmpresa, TaGzzMotivoTraslado taGzzMotivoTraslado, TaGzzTipoDestinatario taGzzTipoDestinatario, String guiRemRemDen, String guiRemRemDes, char estRegCod, Set enP1cDevolucionVentases, Set enP1mFacturaVentaCabs, Set enP4mFacturaCompraCabs, Set enP2cDevolucionComprases) {
       this.guiRemRemNum = guiRemRemNum;
       this.enP1mEmpresa = enP1mEmpresa;
       this.taGzzMotivoTraslado = taGzzMotivoTraslado;
       this.taGzzTipoDestinatario = taGzzTipoDestinatario;
       this.guiRemRemDen = guiRemRemDen;
       this.guiRemRemDes = guiRemRemDes;
       this.estRegCod = estRegCod;
       this.enP1cDevolucionVentases = enP1cDevolucionVentases;
       this.enP1mFacturaVentaCabs = enP1mFacturaVentaCabs;
       this.enP4mFacturaCompraCabs = enP4mFacturaCompraCabs;
       this.enP2cDevolucionComprases = enP2cDevolucionComprases;
    }
   
     @Id 

    
    @Column(name="GuiRemRemNum", unique=true, nullable=false, length=15)
    public String getGuiRemRemNum() {
        return this.guiRemRemNum;
    }
    
    public void setGuiRemRemNum(String guiRemRemNum) {
        this.guiRemRemNum = guiRemRemNum;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="EmpCod", nullable=false)
    public EnP1mEmpresa getEnP1mEmpresa() {
        return this.enP1mEmpresa;
    }
    
    public void setEnP1mEmpresa(EnP1mEmpresa enP1mEmpresa) {
        this.enP1mEmpresa = enP1mEmpresa;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="MotTraCod", nullable=false)
    public TaGzzMotivoTraslado getTaGzzMotivoTraslado() {
        return this.taGzzMotivoTraslado;
    }
    
    public void setTaGzzMotivoTraslado(TaGzzMotivoTraslado taGzzMotivoTraslado) {
        this.taGzzMotivoTraslado = taGzzMotivoTraslado;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="TipDesCod", nullable=false)
    public TaGzzTipoDestinatario getTaGzzTipoDestinatario() {
        return this.taGzzTipoDestinatario;
    }
    
    public void setTaGzzTipoDestinatario(TaGzzTipoDestinatario taGzzTipoDestinatario) {
        this.taGzzTipoDestinatario = taGzzTipoDestinatario;
    }

    
    @Column(name="GuiRemRemDen", nullable=false, length=50)
    public String getGuiRemRemDen() {
        return this.guiRemRemDen;
    }
    
    public void setGuiRemRemDen(String guiRemRemDen) {
        this.guiRemRemDen = guiRemRemDen;
    }

    
    @Column(name="GuiRemRemDes", nullable=false, length=15)
    public String getGuiRemRemDes() {
        return this.guiRemRemDes;
    }
    
    public void setGuiRemRemDes(String guiRemRemDes) {
        this.guiRemRemDes = guiRemRemDes;
    }

    
    @Column(name="EstRegCod", nullable=false, length=1)
    public char getEstRegCod() {
        return this.estRegCod;
    }
    
    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="enP2mGuiaRemRemitente")
    public Set getEnP1cDevolucionVentases() {
        return this.enP1cDevolucionVentases;
    }
    
    public void setEnP1cDevolucionVentases(Set enP1cDevolucionVentases) {
        this.enP1cDevolucionVentases = enP1cDevolucionVentases;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="enP2mGuiaRemRemitente")
    public Set getEnP1mFacturaVentaCabs() {
        return this.enP1mFacturaVentaCabs;
    }
    
    public void setEnP1mFacturaVentaCabs(Set enP1mFacturaVentaCabs) {
        this.enP1mFacturaVentaCabs = enP1mFacturaVentaCabs;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="enP2mGuiaRemRemitente")
    public Set getEnP4mFacturaCompraCabs() {
        return this.enP4mFacturaCompraCabs;
    }
    
    public void setEnP4mFacturaCompraCabs(Set enP4mFacturaCompraCabs) {
        this.enP4mFacturaCompraCabs = enP4mFacturaCompraCabs;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="enP2mGuiaRemRemitente")
    public Set getEnP2cDevolucionComprases() {
        return this.enP2cDevolucionComprases;
    }
    
    public void setEnP2cDevolucionComprases(Set enP2cDevolucionComprases) {
        this.enP2cDevolucionComprases = enP2cDevolucionComprases;
    }




}


