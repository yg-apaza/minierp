package org.epis.minierp.model;
// Generated 26/02/2017 07:56:21 PM by Hibernate Tools 4.3.1



/**
 * EnP1mCarteraClientesId generated by hbm2java
 */
public class EnP1mCarteraClientesId  implements java.io.Serializable {


     private String cliCod;
     private String usuCod;

    public EnP1mCarteraClientesId() {
    }

    public EnP1mCarteraClientesId(String cliCod, String usuCod) {
       this.cliCod = cliCod;
       this.usuCod = usuCod;
    }
   
    public String getCliCod() {
        return this.cliCod;
    }
    
    public void setCliCod(String cliCod) {
        this.cliCod = cliCod;
    }
    public String getUsuCod() {
        return this.usuCod;
    }
    
    public void setUsuCod(String usuCod) {
        this.usuCod = usuCod;
    }


   public boolean equals(Object other) {
         if ( (this == other ) ) return true;
		 if ( (other == null ) ) return false;
		 if ( !(other instanceof EnP1mCarteraClientesId) ) return false;
		 EnP1mCarteraClientesId castOther = ( EnP1mCarteraClientesId ) other; 
         
		 return ( (this.getCliCod()==castOther.getCliCod()) || ( this.getCliCod()!=null && castOther.getCliCod()!=null && this.getCliCod().equals(castOther.getCliCod()) ) )
 && ( (this.getUsuCod()==castOther.getUsuCod()) || ( this.getUsuCod()!=null && castOther.getUsuCod()!=null && this.getUsuCod().equals(castOther.getUsuCod()) ) );
   }
   
   public int hashCode() {
         int result = 17;
         
         result = 37 * result + ( getCliCod() == null ? 0 : this.getCliCod().hashCode() );
         result = 37 * result + ( getUsuCod() == null ? 0 : this.getUsuCod().hashCode() );
         return result;
   }   


}


