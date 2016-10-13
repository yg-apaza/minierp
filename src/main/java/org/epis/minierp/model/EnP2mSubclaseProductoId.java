package org.epis.minierp.model;
// Generated 13/10/2016 06:03:52 PM by Hibernate Tools 4.3.1


import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 * EnP2mSubclaseProductoId generated by hbm2java
 */
@Embeddable
public class EnP2mSubclaseProductoId  implements java.io.Serializable {


     private String subClaProCod;
     private String claProCod;

    public EnP2mSubclaseProductoId() {
    }

    public EnP2mSubclaseProductoId(String subClaProCod, String claProCod) {
       this.subClaProCod = subClaProCod;
       this.claProCod = claProCod;
    }
   


    @Column(name="SubClaProCod", nullable=false, length=2)
    public String getSubClaProCod() {
        return this.subClaProCod;
    }
    
    public void setSubClaProCod(String subClaProCod) {
        this.subClaProCod = subClaProCod;
    }


    @Column(name="ClaProCod", nullable=false, length=2)
    public String getClaProCod() {
        return this.claProCod;
    }
    
    public void setClaProCod(String claProCod) {
        this.claProCod = claProCod;
    }


   public boolean equals(Object other) {
         if ( (this == other ) ) return true;
		 if ( (other == null ) ) return false;
		 if ( !(other instanceof EnP2mSubclaseProductoId) ) return false;
		 EnP2mSubclaseProductoId castOther = ( EnP2mSubclaseProductoId ) other; 
         
		 return ( (this.getSubClaProCod()==castOther.getSubClaProCod()) || ( this.getSubClaProCod()!=null && castOther.getSubClaProCod()!=null && this.getSubClaProCod().equals(castOther.getSubClaProCod()) ) )
 && ( (this.getClaProCod()==castOther.getClaProCod()) || ( this.getClaProCod()!=null && castOther.getClaProCod()!=null && this.getClaProCod().equals(castOther.getClaProCod()) ) );
   }
   
   public int hashCode() {
         int result = 17;
         
         result = 37 * result + ( getSubClaProCod() == null ? 0 : this.getSubClaProCod().hashCode() );
         result = 37 * result + ( getClaProCod() == null ? 0 : this.getClaProCod().hashCode() );
         return result;
   }   


}


