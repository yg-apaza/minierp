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
 * EnP1cDevolucionVentas generated by hbm2java
 */
@Entity
@Table(name="en_p1c_devolucion_ventas"
    ,catalog="episerp"
)
public class EnP1cDevolucionVentas  implements java.io.Serializable {


     private String facVenCabCod;
     private EnP1mFacturaVentaCab enP1mFacturaVentaCab;
     private EnP2mGuiaRemRemitente enP2mGuiaRemRemitente;
     private EnP2mGuiaRemTransportista enP2mGuiaRemTransportista;
     private TaGzzTipoDevolucion taGzzTipoDevolucion;
     private String devVenDet;
     private Date devVenFec;
     private double devVenMon;

    public EnP1cDevolucionVentas() {
    }

	
    public EnP1cDevolucionVentas(EnP1mFacturaVentaCab enP1mFacturaVentaCab, Date devVenFec, double devVenMon) {
        this.enP1mFacturaVentaCab = enP1mFacturaVentaCab;
        this.devVenFec = devVenFec;
        this.devVenMon = devVenMon;
    }
    public EnP1cDevolucionVentas(EnP1mFacturaVentaCab enP1mFacturaVentaCab, EnP2mGuiaRemRemitente enP2mGuiaRemRemitente, EnP2mGuiaRemTransportista enP2mGuiaRemTransportista, TaGzzTipoDevolucion taGzzTipoDevolucion, String devVenDet, Date devVenFec, double devVenMon) {
       this.enP1mFacturaVentaCab = enP1mFacturaVentaCab;
       this.enP2mGuiaRemRemitente = enP2mGuiaRemRemitente;
       this.enP2mGuiaRemTransportista = enP2mGuiaRemTransportista;
       this.taGzzTipoDevolucion = taGzzTipoDevolucion;
       this.devVenDet = devVenDet;
       this.devVenFec = devVenFec;
       this.devVenMon = devVenMon;
    }
   
     @GenericGenerator(name="generator", strategy="foreign", parameters=@Parameter(name="property", value="enP1mFacturaVentaCab"))@Id @GeneratedValue(generator="generator")

    
    @Column(name="FacVenCabCod", unique=true, nullable=false, length=10)
    public String getFacVenCabCod() {
        return this.facVenCabCod;
    }
    
    public void setFacVenCabCod(String facVenCabCod) {
        this.facVenCabCod = facVenCabCod;
    }

@OneToOne(fetch=FetchType.LAZY)@PrimaryKeyJoinColumn
    public EnP1mFacturaVentaCab getEnP1mFacturaVentaCab() {
        return this.enP1mFacturaVentaCab;
    }
    
    public void setEnP1mFacturaVentaCab(EnP1mFacturaVentaCab enP1mFacturaVentaCab) {
        this.enP1mFacturaVentaCab = enP1mFacturaVentaCab;
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

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="TipDevCod")
    public TaGzzTipoDevolucion getTaGzzTipoDevolucion() {
        return this.taGzzTipoDevolucion;
    }
    
    public void setTaGzzTipoDevolucion(TaGzzTipoDevolucion taGzzTipoDevolucion) {
        this.taGzzTipoDevolucion = taGzzTipoDevolucion;
    }

    
    @Column(name="DevVenDet", length=100)
    public String getDevVenDet() {
        return this.devVenDet;
    }
    
    public void setDevVenDet(String devVenDet) {
        this.devVenDet = devVenDet;
    }

    @Temporal(TemporalType.DATE)
    @Column(name="DevVenFec", nullable=false, length=10)
    public Date getDevVenFec() {
        return this.devVenFec;
    }
    
    public void setDevVenFec(Date devVenFec) {
        this.devVenFec = devVenFec;
    }

    
    @Column(name="DevVenMon", nullable=false, precision=10)
    public double getDevVenMon() {
        return this.devVenMon;
    }
    
    public void setDevVenMon(double devVenMon) {
        this.devVenMon = devVenMon;
    }




}

