package org.epis.minierp.dao.contabilidad.cajaBancos;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.annotations.Immutable;

@Entity
@Immutable
@Table(name="caja",catalog="episerp")
public class CajaModel implements Serializable{
    @Id 
    @Column(name="AsiDetCod")
    private String numDet;
    
    @Column(name="AsiCabCod")
    private String numCorr;
    
    @Column(name="AsiCabFec")
    private Date fecOpe;
    
    @Column(name="AsiCabTip")
    private String desOpe;
    
    @Column(name="CueCod")
    private String codCue;
    
    @Column(name="CueDes")
    private String denOpe;
    
    @Column(name="debe")
    private String deudor;
    
    @Column(name="haber")
    private String acreedor;

    public String getNumCorr() {
        return numCorr;
    }

    public void setNumCorr(String numCorr) {
        this.numCorr = numCorr;
    }

    public Date getFecOpe() {
        return fecOpe;
    }

    public void setFecOpe(Date fecOpe) {
        this.fecOpe = fecOpe;
    }

    public String getDesOpe() {
        return desOpe;
    }

    public void setDesOpe(String desOpe) {
        this.desOpe = desOpe;
    }

    public String getCodCue() {
        return codCue;
    }

    public void setCodCue(String codCue) {
        this.codCue = codCue;
    }

    public String getDenOpe() {
        return denOpe;
    }

    public void setDenOpe(String denOpe) {
        this.denOpe = denOpe;
    }

    public String getDeudor() {
        return deudor;
    }

    public void setDeudor(String deudor) {
        this.deudor = deudor;
    }

    public String getAcreedor() {
        return acreedor;
    }

    public void setAcreedor(String acreedor) {
        this.acreedor = acreedor;
    } 
    
    @Override
    public String toString() {
        return "Caja{" + "numCorr=" + numCorr + ", fecOpe=" + fecOpe + ", desOpe=" + desOpe + ", codCue=" + codCue + ", denOpe=" + denOpe + ", deudor=" + deudor + ", acreedor=" + acreedor + '}';
    }   
}