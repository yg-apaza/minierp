package org.epis.minierp.model;
// Generated 27/11/2016 05:44:55 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * TaGzzCanalCliente generated by hbm2java
 */
public class TaGzzCanalCliente  implements java.io.Serializable {


     private Integer canCliCod;
     private String canCliDet;
     private char estRegCod;
     private Set enP1mClientes = new HashSet(0);

    public TaGzzCanalCliente() {
    }

	
    public TaGzzCanalCliente(String canCliDet, char estRegCod) {
        this.canCliDet = canCliDet;
        this.estRegCod = estRegCod;
    }
    public TaGzzCanalCliente(String canCliDet, char estRegCod, Set enP1mClientes) {
       this.canCliDet = canCliDet;
       this.estRegCod = estRegCod;
       this.enP1mClientes = enP1mClientes;
    }
   
    public Integer getCanCliCod() {
        return this.canCliCod;
    }
    
    public void setCanCliCod(Integer canCliCod) {
        this.canCliCod = canCliCod;
    }
    public String getCanCliDet() {
        return this.canCliDet;
    }
    
    public void setCanCliDet(String canCliDet) {
        this.canCliDet = canCliDet;
    }
    public char getEstRegCod() {
        return this.estRegCod;
    }
    
    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }
    public Set getEnP1mClientes() {
        return this.enP1mClientes;
    }
    
    public void setEnP1mClientes(Set enP1mClientes) {
        this.enP1mClientes = enP1mClientes;
    }




}


