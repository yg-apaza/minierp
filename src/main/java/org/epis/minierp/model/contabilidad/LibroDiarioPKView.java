package org.epis.minierp.model.contabilidad;
// Generated 14/10/2016 06:01:40 PM by Hibernate Tools 4.3.1


import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 * LibroDiarioPKView generated by hbm2java
 */
@Embeddable
public class LibroDiarioPKView  implements java.io.Serializable {


     private Integer asiCabCod;
     private Integer asiDetCod;
     private Integer libDiaCod;

    public LibroDiarioPKView() {
    }

    public LibroDiarioPKView(Integer asiCabCod, Integer asiDetCod, Integer libDiaCod) {
       this.asiCabCod = asiCabCod;
       this.asiDetCod = asiDetCod;
       this.libDiaCod = libDiaCod;
    }
   


    @Column(name="AsiCabCod", nullable=false)
    public Integer getAsiCabCod() {
        return this.asiCabCod;
    }
    
    public void setAsiCabCod(Integer asiCabCod) {
        this.asiCabCod = asiCabCod;
    }


    @Column(name="AsiDetCod", nullable=false)
    public Integer getAsiDetCod() {
        return this.asiDetCod;
    }
    
    public void setAsiDetCod(Integer asiDetCod) {
        this.asiDetCod = asiDetCod;
    }


    @Column(name="LibDiaCod", nullable=false)
    public Integer getLibDiaCod() {
        return this.libDiaCod;
    }
    
    public void setLibDiaCod(Integer libDiaCod) {
        this.libDiaCod = libDiaCod;
    }




}

