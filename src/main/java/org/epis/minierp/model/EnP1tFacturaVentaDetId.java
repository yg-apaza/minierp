package org.epis.minierp.model;
// Generated 28/10/2016 01:30:37 PM by Hibernate Tools 4.3.1



/**
 * EnP1tFacturaVentaDetId generated by hbm2java
 */
public class EnP1tFacturaVentaDetId  implements java.io.Serializable {


     private int facVenDetCod;
     private String facVenCabCod;

    public EnP1tFacturaVentaDetId() {
    }

    public EnP1tFacturaVentaDetId(int facVenDetCod, String facVenCabCod) {
       this.facVenDetCod = facVenDetCod;
       this.facVenCabCod = facVenCabCod;
    }
   
    public int getFacVenDetCod() {
        return this.facVenDetCod;
    }
    
    public void setFacVenDetCod(int facVenDetCod) {
        this.facVenDetCod = facVenDetCod;
    }
    public String getFacVenCabCod() {
        return this.facVenCabCod;
    }
    
    public void setFacVenCabCod(String facVenCabCod) {
        this.facVenCabCod = facVenCabCod;
    }


   public boolean equals(Object other) {
         if ( (this == other ) ) return true;
		 if ( (other == null ) ) return false;
		 if ( !(other instanceof EnP1tFacturaVentaDetId) ) return false;
		 EnP1tFacturaVentaDetId castOther = ( EnP1tFacturaVentaDetId ) other; 
         
		 return (this.getFacVenDetCod()==castOther.getFacVenDetCod())
 && ( (this.getFacVenCabCod()==castOther.getFacVenCabCod()) || ( this.getFacVenCabCod()!=null && castOther.getFacVenCabCod()!=null && this.getFacVenCabCod().equals(castOther.getFacVenCabCod()) ) );
   }
   
   public int hashCode() {
         int result = 17;
         
         result = 37 * result + this.getFacVenDetCod();
         result = 37 * result + ( getFacVenCabCod() == null ? 0 : this.getFacVenCabCod().hashCode() );
         return result;
   }   


}


