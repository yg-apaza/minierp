package org.epis.minierp.model;
// Generated 26/02/2017 07:56:21 PM by Hibernate Tools 4.3.1



/**
 * EnP2mComboDetId generated by hbm2java
 */
public class EnP2mComboDetId  implements java.io.Serializable {


     private String comCod;
     private String proCod;
     private String subClaProCod;
     private String claProCod;

    public EnP2mComboDetId() {
    }

    public EnP2mComboDetId(String comCod, String proCod, String subClaProCod, String claProCod) {
       this.comCod = comCod;
       this.proCod = proCod;
       this.subClaProCod = subClaProCod;
       this.claProCod = claProCod;
    }
   
    public String getComCod() {
        return this.comCod;
    }
    
    public void setComCod(String comCod) {
        this.comCod = comCod;
    }
    public String getProCod() {
        return this.proCod;
    }
    
    public void setProCod(String proCod) {
        this.proCod = proCod;
    }
    public String getSubClaProCod() {
        return this.subClaProCod;
    }
    
    public void setSubClaProCod(String subClaProCod) {
        this.subClaProCod = subClaProCod;
    }
    public String getClaProCod() {
        return this.claProCod;
    }
    
    public void setClaProCod(String claProCod) {
        this.claProCod = claProCod;
    }


   public boolean equals(Object other) {
         if ( (this == other ) ) return true;
		 if ( (other == null ) ) return false;
		 if ( !(other instanceof EnP2mComboDetId) ) return false;
		 EnP2mComboDetId castOther = ( EnP2mComboDetId ) other; 
         
		 return ( (this.getComCod()==castOther.getComCod()) || ( this.getComCod()!=null && castOther.getComCod()!=null && this.getComCod().equals(castOther.getComCod()) ) )
 && ( (this.getProCod()==castOther.getProCod()) || ( this.getProCod()!=null && castOther.getProCod()!=null && this.getProCod().equals(castOther.getProCod()) ) )
 && ( (this.getSubClaProCod()==castOther.getSubClaProCod()) || ( this.getSubClaProCod()!=null && castOther.getSubClaProCod()!=null && this.getSubClaProCod().equals(castOther.getSubClaProCod()) ) )
 && ( (this.getClaProCod()==castOther.getClaProCod()) || ( this.getClaProCod()!=null && castOther.getClaProCod()!=null && this.getClaProCod().equals(castOther.getClaProCod()) ) );
   }
   
   public int hashCode() {
         int result = 17;
         
         result = 37 * result + ( getComCod() == null ? 0 : this.getComCod().hashCode() );
         result = 37 * result + ( getProCod() == null ? 0 : this.getProCod().hashCode() );
         result = 37 * result + ( getSubClaProCod() == null ? 0 : this.getSubClaProCod().hashCode() );
         result = 37 * result + ( getClaProCod() == null ? 0 : this.getClaProCod().hashCode() );
         return result;
   }   


}

