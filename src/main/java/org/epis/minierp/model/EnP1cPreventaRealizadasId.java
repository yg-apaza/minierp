package org.epis.minierp.model;
// Generated 05/11/2016 03:48:27 PM by Hibernate Tools 4.3.1



/**
 * EnP1cPreventaRealizadasId generated by hbm2java
 */
public class EnP1cPreventaRealizadasId  implements java.io.Serializable {


     private String preVenCabCod;
     private String facVenCabCod;

    public EnP1cPreventaRealizadasId() {
    }

    public EnP1cPreventaRealizadasId(String preVenCabCod, String facVenCabCod) {
       this.preVenCabCod = preVenCabCod;
       this.facVenCabCod = facVenCabCod;
    }
   
    public String getPreVenCabCod() {
        return this.preVenCabCod;
    }
    
    public void setPreVenCabCod(String preVenCabCod) {
        this.preVenCabCod = preVenCabCod;
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
		 if ( !(other instanceof EnP1cPreventaRealizadasId) ) return false;
		 EnP1cPreventaRealizadasId castOther = ( EnP1cPreventaRealizadasId ) other; 
         
		 return ( (this.getPreVenCabCod()==castOther.getPreVenCabCod()) || ( this.getPreVenCabCod()!=null && castOther.getPreVenCabCod()!=null && this.getPreVenCabCod().equals(castOther.getPreVenCabCod()) ) )
 && ( (this.getFacVenCabCod()==castOther.getFacVenCabCod()) || ( this.getFacVenCabCod()!=null && castOther.getFacVenCabCod()!=null && this.getFacVenCabCod().equals(castOther.getFacVenCabCod()) ) );
   }
   
   public int hashCode() {
         int result = 17;
         
         result = 37 * result + ( getPreVenCabCod() == null ? 0 : this.getPreVenCabCod().hashCode() );
         result = 37 * result + ( getFacVenCabCod() == null ? 0 : this.getFacVenCabCod().hashCode() );
         return result;
   }   


}


