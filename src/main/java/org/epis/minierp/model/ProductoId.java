package org.epis.minierp.model;

import java.io.Serializable;
import javax.persistence.Embeddable;

@Embeddable
class ProductoId implements Serializable {
   
    SubClaseProductoId subClaProdId;
    String proCod;
    
    public String getProCod() {
        return proCod;
    }

    public void setProCod(String proCod) {
        this.proCod = proCod;
    }

   //implements equals and hashCode
}