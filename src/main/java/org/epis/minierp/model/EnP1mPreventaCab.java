package org.epis.minierp.model;
// Generated 04/12/2016 10:29:37 AM by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * EnP1mPreventaCab generated by hbm2java
 */
public class EnP1mPreventaCab  implements java.io.Serializable {


     private String preVenCabCod;
     private EnP1mCatalogoRuta enP1mCatalogoRuta;
     private EnP1mCliente enP1mCliente;
     private EnP1mUsuario enP1mUsuario;
     private TaGzzMoneda taGzzMoneda;
     private TaGzzTipoDescuento taGzzTipoDescuento;
     private Date preVenCabFecEmi;
     private Date preVenCabFecVen;
     private int preVenCabPla;
     private double preVenCabTot;
     private Integer preVenPorDes;
     private double preVenCabSubTot;
     private int preVenCabIgv;
     private String preVenCabObs;
     private char estRegCod;
     private Set enP1cPreventaRealizadases = new HashSet(0);
     private Set enP1tPreventaDets = new HashSet(0);

    public EnP1mPreventaCab() {
    }

	
    public EnP1mPreventaCab(String preVenCabCod, EnP1mCliente enP1mCliente, EnP1mUsuario enP1mUsuario, TaGzzMoneda taGzzMoneda, Date preVenCabFecEmi, int preVenCabPla, double preVenCabTot, double preVenCabSubTot, int preVenCabIgv, String preVenCabObs, char estRegCod) {
        this.preVenCabCod = preVenCabCod;
        this.enP1mCliente = enP1mCliente;
        this.enP1mUsuario = enP1mUsuario;
        this.taGzzMoneda = taGzzMoneda;
        this.preVenCabFecEmi = preVenCabFecEmi;
        this.preVenCabPla = preVenCabPla;
        this.preVenCabTot = preVenCabTot;
        this.preVenCabSubTot = preVenCabSubTot;
        this.preVenCabIgv = preVenCabIgv;
        this.preVenCabObs = preVenCabObs;
        this.estRegCod = estRegCod;
    }
    public EnP1mPreventaCab(String preVenCabCod, EnP1mCatalogoRuta enP1mCatalogoRuta, EnP1mCliente enP1mCliente, EnP1mUsuario enP1mUsuario, TaGzzMoneda taGzzMoneda, TaGzzTipoDescuento taGzzTipoDescuento, Date preVenCabFecEmi, Date preVenCabFecVen, int preVenCabPla, double preVenCabTot, Integer preVenPorDes, double preVenCabSubTot, int preVenCabIgv, String preVenCabObs, char estRegCod, Set enP1cPreventaRealizadases, Set enP1tPreventaDets) {
       this.preVenCabCod = preVenCabCod;
       this.enP1mCatalogoRuta = enP1mCatalogoRuta;
       this.enP1mCliente = enP1mCliente;
       this.enP1mUsuario = enP1mUsuario;
       this.taGzzMoneda = taGzzMoneda;
       this.taGzzTipoDescuento = taGzzTipoDescuento;
       this.preVenCabFecEmi = preVenCabFecEmi;
       this.preVenCabFecVen = preVenCabFecVen;
       this.preVenCabPla = preVenCabPla;
       this.preVenCabTot = preVenCabTot;
       this.preVenPorDes = preVenPorDes;
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
    public Date getPreVenCabFecEmi() {
        return this.preVenCabFecEmi;
    }
    
    public void setPreVenCabFecEmi(Date preVenCabFecEmi) {
        this.preVenCabFecEmi = preVenCabFecEmi;
    }
    public Date getPreVenCabFecVen() {
        return this.preVenCabFecVen;
    }
    
    public void setPreVenCabFecVen(Date preVenCabFecVen) {
        this.preVenCabFecVen = preVenCabFecVen;
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
    public Integer getPreVenPorDes() {
        return this.preVenPorDes;
    }
    
    public void setPreVenPorDes(Integer preVenPorDes) {
        this.preVenPorDes = preVenPorDes;
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


