package org.epis.minierp.model;
// Generated 15/11/2016 11:23:24 PM by Hibernate Tools 4.3.1



/**
 * EnP1mClientesRutas generated by hbm2java
 */
public class EnP1mClientesRutas  implements java.io.Serializable {


     private EnP1mClientesRutasId id;
     private EnP1mCatalogoRuta enP1mCatalogoRuta;
     private EnP1mCliente enP1mCliente;
     private String cliRutDes;
     private char estRegCod;

    public EnP1mClientesRutas() {
    }

    public EnP1mClientesRutas(EnP1mClientesRutasId id, EnP1mCatalogoRuta enP1mCatalogoRuta, EnP1mCliente enP1mCliente, String cliRutDes, char estRegCod) {
       this.id = id;
       this.enP1mCatalogoRuta = enP1mCatalogoRuta;
       this.enP1mCliente = enP1mCliente;
       this.cliRutDes = cliRutDes;
       this.estRegCod = estRegCod;
    }
   
    public EnP1mClientesRutasId getId() {
        return this.id;
    }
    
    public void setId(EnP1mClientesRutasId id) {
        this.id = id;
    }
    public EnP1mCatalogoRuta getEnP1mCatalogoRuta() {
        return this.enP1mCatalogoRuta;
    }
    
    public void setEnP1mCatalogoRuta(EnP1mCatalogoRuta enP1mCatalogoRuta) {
        this.enP1mCatalogoRuta = enP1mCatalogoRuta;
    }
    public EnP1mCliente getEnP1mCliente() {
        return this.enP1mCliente;
    }
    
    public void setEnP1mCliente(EnP1mCliente enP1mCliente) {
        this.enP1mCliente = enP1mCliente;
    }
    public String getCliRutDes() {
        return this.cliRutDes;
    }
    
    public void setCliRutDes(String cliRutDes) {
        this.cliRutDes = cliRutDes;
    }
    public char getEstRegCod() {
        return this.estRegCod;
    }
    
    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }




}


