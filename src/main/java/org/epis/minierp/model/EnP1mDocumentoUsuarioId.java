package org.epis.minierp.model;
// Generated 27/11/2016 02:57:20 PM by Hibernate Tools 4.3.1



/**
 * EnP1mDocumentoUsuarioId generated by hbm2java
 */
public class EnP1mDocumentoUsuarioId  implements java.io.Serializable {


     private String usuCod;
     private int tipDocUsuCod;

    public EnP1mDocumentoUsuarioId() {
    }

    public EnP1mDocumentoUsuarioId(String usuCod, int tipDocUsuCod) {
       this.usuCod = usuCod;
       this.tipDocUsuCod = tipDocUsuCod;
    }
   
    public String getUsuCod() {
        return this.usuCod;
    }
    
    public void setUsuCod(String usuCod) {
        this.usuCod = usuCod;
    }
    public int getTipDocUsuCod() {
        return this.tipDocUsuCod;
    }
    
    public void setTipDocUsuCod(int tipDocUsuCod) {
        this.tipDocUsuCod = tipDocUsuCod;
    }


   public boolean equals(Object other) {
         if ( (this == other ) ) return true;
		 if ( (other == null ) ) return false;
		 if ( !(other instanceof EnP1mDocumentoUsuarioId) ) return false;
		 EnP1mDocumentoUsuarioId castOther = ( EnP1mDocumentoUsuarioId ) other; 
         
		 return ( (this.getUsuCod()==castOther.getUsuCod()) || ( this.getUsuCod()!=null && castOther.getUsuCod()!=null && this.getUsuCod().equals(castOther.getUsuCod()) ) )
 && (this.getTipDocUsuCod()==castOther.getTipDocUsuCod());
   }
   
   public int hashCode() {
         int result = 17;
         
         result = 37 * result + ( getUsuCod() == null ? 0 : this.getUsuCod().hashCode() );
         result = 37 * result + this.getTipDocUsuCod();
         return result;
   }   


}


