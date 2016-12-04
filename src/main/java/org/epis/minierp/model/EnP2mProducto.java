package org.epis.minierp.model;
// Generated 04/12/2016 10:29:37 AM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * EnP2mProducto generated by hbm2java
 */
public class EnP2mProducto  implements java.io.Serializable {


     private EnP2mProductoId id;
     private EnP2mAlmacen enP2mAlmacen;
     private EnP2mSubclaseProducto enP2mSubclaseProducto;
     private EnP3mCuenta enP3mCuentaByCueComCod;
     private EnP3mCuenta enP3mCuentaByCueVenCod;
     private TaGzzMoneda taGzzMoneda;
     private TaGzzUnidadMed taGzzUnidadMed;
     private String proCodBar;
     private String proDet;
     private double proPreUniVen;
     private double proPreUniCom;
     private double proPreUniMar;
     private double proPreUniFle;
     private Double proPesNet;
     private double proStk;
     private Double proStkRea;
     private double proStkPreVen;
     private Double volUniAlm;
     private Double proStkMin;
     private Double proStkMax;
     private String proObs;
     private char estRegCod;
     private Set enP1tFacturaVentaDets = new HashSet(0);
     private Set enP2tInventarioDets = new HashSet(0);
     private Set enP1tPreventaDets = new HashSet(0);
     private Set enP4tFacturaCompraDets = new HashSet(0);

    public EnP2mProducto() {
    }

	
    public EnP2mProducto(EnP2mProductoId id, EnP2mSubclaseProducto enP2mSubclaseProducto, TaGzzUnidadMed taGzzUnidadMed, String proDet, double proPreUniVen, double proPreUniCom, double proPreUniMar, double proPreUniFle, double proStk, double proStkPreVen, String proObs, char estRegCod) {
        this.id = id;
        this.enP2mSubclaseProducto = enP2mSubclaseProducto;
        this.taGzzUnidadMed = taGzzUnidadMed;
        this.proDet = proDet;
        this.proPreUniVen = proPreUniVen;
        this.proPreUniCom = proPreUniCom;
        this.proPreUniMar = proPreUniMar;
        this.proPreUniFle = proPreUniFle;
        this.proStk = proStk;
        this.proStkPreVen = proStkPreVen;
        this.proObs = proObs;
        this.estRegCod = estRegCod;
    }
    public EnP2mProducto(EnP2mProductoId id, EnP2mAlmacen enP2mAlmacen, EnP2mSubclaseProducto enP2mSubclaseProducto, EnP3mCuenta enP3mCuentaByCueComCod, EnP3mCuenta enP3mCuentaByCueVenCod, TaGzzMoneda taGzzMoneda, TaGzzUnidadMed taGzzUnidadMed, String proCodBar, String proDet, double proPreUniVen, double proPreUniCom, double proPreUniMar, double proPreUniFle, Double proPesNet, double proStk, Double proStkRea, double proStkPreVen, Double volUniAlm, Double proStkMin, Double proStkMax, String proObs, char estRegCod, Set enP1tFacturaVentaDets, Set enP2tInventarioDets, Set enP1tPreventaDets, Set enP4tFacturaCompraDets) {
       this.id = id;
       this.enP2mAlmacen = enP2mAlmacen;
       this.enP2mSubclaseProducto = enP2mSubclaseProducto;
       this.enP3mCuentaByCueComCod = enP3mCuentaByCueComCod;
       this.enP3mCuentaByCueVenCod = enP3mCuentaByCueVenCod;
       this.taGzzMoneda = taGzzMoneda;
       this.taGzzUnidadMed = taGzzUnidadMed;
       this.proCodBar = proCodBar;
       this.proDet = proDet;
       this.proPreUniVen = proPreUniVen;
       this.proPreUniCom = proPreUniCom;
       this.proPreUniMar = proPreUniMar;
       this.proPreUniFle = proPreUniFle;
       this.proPesNet = proPesNet;
       this.proStk = proStk;
       this.proStkRea = proStkRea;
       this.proStkPreVen = proStkPreVen;
       this.volUniAlm = volUniAlm;
       this.proStkMin = proStkMin;
       this.proStkMax = proStkMax;
       this.proObs = proObs;
       this.estRegCod = estRegCod;
       this.enP1tFacturaVentaDets = enP1tFacturaVentaDets;
       this.enP2tInventarioDets = enP2tInventarioDets;
       this.enP1tPreventaDets = enP1tPreventaDets;
       this.enP4tFacturaCompraDets = enP4tFacturaCompraDets;
    }
   
    public EnP2mProductoId getId() {
        return this.id;
    }
    
    public void setId(EnP2mProductoId id) {
        this.id = id;
    }
    public EnP2mAlmacen getEnP2mAlmacen() {
        return this.enP2mAlmacen;
    }
    
    public void setEnP2mAlmacen(EnP2mAlmacen enP2mAlmacen) {
        this.enP2mAlmacen = enP2mAlmacen;
    }
    public EnP2mSubclaseProducto getEnP2mSubclaseProducto() {
        return this.enP2mSubclaseProducto;
    }
    
