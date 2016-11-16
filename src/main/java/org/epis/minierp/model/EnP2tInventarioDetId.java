package org.epis.minierp.model;
// Generated 15/11/2016 11:23:24 PM by Hibernate Tools 4.3.1



/**
 * EnP2tInventarioDetId generated by hbm2java
 */
public class EnP2tInventarioDetId  implements java.io.Serializable {


     private int invDetCod;
     private String invCabCod;

    public EnP2tInventarioDetId() {
    }

    public EnP2tInventarioDetId(int invDetCod, String invCabCod) {
       this.invDetCod = invDetCod;
       this.invCabCod = invCabCod;
    }
   
    public int getInvDetCod() {
        return this.invDetCod;
    }
    
    public void setInvDetCod(int invDetCod) {
        this.invDetCod = invDetCod;
    }
    public String getInvCabCod() {
        return this.invCabCod;
    }
    
    public void setInvCabCod(String invCabCod) {
        this.invCabCod = invCabCod;
    }


   public boolean equals(Object other) {
         if ( (this == other ) ) return true;
		 if ( (other == null ) ) return false;
		 if ( !(other instanceof EnP2tInventarioDetId) ) return false;
		 EnP2tInventarioDetId castOther = ( EnP2tInventarioDetId ) other; 
         
		 return (this.getInvDetCod()==castOther.getInvDetCod())
 && ( (this.getInvCabCod()==castOther.getInvCabCod()) || ( this.getInvCabCod()!=null && castOther.getInvCabCod()!=null && this.getInvCabCod().equals(castOther.getInvCabCod()) ) );
   }
   
   public int hashCode() {
         int result = 17;
         
         result = 37 * result + this.getInvDetCod();
         result = 37 * result + ( getInvCabCod() == null ? 0 : this.getInvCabCod().hashCode() );
         return result;
   }   


}


