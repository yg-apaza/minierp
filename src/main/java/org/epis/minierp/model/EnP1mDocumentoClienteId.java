package org.epis.minierp.model;
// Generated 30/10/2016 12:40:40 AM by Hibernate Tools 4.3.1



/**
 * EnP1mDocumentoClienteId generated by hbm2java
 */
public class EnP1mDocumentoClienteId  implements java.io.Serializable {


     private String cliCod;
     private int tipDocCliCod;

    public EnP1mDocumentoClienteId() {
    }

    public EnP1mDocumentoClienteId(String cliCod, int tipDocCliCod) {
       this.cliCod = cliCod;
       this.tipDocCliCod = tipDocCliCod;
    }
   
    public String getCliCod() {
        return this.cliCod;
    }
    
    public void setCliCod(String cliCod) {
        this.cliCod = cliCod;
    }
    public int getTipDocCliCod() {
        return this.tipDocCliCod;
    }
    
    public void setTipDocCliCod(int tipDocCliCod) {
        this.tipDocCliCod = tipDocCliCod;
    }


   public boolean equals(Object other) {
         if ( (this == other ) ) return true;
		 if ( (other == null ) ) return false;
		 if ( !(other instanceof EnP1mDocumentoClienteId) ) return false;
		 EnP1mDocumentoClienteId castOther = ( EnP1mDocumentoClienteId ) other; 
         
		 return ( (this.getCliCod()==castOther.getCliCod()) || ( this.getCliCod()!=null && castOther.getCliCod()!=null && this.getCliCod().equals(castOther.getCliCod()) ) )
 && (this.getTipDocCliCod()==castOther.getTipDocCliCod());
   }
   
   public int hashCode() {
         int result = 17;
         
         result = 37 * result + ( getCliCod() == null ? 0 : this.getCliCod().hashCode() );
         result = 37 * result + this.getTipDocCliCod();
         return result;
   }   


}


