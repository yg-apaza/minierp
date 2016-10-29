package org.epis.minierp.model;
// Generated 29/10/2016 12:36:12 PM by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * EnP1mPreventaCab generated by hbm2java
 */
public class EnP1mPreventaCab  implements java.io.Serializable {


     private String preVenCabCod;
     private EnP1mCliente enP1mCliente;
     private EnP1mUsuario enP1mUsuario;
     private TaGzzMoneda taGzzMoneda;
     private TaGzzTipoDescuento taGzzTipoDescuento;
     private Date preVenCabFec;
     private int preVenCabPla;
     private double preVenCabTot;
     private double preVenCabDes;
     private double preVenCabSubTot;
     private int preVenCabIgv;
     private String preVenCabObs;
     private char estRegCod;
     private Set enP1cPreventaRealizadases = new HashSet(0);
     private Set enP1tPreventaDets = new HashSet(0);

    public EnP1mPreventaCab() {
    }

	
    public EnP1mPreventaCab(String preVenCabCod, EnP1mCliente enP1mCliente, EnP1mUsuario enP1mUsuario, TaGzzMoneda taGzzMoneda, Date preVenCabFec, int preVenCabPla, double preVenCabTot, double preVenCabDes, double preVenCabSubTot, int preVenCabIgv, String preVenCabObs, char estRegCod) {
        this.preVenCabCod = preVenCabCod;
        this.enP1mCliente = enP1mCliente;
        this.enP1mUsuario = enP1mUsuario;
        this.taGzzMoneda = taGzzMoneda;
        this.preVenCabFec = preVenCabFec;
        this.preVenCabPla = preVenCabPla;
        this.preVenCabTot = preVenCabTot;
        this.preVenCabDes = preVenCabDes;
        this.preVenCabSubTot = preVenCabSubTot;
        this.preVenCabIgv = preVenCabIgv;
        this.preVenCabObs = preVenCabObs;
        this.estRegCod = estRegCod;
    }
    public EnP1mPreventaCab(String preVenCabCod, EnP1mCliente enP1mCliente, EnP1mUsuario enP1mUsuario, TaGzzMoneda taGzzMoneda, TaGzzTipoDescuento taGzzTipoDescuento, Date preVenCabFec, int preVenCabPla, double preVenCabTot, double preVenCabDes, double preVenCabSubTot, int preVenCabIgv, String preVenCabObs, char estRegCod, Set enP1cPreventaRealizadases, Set enP1tPreventaDets) {
       this.preVenCabCod = preVenCabCod;
       this.enP1mCliente = enP1mCliente;
       this.enP1mUsuario = enP1mUsuario;
       this.taGzzMoneda = taGzzMoneda;
       this.taGzzTipoDescuento = taGzzTipoDescuento;
       this.preVenCabFec = preVenCabFec;
       this.preVenCabPla = preVenCabPla;
       this.preVenCabTot = preVenCabTot;
       this.preVenCabDes = preVenCabDes;
       this.preVenCabSubTot = preVenCabSubTot;
       this.preVenCabIgv = preVenCabIgv;
       this.preVenCabObs = preVenCabObs;
       this.estRegCod = estRegCod;
       this.enP1cPreventaRealizadases = enP1cPreventaRealizadases;
       this.enP1tPreventaDets = enP1tPreventaDets;
    }
   
    public String getPreVenCabCod() {
        return this.preVenCabCod;
    }
    
    public void setPreVenCabCod(String preVenCabCod) {
        this.preVenCabCod = preVenCabCod;
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
    public Date getPreVenCabFec() {
        return this.preVenCabFec;
    }
    
    public void setPreVenCabFec(Date preVenCabFec) {
        this.preVenCabFec = preVenCabFec;
    }
    public int getPreVenCabPla() {
        return this.preVenCabPla;
    }
    
    public void setPreVenCabPla(int preVenCabPla) {
        this.preVenCabPla = preVenCabPla;
    }
    public double getPreVenCabTot() {
        return this.preVenCabTot;
    }
    
    public void setPreVenCabTot(double preVenCabTot) {
        this.preVenCabTot = preVenCabTot;
    }
    public double getPreVenCabDes() {
        return this.preVenCabDes;
    }
    
    public void setPreVenCabDes(double preVenCabDes) {
        this.preVenCabDes = preVenCabDes;
    }
    public double getPreVenCabSubTot() {
        return this.preVenCabSubTot;
    }
    
    public void setPreVenCabSubTot(double preVenCabSubTot) {
        this.preVenCabSubTot = preVenCabSubTot;
    }
    public int getPreVenCabIgv() {
        return this.preVenCabIgv;
    }
    
    public void setPreVenCabIgv(int preVenCabIgv) {
        this.preVenCabIgv = preVenCabIgv;
    }
    public String getPreVenCabObs() {
        return this.preVenCabObs;
    }
    
    public void setPreVenCabObs(String preVenCabObs) {
        this.preVenCabObs = preVenCabObs;
    }
    public char getEstRegCod() {
        return this.estRegCod;
    }
    
    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }
    public Set getEnP1cPreventaRealizadases() {
        return this.enP1cPreventaRealizadases;
    }
    
    public void setEnP1cPreventaRealizadases(Set enP1cPreventaRealizadases) {
        this.enP1cPreventaRealizadases = enP1cPreventaRealizadases;
    }
    public Set getEnP1tPreventaDets() {
        return this.enP1tPreventaDets;
    }
    
    public void setEnP1tPreventaDets(Set enP1tPreventaDets) {
        this.enP1tPreventaDets = enP1tPreventaDets;
    }




}


