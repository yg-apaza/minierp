package org.epis.minierp.model;
// Generated 28/10/2016 10:46:20 PM by Hibernate Tools 4.3.1


import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;

/**
 * EnP2cDevolucionCompras generated by hbm2java
 */
@Entity
@Table(name="en_p2c_devolucion_compras"
    ,catalog="episerp"
)
public class EnP2cDevolucionCompras  implements java.io.Serializable {


     private String facComCabCod;
     private EnP2mGuiaRemRemitente enP2mGuiaRemRemitente;
     private EnP2mGuiaRemTransportista enP2mGuiaRemTransportista;
     private EnP4mFacturaCompraCab enP4mFacturaCompraCab;
     private TaGzzTipoDevolucion taGzzTipoDevolucion;
     private String devComDet;
     private Date devComFec;
     private double devComMon;

    public EnP2cDevolucionCompras() {
    }

	
    public EnP2cDevolucionCompras(EnP4mFacturaCompraCab enP4mFacturaCompraCab, Date devComFec, double devComMon) {
        this.enP4mFacturaCompraCab = enP4mFacturaCompraCab;
        this.devComFec = devComFec;
        this.devComMon = devComMon;
    }
    public EnP2cDevolucionCompras(EnP2mGuiaRemRemitente enP2mGuiaRemRemitente, EnP2mGuiaRemTransportista enP2mGuiaRemTransportista, EnP4mFacturaCompraCab enP4mFacturaCompraCab, TaGzzTipoDevolucion taGzzTipoDevolucion, String devComDet, Date devComFec, double devComMon) {
       this.enP2mGuiaRemRemitente = enP2mGuiaRemRemitente;
       this.enP2mGuiaRemTransportista = enP2mGuiaRemTransportista;
       this.enP4mFacturaCompraCab = enP4mFacturaCompraCab;
       this.taGzzTipoDevolucion = taGzzTipoDevolucion;
       this.devComDet = devComDet;
       this.devComFec = devComFec;
       this.devComMon = devComMon;
    }
   
     @GenericGenerator(name="generator", strategy="foreign", parameters=@Parameter(name="property", value="enP4mFacturaCompraCab"))@Id @GeneratedValue(generator="generator")

    
    @Column(name="FacComCabCod", unique=true, nullable=false, length=10)
    public String getFacComCabCod() {
        return this.facComCabCod;
    }
    
    public void setFacComCabCod(String facComCabCod) {
        this.facComCabCod = facComCabCod;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="GuiRemRemNum")
    public EnP2mGuiaRemRemitente getEnP2mGuiaRemRemitente() {
        return this.enP2mGuiaRemRemitente;
    }
    
    public void setEnP2mGuiaRemRemitente(EnP2mGuiaRemRemitente enP2mGuiaRemRemitente) {
        this.enP2mGuiaRemRemitente = enP2mGuiaRemRemitente;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="GuiRemTraNum")
    public EnP2mGuiaRemTransportista getEnP2mGuiaRemTransportista() {
        return this.enP2mGuiaRemTransportista;
    }
    
    public void setEnP2mGuiaRemTransportista(EnP2mGuiaRemTransportista enP2mGuiaRemTransportista) {
        this.enP2mGuiaRemTransportista = enP2mGuiaRemTransportista;
    }

@OneToOne(fetch=FetchType.LAZY)@PrimaryKeyJoinColumn
    public EnP4mFacturaCompraCab getEnP4mFacturaCompraCab() {
        return this.enP4mFacturaCompraCab;
    }
    
    public void setEnP4mFacturaCompraCab(EnP4mFacturaCompraCab enP4mFacturaCompraCab) {
        this.enP4mFacturaCompraCab = enP4mFacturaCompraCab;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="TipDevCod")
    public TaGzzTipoDevolucion getTaGzzTipoDevolucion() {
        return this.taGzzTipoDevolucion;
    }
    
    public void setTaGzzTipoDevolucion(TaGzzTipoDevolucion taGzzTipoDevolucion) {
        this.taGzzTipoDevolucion = taGzzTipoDevolucion;
    }

    
    @Column(name="DevComDet", length=100)
    public String getDevComDet() {
        return this.devComDet;
    }
    
    public void setDevComDet(String devComDet) {
        this.devComDet = devComDet;
    }

    @Temporal(TemporalType.DATE)
    @Column(name="DevComFec", nullable=false, length=10)
    public Date getDevComFec() {
        return this.devComFec;
    }
    
    public void setDevComFec(Date devComFec) {
        this.devComFec = devComFec;
    }

    
    @Column(name="DevComMon", nullable=false, precision=10)
    public double getDevComMon() {
        return this.devComMon;
    }
    
    public void setDevComMon(double devComMon) {
        this.devComMon = devComMon;
    }




}

