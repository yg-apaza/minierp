package org.epis.minierp.model;
// Generated 26/02/2017 07:56:21 PM by Hibernate Tools 4.3.1



/**
 * EnP1mDocumentoCliente generated by hbm2java
 */
public class EnP1mDocumentoCliente  implements java.io.Serializable {


     private EnP1mDocumentoClienteId id;
     private EnP1mCliente enP1mCliente;
     private TaGzzTipoDocCliente taGzzTipoDocCliente;
     private String docCliNum;
     private char estRegCod;

    public EnP1mDocumentoCliente() {
    }

    public EnP1mDocumentoCliente(EnP1mDocumentoClienteId id, EnP1mCliente enP1mCliente, TaGzzTipoDocCliente taGzzTipoDocCliente, String docCliNum, char estRegCod) {
       this.id = id;
       this.enP1mCliente = enP1mCliente;
       this.taGzzTipoDocCliente = taGzzTipoDocCliente;
       this.docCliNum = docCliNum;
       this.estRegCod = estRegCod;
    }
   
    public EnP1mDocumentoClienteId getId() {
        return this.id;
    }
    
    public void setId(EnP1mDocumentoClienteId id) {
        this.id = id;
    }
    public EnP1mCliente getEnP1mCliente() {
        return this.enP1mCliente;
    }
    
    public void setEnP1mCliente(EnP1mCliente enP1mCliente) {
        this.enP1mCliente = enP1mCliente;
    }
    public TaGzzTipoDocCliente getTaGzzTipoDocCliente() {
        return this.taGzzTipoDocCliente;
    }
    
    public void setTaGzzTipoDocCliente(TaGzzTipoDocCliente taGzzTipoDocCliente) {
        this.taGzzTipoDocCliente = taGzzTipoDocCliente;
    }
    public String getDocCliNum() {
        return this.docCliNum;
    }
    
    public void setDocCliNum(String docCliNum) {
        this.docCliNum = docCliNum;
    }
    public char getEstRegCod() {
        return this.estRegCod;
    }
    
    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }




}


