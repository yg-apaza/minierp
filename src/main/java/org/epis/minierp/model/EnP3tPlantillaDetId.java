package org.epis.minierp.model;
// Generated 04/03/2017 10:43:21 PM by Hibernate Tools 4.3.1



/**
 * EnP3tPlantillaDetId generated by hbm2java
 */
public class EnP3tPlantillaDetId  implements java.io.Serializable {


     private int plaDetCod;
     private int plaCod;

    public EnP3tPlantillaDetId() {
    }

    public EnP3tPlantillaDetId(int plaDetCod, int plaCod) {
       this.plaDetCod = plaDetCod;
       this.plaCod = plaCod;
    }
   
    public int getPlaDetCod() {
        return this.plaDetCod;
    }
    
    public void setPlaDetCod(int plaDetCod) {
        this.plaDetCod = plaDetCod;
    }
    public int getPlaCod() {
        return this.plaCod;
    }
    
    public void setPlaCod(int plaCod) {
        this.plaCod = plaCod;
    }


   public boolean equals(Object other) {
         if ( (this == other ) ) return true;
		 if ( (other == null ) ) return false;
		 if ( !(other instanceof EnP3tPlantillaDetId) ) return false;
		 EnP3tPlantillaDetId castOther = ( EnP3tPlantillaDetId ) other; 
         
		 return (this.getPlaDetCod()==castOther.getPlaDetCod())
 && (this.getPlaCod()==castOther.getPlaCod());
   }
   
   public int hashCode() {
         int result = 17;
         
         result = 37 * result + this.getPlaDetCod();
         result = 37 * result + this.getPlaCod();
         return result;
   }   


}


