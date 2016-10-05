package org.epis.minierp.model;

import java.io.Serializable;
import javax.persistence.Embeddable;

@Embeddable
class ClaseProductoId implements Serializable {
   String claProCod;

    public String getClaProCod() {
        return claProCod;
    }

    public void setClaProCod(String claProCod) {
        this.claProCod = claProCod;
    }
}