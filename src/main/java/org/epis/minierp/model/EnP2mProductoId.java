package org.epis.minierp.model;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class EnP2mProductoId implements java.io.Serializable {
    private String proCod;
    private String subClaProCod;
    private String claProCod;

    public EnP2mProductoId() {
    }

    public EnP2mProductoId(String proCod, String subClaProCod, String claProCod) {
        this.proCod = proCod;
        this.subClaProCod = subClaProCod;
        this.claProCod = claProCod;
    }

    @Column(name = "ProCod", nullable = false, length = 15)
    public String getProCod() {
        return this.proCod;
    }

    public void setProCod(String proCod) {
        this.proCod = proCod;
    }

    @Column(name = "SubClaProCod", nullable = false, length = 2)
    public String getSubClaProCod() {
        return this.subClaProCod;
    }

    public void setSubClaProCod(String subClaProCod) {
        this.subClaProCod = subClaProCod;
    }

    @Column(name = "ClaProCod", nullable = false, length = 2)
    public String getClaProCod() {
        return this.claProCod;
    }

    public void setClaProCod(String claProCod) {
        this.claProCod = claProCod;
    }

    public boolean equals(Object other) {
        if ((this == other)) {
            return true;
        }
        if ((other == null)) {
            return false;
        }
        if (!(other instanceof EnP2mProductoId)) {
            return false;
        }
        EnP2mProductoId castOther = (EnP2mProductoId) other;

        return ((this.getProCod() == castOther.getProCod()) || (this.getProCod() != null && castOther.getProCod() != null && this.getProCod().equals(castOther.getProCod())))
                && ((this.getSubClaProCod() == castOther.getSubClaProCod()) || (this.getSubClaProCod() != null && castOther.getSubClaProCod() != null && this.getSubClaProCod().equals(castOther.getSubClaProCod())))
                && ((this.getClaProCod() == castOther.getClaProCod()) || (this.getClaProCod() != null && castOther.getClaProCod() != null && this.getClaProCod().equals(castOther.getClaProCod())));
    }

    public int hashCode() {
        int result = 17;

        result = 37 * result + (getProCod() == null ? 0 : this.getProCod().hashCode());
        result = 37 * result + (getSubClaProCod() == null ? 0 : this.getSubClaProCod().hashCode());
        result = 37 * result + (getClaProCod() == null ? 0 : this.getClaProCod().hashCode());
        return result;
    }

    @Override
    public String toString() {
        return "EnP2mProductoId{" + "proCod=" + proCod + ", subClaProCod=" + subClaProCod + ", claProCod=" + claProCod + '}';
    }
}