package org.epis.minierp.dao.contabilidad.cajaBancos;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Id;

public class BancosModel {
    @Id 
    @Column(name="LibDiaCod")
    private String libDiaCod;

    @Id
    @Column(name="AsiDetCod")
    private int asiDetCod;
    
    @Id
    @Column(name="AsiCabCod")
    private int asiCabCod;
    
    @Column(name="AsiCabFec")
    private Date asiCabFec;
    
    @Column(name="AsiCabTip")
    private String asiCabTip;
    
    @Column(name="CueCod")
    private String cueCod;
    
    @Column(name="CueDes")
    private String cueDes;
    
    @Column(name="Debe")
    private String debe;
    
    @Column(name="Haber")
    private String haber;
}
