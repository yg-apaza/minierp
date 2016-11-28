package org.epis.minierp.model;
// Generated 27/11/2016 05:44:55 PM by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * EnP1mFacturaVentaCab generated by hbm2java
 */
public class EnP1mFacturaVentaCab  implements java.io.Serializable {


     private String facVenCabCod;
     private EnP1mCatalogoRuta enP1mCatalogoRuta;
     private EnP1mCliente enP1mCliente;
     private EnP1mUsuario enP1mUsuario;
     private EnP2mGuiaRemRemitente enP2mGuiaRemRemitente;
     private EnP2mGuiaRemTransportista enP2mGuiaRemTransportista;
     private TaGzzEstadoFactura taGzzEstadoFactura;
     private TaGzzMetodoPagoFactura taGzzMetodoPagoFactura;
     private TaGzzMoneda taGzzMoneda;
     private TaGzzTipoDescuento taGzzTipoDescuento;
     private TaGzzTipoPagoFactura taGzzTipoPagoFactura;
     private Character facVenCabModVen;
     private Date facVenCabFecEmi;
     private Date facVenCabFecVen;
     private double facVenCabTot;
     private Integer facVenPorDes;
     private double facVenCabSubTot;
     private int facVenCabIgv;
     private String facVenCabObs;
     private char estRegCod;
     private EnP1mPagosCuotasCab enP1mPagosCuotasCab;
     private Set enP1cDevolucionVentasesForDevVenNewFac = new HashSet(0);
     private EnP1cDevolucionVentas enP1cDevolucionVentasByFacVenCabCod;
     private Set enP1tFacturaVentaDets = new HashSet(0);
     private Set enP1cPreventaRealizadases = new HashSet(0);

    public EnP1mFacturaVentaCab() {
    }

	
    public EnP1mFacturaVentaCab(String facVenCabCod, EnP1mCliente enP1mCliente, EnP1mUsuario enP1mUsuario, TaGzzEstadoFactura taGzzEstadoFactura, TaGzzMetodoPagoFactura taGzzMetodoPagoFactura, TaGzzMoneda taGzzMoneda, TaGzzTipoPagoFactura taGzzTipoPagoFactura, Date facVenCabFecEmi, double facVenCabTot, double facVenCabSubTot, int facVenCabIgv, String facVenCabObs, char estRegCod) {
        this.facVenCabCod = facVenCabCod;
        this.enP1mCliente = enP1mCliente;
        this.enP1mUsuario = enP1mUsuario;
        this.taGzzEstadoFactura = taGzzEstadoFactura;
        this.taGzzMetodoPagoFactura = taGzzMetodoPagoFactura;
        this.taGzzMoneda = taGzzMoneda;
        this.taGzzTipoPagoFactura = taGzzTipoPagoFactura;
        this.facVenCabFecEmi = facVenCabFecEmi;
        this.facVenCabTot = facVenCabTot;
        this.facVenCabSubTot = facVenCabSubTot;
        this.facVenCabIgv = facVenCabIgv;
        this.facVenCabObs = facVenCabObs;
        this.estRegCod = estRegCod;
    }
    public EnP1mFacturaVentaCab(String facVenCabCod, EnP1mCatalogoRuta enP1mCatalogoRuta, EnP1mCliente enP1mCliente, EnP1mUsuario enP1mUsuario, EnP2mGuiaRemRemitente enP2mGuiaRemRemitente, EnP2mGuiaRemTransportista enP2mGuiaRemTransportista, TaGzzEstadoFactura taGzzEstadoFactura, TaGzzMetodoPagoFactura taGzzMetodoPagoFactura, TaGzzMoneda taGzzMoneda, TaGzzTipoDescuento taGzzTipoDescuento, TaGzzTipoPagoFactura taGzzTipoPagoFactura, Character facVenCabModVen, Date facVenCabFecEmi, Date facVenCabFecVen, double facVenCabTot, Integer facVenPorDes, double facVenCabSubTot, int facVenCabIgv, String facVenCabObs, char estRegCod, EnP1mPagosCuotasCab enP1mPagosCuotasCab, Set enP1cDevolucionVentasesForDevVenNewFac, EnP1cDevolucionVentas enP1cDevolucionVentasByFacVenCabCod, Set enP1tFacturaVentaDets, Set enP1cPreventaRealizadases) {
       this.facVenCabCod = facVenCabCod;
       this.enP1mCatalogoRuta = enP1mCatalogoRuta;
       this.enP1mCliente = enP1mCliente;
       this.enP1mUsuario = enP1mUsuario;
       this.enP2mGuiaRemRemitente = enP2mGuiaRemRemitente;
       this.enP2mGuiaRemTransportista = enP2mGuiaRemTransportista;
       this.taGzzEstadoFactura = taGzzEstadoFactura;
       this.taGzzMetodoPagoFactura = taGzzMetodoPagoFactura;
       this.taGzzMoneda = taGzzMoneda;
       this.taGzzTipoDescuento = taGzzTipoDescuento;
       this.taGzzTipoPagoFactura = taGzzTipoPagoFactura;
       this.facVenCabModVen = facVenCabModVen;
       this.facVenCabFecEmi = facVenCabFecEmi;
       this.facVenCabFecVen = facVenCabFecVen;
       this.facVenCabTot = facVenCabTot;
       this.facVenPorDes = facVenPorDes;
       this.facVenCabSubTot = facVenCabSubTot;
       this.facVenCabIgv = facVenCabIgv;
       this.facVenCabObs = facVenCabObs;
       this.estRegCod = estRegCod;
       this.enP1mPagosCuotasCab = enP1mPagosCuotasCab;
       this.enP1cDevolucionVentasesForDevVenNewFac = enP1cDevolucionVentasesForDevVenNewFac;
       this.enP1cDevolucionVentasByFacVenCabCod = enP1cDevolucionVentasByFacVenCabCod;
       this.enP1tFacturaVentaDets = enP1tFacturaVentaDets;
       this.enP1cPreventaRealizadases = enP1cPreventaRealizadases;
    }
   
