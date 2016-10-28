/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.epis.minierp.model.contabilidad;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.NamedNativeQueries;
import javax.persistence.NamedNativeQuery;
import javax.persistence.Temporal;

/**
 *
 * @author Roycer
 */
@Entity
@NamedNativeQueries({@NamedNativeQuery(name = "callLibroDiario", query = "CALL PROC_LibroDiario(:oLibDiaCod)", resultClass = LibroDiario.class)})
public class LibroDiario implements Serializable {

    @Id
    @GeneratedValue
    private BigDecimal LibDiaCod;
    
    private BigDecimal AsiCabCod;
    
    @Temporal(javax.persistence.TemporalType.DATE)
    private Date AsiCabFec;
    
    private BigDecimal AsiCabGlo;
    private char AsiCabTip;
    private String AsiCabNumCom;
    private BigDecimal CueCod;
    private String CueDes;
    private boolean AsiDetDebHab;
    private BigDecimal AsiDetMon;

    public BigDecimal getLibDiaCod() {
        return LibDiaCod;
    }

    public void setLibDiaCod(BigDecimal LibDiaCod) {
        this.LibDiaCod = LibDiaCod;
    }

    public BigDecimal getAsiCabCod() {
        return AsiCabCod;
    }

    public void setAsiCabCod(BigDecimal AsiCabCod) {
        this.AsiCabCod = AsiCabCod;
    }

    public Date getAsiCabFec() {
        return AsiCabFec;
    }

    public void setAsiCabFec(Date AsiCabFec) {
        this.AsiCabFec = AsiCabFec;
    }

    public BigDecimal getAsiCabGlo() {
        return AsiCabGlo;
    }

    public void setAsiCabGlo(BigDecimal AsiCabGlo) {
        this.AsiCabGlo = AsiCabGlo;
    }

    public char getAsiCabTip() {
        return AsiCabTip;
    }

    public void setAsiCabTip(char AsiCabTip) {
        this.AsiCabTip = AsiCabTip;
    }

    public String getAsiCabNumCom() {
        return AsiCabNumCom;
    }

    public void setAsiCabNumCom(String AsiCabNumCom) {
        this.AsiCabNumCom = AsiCabNumCom;
    }

    public BigDecimal getCueCod() {
        return CueCod;
    }

    public void setCueCod(BigDecimal CueCod) {
        this.CueCod = CueCod;
    }

    public String getCueDes() {
        return CueDes;
    }

    public void setCueDes(String CueDes) {
        this.CueDes = CueDes;
    }

    public boolean getAsiDetDebHab() {
        return AsiDetDebHab;
    }

    public void setAsiDetDebHab(boolean AsiDetDebHab) {
        this.AsiDetDebHab = AsiDetDebHab;
    }

    public BigDecimal getAsiDetMon() {
        return AsiDetMon;
    }

    public void setAsiDetMon(BigDecimal AsiDetMon) {
        this.AsiDetMon = AsiDetMon;
    }
    
    
}
