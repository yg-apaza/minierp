package org.epis.minierp.model;
// Generated 15/11/2016 11:23:24 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * EnP1mSucursal generated by hbm2java
 */
public class EnP1mSucursal  implements java.io.Serializable {


     private Integer sucCod;
     private String sucDes;
     private String sucDir;
     private char estRegCod;
     private Set enP1mPuntoVentas = new HashSet(0);
     private Set enP1mUsuarios = new HashSet(0);
     private Set enP2mAlmacens = new HashSet(0);

    public EnP1mSucursal() {
    }

	
    public EnP1mSucursal(char estRegCod) {
        this.estRegCod = estRegCod;
    }
    public EnP1mSucursal(String sucDes, String sucDir, char estRegCod, Set enP1mPuntoVentas, Set enP1mUsuarios, Set enP2mAlmacens) {
       this.sucDes = sucDes;
       this.sucDir = sucDir;
       this.estRegCod = estRegCod;
       this.enP1mPuntoVentas = enP1mPuntoVentas;
       this.enP1mUsuarios = enP1mUsuarios;
       this.enP2mAlmacens = enP2mAlmacens;
    }
   
    public Integer getSucCod() {
        return this.sucCod;
    }
    
    public void setSucCod(Integer sucCod) {
        this.sucCod = sucCod;
    }
    public String getSucDes() {
        return this.sucDes;
    }
    
    public void setSucDes(String sucDes) {
        this.sucDes = sucDes;
    }
    public String getSucDir() {
        return this.sucDir;
    }
    
    public void setSucDir(String sucDir) {
        this.sucDir = sucDir;
    }
    public char getEstRegCod() {
        return this.estRegCod;
    }
    
    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }
    public Set getEnP1mPuntoVentas() {
        return this.enP1mPuntoVentas;
    }
    
    public void setEnP1mPuntoVentas(Set enP1mPuntoVentas) {
        this.enP1mPuntoVentas = enP1mPuntoVentas;
    }
    public Set getEnP1mUsuarios() {
        return this.enP1mUsuarios;
    }
    
    public void setEnP1mUsuarios(Set enP1mUsuarios) {
        this.enP1mUsuarios = enP1mUsuarios;
    }
    public Set getEnP2mAlmacens() {
        return this.enP2mAlmacens;
    }
    
    public void setEnP2mAlmacens(Set enP2mAlmacens) {
        this.enP2mAlmacens = enP2mAlmacens;
    }




}


