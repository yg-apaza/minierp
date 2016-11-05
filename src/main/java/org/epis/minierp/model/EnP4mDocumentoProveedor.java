package org.epis.minierp.model;
// Generated 05/11/2016 04:10:34 PM by Hibernate Tools 4.3.1



/**
 * EnP4mDocumentoProveedor generated by hbm2java
 */
public class EnP4mDocumentoProveedor  implements java.io.Serializable {


     private EnP4mDocumentoProveedorId id;
     private EnP4mProveedor enP4mProveedor;
     private TaGzzTipoDocProveedor taGzzTipoDocProveedor;
     private String docProNum;
     private char estRegCod;

    public EnP4mDocumentoProveedor() {
    }

    public EnP4mDocumentoProveedor(EnP4mDocumentoProveedorId id, EnP4mProveedor enP4mProveedor, TaGzzTipoDocProveedor taGzzTipoDocProveedor, String docProNum, char estRegCod) {
       this.id = id;
       this.enP4mProveedor = enP4mProveedor;
       this.taGzzTipoDocProveedor = taGzzTipoDocProveedor;
       this.docProNum = docProNum;
       this.estRegCod = estRegCod;
    }
   
    public EnP4mDocumentoProveedorId getId() {
        return this.id;
    }
    
    public void setId(EnP4mDocumentoProveedorId id) {
        this.id = id;
    }
    public EnP4mProveedor getEnP4mProveedor() {
        return this.enP4mProveedor;
    }
    
    public void setEnP4mProveedor(EnP4mProveedor enP4mProveedor) {
        this.enP4mProveedor = enP4mProveedor;
    }
    public TaGzzTipoDocProveedor getTaGzzTipoDocProveedor() {
        return this.taGzzTipoDocProveedor;
    }
    
    public void setTaGzzTipoDocProveedor(TaGzzTipoDocProveedor taGzzTipoDocProveedor) {
        this.taGzzTipoDocProveedor = taGzzTipoDocProveedor;
    }
    public String getDocProNum() {
        return this.docProNum;
    }
    
    public void setDocProNum(String docProNum) {
        this.docProNum = docProNum;
    }
    public char getEstRegCod() {
        return this.estRegCod;
    }
    
    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }




}


