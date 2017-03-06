package org.epis.minierp.model;
// Generated 04/03/2017 10:43:21 PM by Hibernate Tools 4.3.1



/**
 * EnP1mPuntoVenta generated by hbm2java
 */
public class EnP1mPuntoVenta  implements java.io.Serializable {


     private EnP1mPuntoVentaId id;
     private EnP1mSucursal enP1mSucursal;
     private String punVenDes;
     private char estRegCod;

    public EnP1mPuntoVenta() {
    }

	
    public EnP1mPuntoVenta(EnP1mPuntoVentaId id, EnP1mSucursal enP1mSucursal, char estRegCod) {
        this.id = id;
        this.enP1mSucursal = enP1mSucursal;
        this.estRegCod = estRegCod;
    }
    public EnP1mPuntoVenta(EnP1mPuntoVentaId id, EnP1mSucursal enP1mSucursal, String punVenDes, char estRegCod) {
       this.id = id;
       this.enP1mSucursal = enP1mSucursal;
       this.punVenDes = punVenDes;
       this.estRegCod = estRegCod;
    }
   
    public EnP1mPuntoVentaId getId() {
        return this.id;
    }
    
    public void setId(EnP1mPuntoVentaId id) {
        this.id = id;
    }
    public EnP1mSucursal getEnP1mSucursal() {
        return this.enP1mSucursal;
    }
    
    public void setEnP1mSucursal(EnP1mSucursal enP1mSucursal) {
        this.enP1mSucursal = enP1mSucursal;
    }
    public String getPunVenDes() {
        return this.punVenDes;
    }
    
    public void setPunVenDes(String punVenDes) {
        this.punVenDes = punVenDes;
    }
    public char getEstRegCod() {
        return this.estRegCod;
    }
    
    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }




}


