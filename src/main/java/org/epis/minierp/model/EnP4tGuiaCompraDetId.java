package org.epis.minierp.model;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class EnP4tGuiaCompraDetId implements java.io.Serializable {
    private int guiComDetCod;
    private String guiComCabCod;

    public EnP4tGuiaCompraDetId() {
    }

    public EnP4tGuiaCompraDetId(int guiComDetCod, String guiComCabCod) {
        this.guiComDetCod = guiComDetCod;
        this.guiComCabCod = guiComCabCod;
    }

    @Column(name = "GuiComDetCod", nullable = false)
    public int getGuiComDetCod() {
        return this.guiComDetCod;
    }

    public void setGuiComDetCod(int guiComDetCod) {
        this.guiComDetCod = guiComDetCod;
    }

    @Column(name = "GuiComCabCod", nullable = false, length = 10)
    public String getGuiComCabCod() {
        return this.guiComCabCod;
    }

    public void setGuiComCabCod(String guiComCabCod) {
        this.guiComCabCod = guiComCabCod;
    }

    public boolean equals(Object other) {
        if ((this == other)) {
            return true;
        }
        if ((other == null)) {
            return false;
        }
        if (!(other instanceof EnP4tGuiaCompraDetId)) {
            return false;
        }
        EnP4tGuiaCompraDetId castOther = (EnP4tGuiaCompraDetId) other;

        return (this.getGuiComDetCod() == castOther.getGuiComDetCod())
                && ((this.getGuiComCabCod() == castOther.getGuiComCabCod()) || (this.getGuiComCabCod() != null && castOther.getGuiComCabCod() != null && this.getGuiComCabCod().equals(castOther.getGuiComCabCod())));
    }

    public int hashCode() {
        int result = 17;

        result = 37 * result + this.getGuiComDetCod();
        result = 37 * result + (getGuiComCabCod() == null ? 0 : this.getGuiComCabCod().hashCode());
        return result;
    }

    @Override
    public String toString() {
        return "EnP4tGuiaCompraDetId{" + "guiComDetCod=" + guiComDetCod + ", guiComCabCod=" + guiComCabCod + '}';
    }
}
