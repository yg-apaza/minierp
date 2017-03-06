package org.epis.minierp.model;
// Generated 04/03/2017 10:43:21 PM by Hibernate Tools 4.3.1



/**
 * EnP2mDocumentoTransportista generated by hbm2java
 */
public class EnP2mDocumentoTransportista  implements java.io.Serializable {


     private EnP2mDocumentoTransportistaId id;
     private EnP2mTransportista enP2mTransportista;
     private TaGzzTipoDocTransportista taGzzTipoDocTransportista;
     private String docTraNum;
     private char estRegCod;

    public EnP2mDocumentoTransportista() {
    }

    public EnP2mDocumentoTransportista(EnP2mDocumentoTransportistaId id, EnP2mTransportista enP2mTransportista, TaGzzTipoDocTransportista taGzzTipoDocTransportista, String docTraNum, char estRegCod) {
       this.id = id;
       this.enP2mTransportista = enP2mTransportista;
       this.taGzzTipoDocTransportista = taGzzTipoDocTransportista;
       this.docTraNum = docTraNum;
       this.estRegCod = estRegCod;
    }
   
    public EnP2mDocumentoTransportistaId getId() {
        return this.id;
    }
    
    public void setId(EnP2mDocumentoTransportistaId id) {
        this.id = id;
    }
    public EnP2mTransportista getEnP2mTransportista() {
        return this.enP2mTransportista;
    }
    
    public void setEnP2mTransportista(EnP2mTransportista enP2mTransportista) {
        this.enP2mTransportista = enP2mTransportista;
    }
    public TaGzzTipoDocTransportista getTaGzzTipoDocTransportista() {
        return this.taGzzTipoDocTransportista;
    }
    
    public void setTaGzzTipoDocTransportista(TaGzzTipoDocTransportista taGzzTipoDocTransportista) {
        this.taGzzTipoDocTransportista = taGzzTipoDocTransportista;
    }
    public String getDocTraNum() {
        return this.docTraNum;
    }
    
    public void setDocTraNum(String docTraNum) {
        this.docTraNum = docTraNum;
    }
    public char getEstRegCod() {
        return this.estRegCod;
    }
    
    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }




}