    public String getFacVenCabCod() {
        return this.facVenCabCod;
    }
    
    public void setFacVenCabCod(String facVenCabCod) {
        this.facVenCabCod = facVenCabCod;
    }
    public EnP1mCatalogoRuta getEnP1mCatalogoRuta() {
        return this.enP1mCatalogoRuta;
    }
    
    public void setEnP1mCatalogoRuta(EnP1mCatalogoRuta enP1mCatalogoRuta) {
        this.enP1mCatalogoRuta = enP1mCatalogoRuta;
    }
    public EnP1mCliente getEnP1mCliente() {
        return this.enP1mCliente;
    }
    
    public void setEnP1mCliente(EnP1mCliente enP1mCliente) {
        this.enP1mCliente = enP1mCliente;
    }
    public EnP1mUsuario getEnP1mUsuario() {
        return this.enP1mUsuario;
    }
    
    public void setEnP1mUsuario(EnP1mUsuario enP1mUsuario) {
        this.enP1mUsuario = enP1mUsuario;
    }
    public EnP2mGuiaRemRemitente getEnP2mGuiaRemRemitente() {
        return this.enP2mGuiaRemRemitente;
    }
    
    public void setEnP2mGuiaRemRemitente(EnP2mGuiaRemRemitente enP2mGuiaRemRemitente) {
        this.enP2mGuiaRemRemitente = enP2mGuiaRemRemitente;
    }
    public EnP2mGuiaRemTransportista getEnP2mGuiaRemTransportista() {
        return this.enP2mGuiaRemTransportista;
    }
    
    public void setEnP2mGuiaRemTransportista(EnP2mGuiaRemTransportista enP2mGuiaRemTransportista) {
        this.enP2mGuiaRemTransportista = enP2mGuiaRemTransportista;
    }
    public TaGzzEstadoFactura getTaGzzEstadoFactura() {
        return this.taGzzEstadoFactura;
    }
    
    public void setTaGzzEstadoFactura(TaGzzEstadoFactura taGzzEstadoFactura) {
        this.taGzzEstadoFactura = taGzzEstadoFactura;
    }
    public TaGzzMetodoPagoFactura getTaGzzMetodoPagoFactura() {
        return this.taGzzMetodoPagoFactura;
    }
    
    public void setTaGzzMetodoPagoFactura(TaGzzMetodoPagoFactura taGzzMetodoPagoFactura) {
        this.taGzzMetodoPagoFactura = taGzzMetodoPagoFactura;
    }
    public TaGzzMoneda getTaGzzMoneda() {
        return this.taGzzMoneda;
    }
    
