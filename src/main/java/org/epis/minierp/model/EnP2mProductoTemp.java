package org.epis.minierp.model;

public class EnP2mProductoTemp  implements java.io.Serializable {

     private EnP2mProductoId id;
     private EnP2mAlmacen enP2mAlmacen;
     private EnP2mSubclaseProducto enP2mSubclaseProducto;
     private TaGzzMoneda taGzzMoneda;
     private TaGzzUnidadMed taGzzUnidadMed;
     private String proCodBar;
     private Boolean proCom;
     private String proDet;
     private Double proPesNet;
     private double proStk;
     private Double proStkRea;
     private double proStkPreVen;
     private Double volUniAlm;
     private Double proStkMin;
     private Double proStkMax;
     private String proObs;
     private char estRegCod;
     
     //datos adicionales
     private double proPreUniVen;
     private double proPreUniCom;
     private double proPreUniFle;
     private double proPreUniMar;

    public EnP2mProductoTemp() {
    }

	
    public EnP2mProductoTemp(EnP2mProductoId id, EnP2mSubclaseProducto enP2mSubclaseProducto, TaGzzUnidadMed taGzzUnidadMed, String proDet, double proStk, double proStkPreVen, String proObs, char estRegCod) {
        this.id = id;
        this.enP2mSubclaseProducto = enP2mSubclaseProducto;
        this.taGzzUnidadMed = taGzzUnidadMed;
        this.proDet = proDet;
        this.proStk = proStk;
        this.proStkPreVen = proStkPreVen;
        this.proObs = proObs;
        this.estRegCod = estRegCod;
    }
    public EnP2mProductoTemp(EnP2mProductoId id, EnP2mAlmacen enP2mAlmacen, EnP2mSubclaseProducto enP2mSubclaseProducto, TaGzzMoneda taGzzMoneda, TaGzzUnidadMed taGzzUnidadMed, String proCodBar, Boolean proCom, String proDet, Double proPesNet, double proStk, Double proStkRea, double proStkPreVen, Double volUniAlm, Double proStkMin, Double proStkMax, String proObs, char estRegCod) {
       this.id = id;
       this.enP2mAlmacen = enP2mAlmacen;
       this.enP2mSubclaseProducto = enP2mSubclaseProducto;
       this.taGzzMoneda = taGzzMoneda;
       this.taGzzUnidadMed = taGzzUnidadMed;
       this.proCodBar = proCodBar;
       this.proCom = proCom;
       this.proDet = proDet;
       this.proPesNet = proPesNet;
       this.proStk = proStk;
       this.proStkRea = proStkRea;
       this.proStkPreVen = proStkPreVen;
       this.volUniAlm = volUniAlm;
       this.proStkMin = proStkMin;
       this.proStkMax = proStkMax;
       this.proObs = proObs;
       this.estRegCod = estRegCod;
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
    public Boolean getProCom() {
        return this.proCom;
    }
    
    public void setProCom(Boolean proCom) {
        this.proCom = proCom;
    }
    public String getProDet() {
        return this.proDet;
    }
    
    public void setProDet(String proDet) {
        this.proDet = proDet;
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
    
    //funciones agregadas

    public double getProPreUniVen() {
        return proPreUniVen;
    }

    public double getProPreUniCom() {
        return proPreUniCom;
    }

    public double getProPreUniFle() {
        return proPreUniFle;
    }

    public double getProPreUniMar() {
        return proPreUniMar;
    }

    public void setProPreUniVen(double proPreUniVen) {
        this.proPreUniVen = proPreUniVen;
    }

    public void setProPreUniCom(double proPreUniCom) {
        this.proPreUniCom = proPreUniCom;
    }

    public void setProPreUniFle(double proPreUniFle) {
        this.proPreUniFle = proPreUniFle;
    }

    public void setProPreUniMar(double proPreUniMar) {
        this.proPreUniMar = proPreUniMar;
    }
    
}


