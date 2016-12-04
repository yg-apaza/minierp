package org.epis.minierp.model;
// Generated 04/12/2016 10:29:37 AM by Hibernate Tools 4.3.1



/**
 * EnP4tFacturaCompraDetId generated by hbm2java
 */
public class EnP4tFacturaCompraDetId  implements java.io.Serializable {


     private int facComDetCod;
     private String facComCabCod;

    public EnP4tFacturaCompraDetId() {
    }

    public EnP4tFacturaCompraDetId(int facComDetCod, String facComCabCod) {
       this.facComDetCod = facComDetCod;
       this.facComCabCod = facComCabCod;
    }
   
    public int getFacComDetCod() {
        return this.facComDetCod;
    }
    
    public void setFacComDetCod(int facComDetCod) {
        this.facComDetCod = facComDetCod;
    }
    public String getFacComCabCod() {
        return this.facComCabCod;
    }
    
    public void setFacComCabCod(String facComCabCod) {
        this.facComCabCod = facComCabCod;
    }


   public boolean equals(Object other) {
         if ( (this == other ) ) return true;
		 if ( (other == null ) ) return false;
		 if ( !(other instanceof EnP4tFacturaCompraDetId) ) return false;
		 EnP4tFacturaCompraDetId castOther = ( EnP4tFacturaCompraDetId ) other; 
         
		 return (this.getFacComDetCod()==castOther.getFacComDetCod())
 && ( (this.getFacComCabCod()==castOther.getFacComCabCod()) || ( this.getFacComCabCod()!=null && castOther.getFacComCabCod()!=null && this.getFacComCabCod().equals(castOther.getFacComCabCod()) ) );
   }
   
   public int hashCode() {
         int result = 17;
         
         result = 37 * result + this.getFacComDetCod();
         result = 37 * result + ( getFacComCabCod() == null ? 0 : this.getFacComCabCod().hashCode() );
         return result;
   }   


}


