package org.epis.minierp.model;
// Generated 26/02/2017 07:56:21 PM by Hibernate Tools 4.3.1



/**
 * EnP2mDocumentoTransportistaId generated by hbm2java
 */
public class EnP2mDocumentoTransportistaId  implements java.io.Serializable {


     private int tipDocTraCod;
     private String traCod;

    public EnP2mDocumentoTransportistaId() {
    }

    public EnP2mDocumentoTransportistaId(int tipDocTraCod, String traCod) {
       this.tipDocTraCod = tipDocTraCod;
       this.traCod = traCod;
    }
   
    public int getTipDocTraCod() {
        return this.tipDocTraCod;
    }
    
    public void setTipDocTraCod(int tipDocTraCod) {
        this.tipDocTraCod = tipDocTraCod;
    }
    public String getTraCod() {
        return this.traCod;
    }
    
    public void setTraCod(String traCod) {
        this.traCod = traCod;
    }


   public boolean equals(Object other) {
         if ( (this == other ) ) return true;
		 if ( (other == null ) ) return false;
		 if ( !(other instanceof EnP2mDocumentoTransportistaId) ) return false;
		 EnP2mDocumentoTransportistaId castOther = ( EnP2mDocumentoTransportistaId ) other; 
         
		 return (this.getTipDocTraCod()==castOther.getTipDocTraCod())
 && ( (this.getTraCod()==castOther.getTraCod()) || ( this.getTraCod()!=null && castOther.getTraCod()!=null && this.getTraCod().equals(castOther.getTraCod()) ) );
   }
   
   public int hashCode() {
         int result = 17;
         
         result = 37 * result + this.getTipDocTraCod();
         result = 37 * result + ( getTraCod() == null ? 0 : this.getTraCod().hashCode() );
         return result;
   }   


}


