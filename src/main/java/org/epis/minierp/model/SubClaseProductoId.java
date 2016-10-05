package org.epis.minierp.model;

import java.io.Serializable;
import javax.persistence.Embeddable;

@Embeddable
class SubClaseProductoId implements Serializable {
   
    ClaseProductoId claProdId;
    String subClaProCod;

    public String getSubClaProCod() {
        return subClaProCod;
    }

    public void setSubClaProCod(String subClaProCod) {
        this.subClaProCod = subClaProCod;
    }
}
