package org.epis.minierp.model;
// Generated 04/12/2016 10:29:37 AM by Hibernate Tools 4.3.1



/**
 * EnP1mCarteraClientes generated by hbm2java
 */
public class EnP1mCarteraClientes  implements java.io.Serializable {


     private EnP1mCarteraClientesId id;
     private EnP1mCliente enP1mCliente;
     private EnP1mUsuario enP1mUsuario;
     private String usuCliDes;
     private char usuCliEstReg;

    public EnP1mCarteraClientes() {
    }

    public EnP1mCarteraClientes(EnP1mCarteraClientesId id, EnP1mCliente enP1mCliente, EnP1mUsuario enP1mUsuario, String usuCliDes, char usuCliEstReg) {
       this.id = id;
       this.enP1mCliente = enP1mCliente;
       this.enP1mUsuario = enP1mUsuario;
       this.usuCliDes = usuCliDes;
       this.usuCliEstReg = usuCliEstReg;
    }
   
    public EnP1mCarteraClientesId getId() {
        return this.id;
    }
    
    public void setId(EnP1mCarteraClientesId id) {
        this.id = id;
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
    public String getUsuCliDes() {
        return this.usuCliDes;
    }
    
    public void setUsuCliDes(String usuCliDes) {
        this.usuCliDes = usuCliDes;
    }
    public char getUsuCliEstReg() {
        return this.usuCliEstReg;
    }
    
    public void setUsuCliEstReg(char usuCliEstReg) {
        this.usuCliEstReg = usuCliEstReg;
    }




}


