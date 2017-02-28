package org.epis.minierp.model;
// Generated 26/02/2017 07:56:21 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * EnP2mSubclaseProducto generated by hbm2java
 */
public class EnP2mSubclaseProducto  implements java.io.Serializable {


     private EnP2mSubclaseProductoId id;
     private EnP2mClaseProducto enP2mClaseProducto;
     private EnP3mCuenta enP3mCuentaByCueVenCod;
     private EnP3mCuenta enP3mCuentaByCueComCod;
     private String subClaProDet;
     private char estRegCod;
     private Set enP2mProductos = new HashSet(0);

    public EnP2mSubclaseProducto() {
    }

	
    public EnP2mSubclaseProducto(EnP2mSubclaseProductoId id, EnP2mClaseProducto enP2mClaseProducto, String subClaProDet, char estRegCod) {
        this.id = id;
        this.enP2mClaseProducto = enP2mClaseProducto;
        this.subClaProDet = subClaProDet;
        this.estRegCod = estRegCod;
    }
    public EnP2mSubclaseProducto(EnP2mSubclaseProductoId id, EnP2mClaseProducto enP2mClaseProducto, EnP3mCuenta enP3mCuentaByCueVenCod, EnP3mCuenta enP3mCuentaByCueComCod, String subClaProDet, char estRegCod, Set enP2mProductos) {
       this.id = id;
       this.enP2mClaseProducto = enP2mClaseProducto;
       this.enP3mCuentaByCueVenCod = enP3mCuentaByCueVenCod;
       this.enP3mCuentaByCueComCod = enP3mCuentaByCueComCod;
       this.subClaProDet = subClaProDet;
       this.estRegCod = estRegCod;
       this.enP2mProductos = enP2mProductos;
    }
   
    public EnP2mSubclaseProductoId getId() {
        return this.id;
    }
    
    public void setId(EnP2mSubclaseProductoId id) {
        this.id = id;
    }
    public EnP2mClaseProducto getEnP2mClaseProducto() {
        return this.enP2mClaseProducto;
    }
    
    public void setEnP2mClaseProducto(EnP2mClaseProducto enP2mClaseProducto) {
        this.enP2mClaseProducto = enP2mClaseProducto;
    }
    public EnP3mCuenta getEnP3mCuentaByCueVenCod() {
        return this.enP3mCuentaByCueVenCod;
    }
    
    public void setEnP3mCuentaByCueVenCod(EnP3mCuenta enP3mCuentaByCueVenCod) {
        this.enP3mCuentaByCueVenCod = enP3mCuentaByCueVenCod;
    }
    public EnP3mCuenta getEnP3mCuentaByCueComCod() {
        return this.enP3mCuentaByCueComCod;
    }
    
    public void setEnP3mCuentaByCueComCod(EnP3mCuenta enP3mCuentaByCueComCod) {
        this.enP3mCuentaByCueComCod = enP3mCuentaByCueComCod;
    }
    public String getSubClaProDet() {
        return this.subClaProDet;
    }
    
    public void setSubClaProDet(String subClaProDet) {
        this.subClaProDet = subClaProDet;
    }
    public char getEstRegCod() {
        return this.estRegCod;
    }
    
    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }
    public Set getEnP2mProductos() {
        return this.enP2mProductos;
    }
    
    public void setEnP2mProductos(Set enP2mProductos) {
        this.enP2mProductos = enP2mProductos;
    }




}


