package org.epis.minierp.model;
// Generated 04/03/2017 10:43:21 PM by Hibernate Tools 4.3.1



/**
 * EnP1mPuntoVentaId generated by hbm2java
 */
public class EnP1mPuntoVentaId  implements java.io.Serializable {


     private int punVenCod;
     private int sucCod;

    public EnP1mPuntoVentaId() {
    }

    public EnP1mPuntoVentaId(int punVenCod, int sucCod) {
       this.punVenCod = punVenCod;
       this.sucCod = sucCod;
    }
   
    public int getPunVenCod() {
        return this.punVenCod;
    }
    
    public void setPunVenCod(int punVenCod) {
        this.punVenCod = punVenCod;
    }
    public int getSucCod() {
        return this.sucCod;
    }
    
    public void setSucCod(int sucCod) {
        this.sucCod = sucCod;
    }


   public boolean equals(Object other) {
         if ( (this == other ) ) return true;
		 if ( (other == null ) ) return false;
		 if ( !(other instanceof EnP1mPuntoVentaId) ) return false;
		 EnP1mPuntoVentaId castOther = ( EnP1mPuntoVentaId ) other; 
         
		 return (this.getPunVenCod()==castOther.getPunVenCod())
 && (this.getSucCod()==castOther.getSucCod());
   }
   
   public int hashCode() {
         int result = 17;
         
         result = 37 * result + this.getPunVenCod();
         result = 37 * result + this.getSucCod();
         return result;
   }   


}


