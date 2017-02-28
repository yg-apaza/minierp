package org.epis.minierp.model;
// Generated 26/02/2017 07:56:21 PM by Hibernate Tools 4.3.1



/**
 * EnP1cPreventaRealizadasId generated by hbm2java
 */
public class EnP1cPreventaRealizadasId  implements java.io.Serializable {


     private int preVenCabCod;
     private int facVenCabCod;

    public EnP1cPreventaRealizadasId() {
    }

    public EnP1cPreventaRealizadasId(int preVenCabCod, int facVenCabCod) {
       this.preVenCabCod = preVenCabCod;
       this.facVenCabCod = facVenCabCod;
    }
   
    public int getPreVenCabCod() {
        return this.preVenCabCod;
    }
    
    public void setPreVenCabCod(int preVenCabCod) {
        this.preVenCabCod = preVenCabCod;
    }
    public int getFacVenCabCod() {
        return this.facVenCabCod;
    }
    
    public void setFacVenCabCod(int facVenCabCod) {
        this.facVenCabCod = facVenCabCod;
    }


   public boolean equals(Object other) {
         if ( (this == other ) ) return true;
		 if ( (other == null ) ) return false;
		 if ( !(other instanceof EnP1cPreventaRealizadasId) ) return false;
		 EnP1cPreventaRealizadasId castOther = ( EnP1cPreventaRealizadasId ) other; 
         
		 return (this.getPreVenCabCod()==castOther.getPreVenCabCod())
 && (this.getFacVenCabCod()==castOther.getFacVenCabCod());
   }
   
   public int hashCode() {
         int result = 17;
         
         result = 37 * result + this.getPreVenCabCod();
         result = 37 * result + this.getFacVenCabCod();
         return result;
   }   


}


