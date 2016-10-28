package org.epis.minierp.model;
// Generated 28/10/2016 01:30:37 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * EnP2mClaseProducto generated by hbm2java
 */
public class EnP2mClaseProducto  implements java.io.Serializable {


     private String claProCod;
     private String claProDet;
     private char estRegCod;
     private Set enP2mSubclaseProductos = new HashSet(0);

    public EnP2mClaseProducto() {
    }

	
    public EnP2mClaseProducto(String claProCod, String claProDet, char estRegCod) {
        this.claProCod = claProCod;
        this.claProDet = claProDet;
        this.estRegCod = estRegCod;
    }
    public EnP2mClaseProducto(String claProCod, String claProDet, char estRegCod, Set enP2mSubclaseProductos) {
       this.claProCod = claProCod;
       this.claProDet = claProDet;
       this.estRegCod = estRegCod;
       this.enP2mSubclaseProductos = enP2mSubclaseProductos;
    }
   
    public String getClaProCod() {
        return this.claProCod;
    }
    
    public void setClaProCod(String claProCod) {
        this.claProCod = claProCod;
    }
    public String getClaProDet() {
        return this.claProDet;
    }
    
    public void setClaProDet(String claProDet) {
        this.claProDet = claProDet;
    }
    public char getEstRegCod() {
        return this.estRegCod;
    }
    
    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }
    public Set getEnP2mSubclaseProductos() {
        return this.enP2mSubclaseProductos;
    }
    
    public void setEnP2mSubclaseProductos(Set enP2mSubclaseProductos) {
        this.enP2mSubclaseProductos = enP2mSubclaseProductos;
    }




}


