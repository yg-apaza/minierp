package org.epis.minierp.model;
// Generated 27/11/2016 07:10:37 PM by Hibernate Tools 4.3.1



/**
 * EnP1mDocumentoUsuario generated by hbm2java
 */
public class EnP1mDocumentoUsuario  implements java.io.Serializable {


     private EnP1mDocumentoUsuarioId id;
     private EnP1mUsuario enP1mUsuario;
     private TaGzzTipoDocUsuario taGzzTipoDocUsuario;
     private String docUsuNum;
     private char estRegCod;

    public EnP1mDocumentoUsuario() {
    }

    public EnP1mDocumentoUsuario(EnP1mDocumentoUsuarioId id, EnP1mUsuario enP1mUsuario, TaGzzTipoDocUsuario taGzzTipoDocUsuario, String docUsuNum, char estRegCod) {
       this.id = id;
       this.enP1mUsuario = enP1mUsuario;
       this.taGzzTipoDocUsuario = taGzzTipoDocUsuario;
       this.docUsuNum = docUsuNum;
       this.estRegCod = estRegCod;
    }
   
    public EnP1mDocumentoUsuarioId getId() {
        return this.id;
    }
    
    public void setId(EnP1mDocumentoUsuarioId id) {
        this.id = id;
    }
    public EnP1mUsuario getEnP1mUsuario() {
        return this.enP1mUsuario;
    }
    
    public void setEnP1mUsuario(EnP1mUsuario enP1mUsuario) {
        this.enP1mUsuario = enP1mUsuario;
    }
    public TaGzzTipoDocUsuario getTaGzzTipoDocUsuario() {
        return this.taGzzTipoDocUsuario;
    }
    
    public void setTaGzzTipoDocUsuario(TaGzzTipoDocUsuario taGzzTipoDocUsuario) {
        this.taGzzTipoDocUsuario = taGzzTipoDocUsuario;
    }
    public String getDocUsuNum() {
        return this.docUsuNum;
    }
    
    public void setDocUsuNum(String docUsuNum) {
        this.docUsuNum = docUsuNum;
    }
    public char getEstRegCod() {
        return this.estRegCod;
    }
    
    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }




}


