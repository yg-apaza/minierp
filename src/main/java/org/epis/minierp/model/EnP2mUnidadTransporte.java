package org.epis.minierp.model;
// Generated 26/02/2017 07:56:21 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * EnP2mUnidadTransporte generated by hbm2java
 */
public class EnP2mUnidadTransporte  implements java.io.Serializable {


     private String uniTraCod;
     private TaGzzEstadoUniTransporte taGzzEstadoUniTransporte;
     private TaGzzTipoUniTransporte taGzzTipoUniTransporte;
     private String uniTraMod;
     private String uniTraMar;
     private Double uniTraPes;
     private String uniTraNumPla;
     private char estRegCod;
     private Set enP2mGuiaRemTransportistas = new HashSet(0);

    public EnP2mUnidadTransporte() {
    }

	
    public EnP2mUnidadTransporte(String uniTraCod, String uniTraNumPla, char estRegCod) {
        this.uniTraCod = uniTraCod;
        this.uniTraNumPla = uniTraNumPla;
        this.estRegCod = estRegCod;
    }
    public EnP2mUnidadTransporte(String uniTraCod, TaGzzEstadoUniTransporte taGzzEstadoUniTransporte, TaGzzTipoUniTransporte taGzzTipoUniTransporte, String uniTraMod, String uniTraMar, Double uniTraPes, String uniTraNumPla, char estRegCod, Set enP2mGuiaRemTransportistas) {
       this.uniTraCod = uniTraCod;
       this.taGzzEstadoUniTransporte = taGzzEstadoUniTransporte;
       this.taGzzTipoUniTransporte = taGzzTipoUniTransporte;
       this.uniTraMod = uniTraMod;
       this.uniTraMar = uniTraMar;
       this.uniTraPes = uniTraPes;
       this.uniTraNumPla = uniTraNumPla;
       this.estRegCod = estRegCod;
       this.enP2mGuiaRemTransportistas = enP2mGuiaRemTransportistas;
    }
   
    public String getUniTraCod() {
        return this.uniTraCod;
    }
    
    public void setUniTraCod(String uniTraCod) {
        this.uniTraCod = uniTraCod;
    }
    public TaGzzEstadoUniTransporte getTaGzzEstadoUniTransporte() {
        return this.taGzzEstadoUniTransporte;
    }
    
    public void setTaGzzEstadoUniTransporte(TaGzzEstadoUniTransporte taGzzEstadoUniTransporte) {
        this.taGzzEstadoUniTransporte = taGzzEstadoUniTransporte;
    }
    public TaGzzTipoUniTransporte getTaGzzTipoUniTransporte() {
        return this.taGzzTipoUniTransporte;
    }
    
    public void setTaGzzTipoUniTransporte(TaGzzTipoUniTransporte taGzzTipoUniTransporte) {
        this.taGzzTipoUniTransporte = taGzzTipoUniTransporte;
    }
    public String getUniTraMod() {
        return this.uniTraMod;
    }
    
    public void setUniTraMod(String uniTraMod) {
        this.uniTraMod = uniTraMod;
    }
    public String getUniTraMar() {
        return this.uniTraMar;
    }
    
    public void setUniTraMar(String uniTraMar) {
        this.uniTraMar = uniTraMar;
    }
    public Double getUniTraPes() {
        return this.uniTraPes;
    }
    
    public void setUniTraPes(Double uniTraPes) {
        this.uniTraPes = uniTraPes;
    }
    public String getUniTraNumPla() {
        return this.uniTraNumPla;
    }
    
    public void setUniTraNumPla(String uniTraNumPla) {
        this.uniTraNumPla = uniTraNumPla;
    }
    public char getEstRegCod() {
        return this.estRegCod;
    }
    
    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }
    public Set getEnP2mGuiaRemTransportistas() {
        return this.enP2mGuiaRemTransportistas;
    }
    
    public void setEnP2mGuiaRemTransportistas(Set enP2mGuiaRemTransportistas) {
        this.enP2mGuiaRemTransportistas = enP2mGuiaRemTransportistas;
    }




}


