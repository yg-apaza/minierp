package org.epis.minierp.model;
// Generated 27/11/2016 02:57:20 PM by Hibernate Tools 4.3.1



/**
 * EnP1mClientesRutasId generated by hbm2java
 */
public class EnP1mClientesRutasId  implements java.io.Serializable {


     private int catRutCod;
     private String cliCod;

    public EnP1mClientesRutasId() {
    }

    public EnP1mClientesRutasId(int catRutCod, String cliCod) {
       this.catRutCod = catRutCod;
       this.cliCod = cliCod;
    }
   
    public int getCatRutCod() {
        return this.catRutCod;
    }
    
    public void setCatRutCod(int catRutCod) {
        this.catRutCod = catRutCod;
    }
    public String getCliCod() {
        return this.cliCod;
    }
    
    public void setCliCod(String cliCod) {
        this.cliCod = cliCod;
    }


   public boolean equals(Object other) {
         if ( (this == other ) ) return true;
		 if ( (other == null ) ) return false;
		 if ( !(other instanceof EnP1mClientesRutasId) ) return false;
		 EnP1mClientesRutasId castOther = ( EnP1mClientesRutasId ) other; 
         
		 return (this.getCatRutCod()==castOther.getCatRutCod())
 && ( (this.getCliCod()==castOther.getCliCod()) || ( this.getCliCod()!=null && castOther.getCliCod()!=null && this.getCliCod().equals(castOther.getCliCod()) ) );
   }
   
   public int hashCode() {
         int result = 17;
         
         result = 37 * result + this.getCatRutCod();
         result = 37 * result + ( getCliCod() == null ? 0 : this.getCliCod().hashCode() );
         return result;
   }   


}