    public void setTaGzzMoneda(TaGzzMoneda taGzzMoneda) {
        this.taGzzMoneda = taGzzMoneda;
    }
    public TaGzzTipoDescuento getTaGzzTipoDescuento() {
        return this.taGzzTipoDescuento;
    }
    
    public void setTaGzzTipoDescuento(TaGzzTipoDescuento taGzzTipoDescuento) {
        this.taGzzTipoDescuento = taGzzTipoDescuento;
    }
    public TaGzzTipoPagoFactura getTaGzzTipoPagoFactura() {
        return this.taGzzTipoPagoFactura;
    }
    
    public void setTaGzzTipoPagoFactura(TaGzzTipoPagoFactura taGzzTipoPagoFactura) {
        this.taGzzTipoPagoFactura = taGzzTipoPagoFactura;
    }
    public Character getFacVenCabModVen() {
        return this.facVenCabModVen;
    }
    
    public void setFacVenCabModVen(Character facVenCabModVen) {
        this.facVenCabModVen = facVenCabModVen;
    }
    public Date getFacVenCabFecEmi() {
        return this.facVenCabFecEmi;
    }
    
    public void setFacVenCabFecEmi(Date facVenCabFecEmi) {
        this.facVenCabFecEmi = facVenCabFecEmi;
    }
    public Date getFacVenCabFecVen() {
        return this.facVenCabFecVen;
    }
    
    public void setFacVenCabFecVen(Date facVenCabFecVen) {
        this.facVenCabFecVen = facVenCabFecVen;
    }
    public double getFacVenCabTot() {
        return this.facVenCabTot;
    }
    
    public void setFacVenCabTot(double facVenCabTot) {
        this.facVenCabTot = facVenCabTot;
    }
    public Integer getFacVenPorDes() {
        return this.facVenPorDes;
    }
    
    public void setFacVenPorDes(Integer facVenPorDes) {
        this.facVenPorDes = facVenPorDes;
    }
    public double getFacVenCabSubTot() {
        return this.facVenCabSubTot;
    }
    
    public void setFacVenCabSubTot(double facVenCabSubTot) {
        this.facVenCabSubTot = facVenCabSubTot;
    }
    public int getFacVenCabIgv() {
        return this.facVenCabIgv;
    }
    
    public void setFacVenCabIgv(int facVenCabIgv) {
        this.facVenCabIgv = facVenCabIgv;
    }
    public String getFacVenCabObs() {
        return this.facVenCabObs;
    }
    
    public void setFacVenCabObs(String facVenCabObs) {
        this.facVenCabObs = facVenCabObs;
    }
    public char getEstRegCod() {
        return this.estRegCod;
    }
    
    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }
    public EnP1mPagosCuotasCab getEnP1mPagosCuotasCab() {
        return this.enP1mPagosCuotasCab;
    }
    
    public void setEnP1mPagosCuotasCab(EnP1mPagosCuotasCab enP1mPagosCuotasCab) {
        this.enP1mPagosCuotasCab = enP1mPagosCuotasCab;
    }
    public Set getEnP1cDevolucionVentasesForDevVenNewFac() {
        return this.enP1cDevolucionVentasesForDevVenNewFac;
    }
    
    public void setEnP1cDevolucionVentasesForDevVenNewFac(Set enP1cDevolucionVentasesForDevVenNewFac) {
        this.enP1cDevolucionVentasesForDevVenNewFac = enP1cDevolucionVentasesForDevVenNewFac;
    }
    public EnP1cDevolucionVentas getEnP1cDevolucionVentasByFacVenCabCod() {
        return this.enP1cDevolucionVentasByFacVenCabCod;
    }
    
    public void setEnP1cDevolucionVentasByFacVenCabCod(EnP1cDevolucionVentas enP1cDevolucionVentasByFacVenCabCod) {
        this.enP1cDevolucionVentasByFacVenCabCod = enP1cDevolucionVentasByFacVenCabCod;
    }
    public Set getEnP1tFacturaVentaDets() {
        return this.enP1tFacturaVentaDets;
    }
    
    public void setEnP1tFacturaVentaDets(Set enP1tFacturaVentaDets) {
        this.enP1tFacturaVentaDets = enP1tFacturaVentaDets;
    }
    public Set getEnP1cPreventaRealizadases() {
        return this.enP1cPreventaRealizadases;
    }
    
    public void setEnP1cPreventaRealizadases(Set enP1cPreventaRealizadases) {
        this.enP1cPreventaRealizadases = enP1cPreventaRealizadases;
    }




}


