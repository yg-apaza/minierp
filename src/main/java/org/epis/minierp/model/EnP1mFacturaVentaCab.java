package org.epis.minierp.model;
// Generated 28/10/2016 01:30:37 PM by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * EnP1mFacturaVentaCab generated by hbm2java
 */
public class EnP1mFacturaVentaCab  implements java.io.Serializable {


     private String facVenCabCod;
     private EnP1mCliente enP1mCliente;
     private EnP1mUsuario enP1mUsuario;
     private TaGzzEstadoFactura taGzzEstadoFactura;
     private TaGzzMetodoPagoFactura taGzzMetodoPagoFactura;
     private TaGzzMoneda taGzzMoneda;
     private TaGzzTipoPagoFactura taGzzTipoPagoFactura;
     private Date facVenCabFec;
     private double facVenCabTot;
     private double facVenCabDes;
     private double facVenCabSubTot;
     private int facVenCabIgv;
     private String facVenCabObs;
     private char estRegCod;
     private EnP1mPagosCuotasCab enP1mPagosCuotasCab;
     private Set enP1tFacturaVentaDets = new HashSet(0);
     private Set enP1cPreventaRealizadases = new HashSet(0);

    public EnP1mFacturaVentaCab() {
    }

	
    public EnP1mFacturaVentaCab(String facVenCabCod, EnP1mCliente enP1mCliente, EnP1mUsuario enP1mUsuario, TaGzzEstadoFactura taGzzEstadoFactura, TaGzzMetodoPagoFactura taGzzMetodoPagoFactura, TaGzzMoneda taGzzMoneda, TaGzzTipoPagoFactura taGzzTipoPagoFactura, Date facVenCabFec, double facVenCabTot, double facVenCabDes, double facVenCabSubTot, int facVenCabIgv, String facVenCabObs, char estRegCod) {
        this.facVenCabCod = facVenCabCod;
        this.enP1mCliente = enP1mCliente;
        this.enP1mUsuario = enP1mUsuario;
        this.taGzzEstadoFactura = taGzzEstadoFactura;
        this.taGzzMetodoPagoFactura = taGzzMetodoPagoFactura;
        this.taGzzMoneda = taGzzMoneda;
        this.taGzzTipoPagoFactura = taGzzTipoPagoFactura;
        this.facVenCabFec = facVenCabFec;
        this.facVenCabTot = facVenCabTot;
        this.facVenCabDes = facVenCabDes;
        this.facVenCabSubTot = facVenCabSubTot;
        this.facVenCabIgv = facVenCabIgv;
        this.facVenCabObs = facVenCabObs;
        this.estRegCod = estRegCod;
    }
    public EnP1mFacturaVentaCab(String facVenCabCod, EnP1mCliente enP1mCliente, EnP1mUsuario enP1mUsuario, TaGzzEstadoFactura taGzzEstadoFactura, TaGzzMetodoPagoFactura taGzzMetodoPagoFactura, TaGzzMoneda taGzzMoneda, TaGzzTipoPagoFactura taGzzTipoPagoFactura, Date facVenCabFec, double facVenCabTot, double facVenCabDes, double facVenCabSubTot, int facVenCabIgv, String facVenCabObs, char estRegCod, EnP1mPagosCuotasCab enP1mPagosCuotasCab, Set enP1tFacturaVentaDets, Set enP1cPreventaRealizadases) {
       this.facVenCabCod = facVenCabCod;
       this.enP1mCliente = enP1mCliente;
       this.enP1mUsuario = enP1mUsuario;
       this.taGzzEstadoFactura = taGzzEstadoFactura;
       this.taGzzMetodoPagoFactura = taGzzMetodoPagoFactura;
       this.taGzzMoneda = taGzzMoneda;
       this.taGzzTipoPagoFactura = taGzzTipoPagoFactura;
       this.facVenCabFec = facVenCabFec;
       this.facVenCabTot = facVenCabTot;
       this.facVenCabDes = facVenCabDes;
       this.facVenCabSubTot = facVenCabSubTot;
       this.facVenCabIgv = facVenCabIgv;
       this.facVenCabObs = facVenCabObs;
       this.estRegCod = estRegCod;
       this.enP1mPagosCuotasCab = enP1mPagosCuotasCab;
       this.enP1tFacturaVentaDets = enP1tFacturaVentaDets;
       this.enP1cPreventaRealizadases = enP1cPreventaRealizadases;
    }
   
    public String getFacVenCabCod() {
        return this.facVenCabCod;
    }
    
    public void setFacVenCabCod(String facVenCabCod) {
        this.facVenCabCod = facVenCabCod;
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
    public TaGzzTipoPagoFactura getTaGzzTipoPagoFactura() {
        return this.taGzzTipoPagoFactura;
    }
    
    public void setTaGzzTipoPagoFactura(TaGzzTipoPagoFactura taGzzTipoPagoFactura) {
        this.taGzzTipoPagoFactura = taGzzTipoPagoFactura;
    }
    public Date getFacVenCabFec() {
        return this.facVenCabFec;
    }
    
    public void setFacVenCabFec(Date facVenCabFec) {
        this.facVenCabFec = facVenCabFec;
    }
    public double getFacVenCabTot() {
        return this.facVenCabTot;
    }
    
    public void setFacVenCabTot(double facVenCabTot) {
        this.facVenCabTot = facVenCabTot;
    }
    public double getFacVenCabDes() {
        return this.facVenCabDes;
    }
    
    public void setFacVenCabDes(double facVenCabDes) {
        this.facVenCabDes = facVenCabDes;
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


