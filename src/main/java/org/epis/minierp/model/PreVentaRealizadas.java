package org.epis.minierp.model;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "en_p1c_preventa_realizadas")
public class PreVentaRealizadas implements Serializable{
    
    @Id
    private String preVenCabCod;

    @Id
    private String facVenCabCod;
    
    @Column(name = "PreVenReaFec")
    private Date preVenReaFec;

    public String getPreVenCabCod() {
        return preVenCabCod;
    }

    public String getFacVenCabCod() {
        return facVenCabCod;
    }

    public Date getPreVenReaFec() {
        return preVenReaFec;
    }

    public void setPreVenCabCod(String preVenCabCod) {
        this.preVenCabCod = preVenCabCod;
    }

    public void setFacVenCabCod(String facVenCabCod) {
        this.facVenCabCod = facVenCabCod;
    }

    public void setPreVenReaFec(Date preVenReaFec) {
        this.preVenReaFec = preVenReaFec;
    }

    @Override
    public String toString() {
        return "PreVentaRealizadas{" + "preVenCabCod=" + preVenCabCod + ", facVenCabCod=" + facVenCabCod + ", preVenReaFec=" + preVenReaFec + '}';
    }
    
}