    public void setEnP2mSubclaseProducto(EnP2mSubclaseProducto enP2mSubclaseProducto) {
        this.enP2mSubclaseProducto = enP2mSubclaseProducto;
    }
    public EnP3mCuenta getEnP3mCuentaByCueComCod() {
        return this.enP3mCuentaByCueComCod;
    }
    
    public void setEnP3mCuentaByCueComCod(EnP3mCuenta enP3mCuentaByCueComCod) {
        this.enP3mCuentaByCueComCod = enP3mCuentaByCueComCod;
    }
    public EnP3mCuenta getEnP3mCuentaByCueVenCod() {
        return this.enP3mCuentaByCueVenCod;
    }
    
    public void setEnP3mCuentaByCueVenCod(EnP3mCuenta enP3mCuentaByCueVenCod) {
        this.enP3mCuentaByCueVenCod = enP3mCuentaByCueVenCod;
    }
    public TaGzzMoneda getTaGzzMoneda() {
        return this.taGzzMoneda;
    }
    
    public void setTaGzzMoneda(TaGzzMoneda taGzzMoneda) {
        this.taGzzMoneda = taGzzMoneda;
    }
    public TaGzzUnidadMed getTaGzzUnidadMed() {
        return this.taGzzUnidadMed;
    }
    
    public void setTaGzzUnidadMed(TaGzzUnidadMed taGzzUnidadMed) {
        this.taGzzUnidadMed = taGzzUnidadMed;
    }
    public String getProCodBar() {
        return this.proCodBar;
    }
    
    public void setProCodBar(String proCodBar) {
        this.proCodBar = proCodBar;
    }
    public String getProDet() {
        return this.proDet;
    }
    
    public void setProDet(String proDet) {
        this.proDet = proDet;
    }
    public double getProPreUniVen() {
        return this.proPreUniVen;
    }
    
    public void setProPreUniVen(double proPreUniVen) {
        this.proPreUniVen = proPreUniVen;
    }
    public double getProPreUniCom() {
        return this.proPreUniCom;
    }
    
    public void setProPreUniCom(double proPreUniCom) {
        this.proPreUniCom = proPreUniCom;
    }
    public double getProPreUniMar() {
        return this.proPreUniMar;
    }
    
    public void setProPreUniMar(double proPreUniMar) {
        this.proPreUniMar = proPreUniMar;
    }
    public double getProPreUniFle() {
        return this.proPreUniFle;
    }
    
    public void setProPreUniFle(double proPreUniFle) {
        this.proPreUniFle = proPreUniFle;
    }
    public Double getProPesNet() {
        return this.proPesNet;
    }
    
    public void setProPesNet(Double proPesNet) {
        this.proPesNet = proPesNet;
    }
    public double getProStk() {
        return this.proStk;
    }
    
    public void setProStk(double proStk) {
        this.proStk = proStk;
    }
    public Double getProStkRea() {
        return this.proStkRea;
    }
    
    public void setProStkRea(Double proStkRea) {
        this.proStkRea = proStkRea;
    }
    public double getProStkPreVen() {
        return this.proStkPreVen;
    }
    
    public void setProStkPreVen(double proStkPreVen) {
        this.proStkPreVen = proStkPreVen;
    }
    public Double getVolUniAlm() {
        return this.volUniAlm;
    }
    
    public void setVolUniAlm(Double volUniAlm) {
        this.volUniAlm = volUniAlm;
    }
    public Double getProStkMin() {
        return this.proStkMin;
    }
    
    public void setProStkMin(Double proStkMin) {
        this.proStkMin = proStkMin;
    }
    public Double getProStkMax() {
        return this.proStkMax;
    }
    
    public void setProStkMax(Double proStkMax) {
        this.proStkMax = proStkMax;
    }
    public String getProObs() {
        return this.proObs;
    }
    
    public void setProObs(String proObs) {
        this.proObs = proObs;
    }
    public char getEstRegCod() {
        return this.estRegCod;
    }
    
    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }
    public Set getEnP1tFacturaVentaDets() {
        return this.enP1tFacturaVentaDets;
    }
    
    public void setEnP1tFacturaVentaDets(Set enP1tFacturaVentaDets) {
        this.enP1tFacturaVentaDets = enP1tFacturaVentaDets;
    }
    public Set getEnP2tInventarioDets() {
        return this.enP2tInventarioDets;
    }
    
    public void setEnP2tInventarioDets(Set enP2tInventarioDets) {
        this.enP2tInventarioDets = enP2tInventarioDets;
    }
    public Set getEnP1tPreventaDets() {
        return this.enP1tPreventaDets;
    }
    
    public void setEnP1tPreventaDets(Set enP1tPreventaDets) {
        this.enP1tPreventaDets = enP1tPreventaDets;
    }
    public Set getEnP4tFacturaCompraDets() {
        return this.enP4tFacturaCompraDets;
    }
    
    public void setEnP4tFacturaCompraDets(Set enP4tFacturaCompraDets) {
        this.enP4tFacturaCompraDets = enP4tFacturaCompraDets;
    }




}


