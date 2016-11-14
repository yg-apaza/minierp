package org.epis.minierp.business.general;

import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

@XmlRootElement (name="guiaRemisionPrinter")
@XmlType(propOrder = {
    "size",
    "leftMargin",
    "rightMargin",
    "topMargin",
    "cliNom",
    "punPar",
    "punLle",
    "traNom",
    "topFacCab",
    "fecVen",
    "ven",
    "zon",
    "con",
    "cliCod",
    "oc",
    "facNum",
    "hora",
    "numInt",
    "topFacDet",
    "proCod",
    "proCan",
    "proUni",
    "proDes",
    "proValUni",
    "proDes1",
    "proValNet",
    "totalMargin"
})

public class RemisionPrinter {
    int size;
    int leftMargin;
    int rightMargin;
    float topMargin;
    float cliNom;
    float punPar;
    float punLle;
    float traNom;
    float topFacCab;
    float fecVen;
    float ven;
    float zon;
    float con;
    float cliCod;
    float oc;
    float facNum;
    float hora;
    float numInt;
    float topFacDet;
    float proCod;
    float proCan;
    float proUni;
    float proDes;
    float proValUni;
    float proDes1;
    float proValNet;
    float totalMargin;

    public RemisionPrinter() {
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    public int getLeftMargin() {
        return leftMargin;
    }

    public void setLeftMargin(int leftMargin) {
        this.leftMargin = leftMargin;
    }

    public int getRightMargin() {
        return rightMargin;
    }

    public void setRightMargin(int rightMargin) {
        this.rightMargin = rightMargin;
    }

    public float getTopMargin() {
        return topMargin;
    }

    public void setTopMargin(float topMargin) {
        this.topMargin = topMargin;
    }

    public float getCliNom() {
        return cliNom;
    }

    public void setCliNom(float cliNom) {
        this.cliNom = cliNom;
    }

    public float getPunPar() {
        return punPar;
    }

    public void setPunPar(float punPar) {
        this.punPar = punPar;
    }

    public float getPunLle() {
        return punLle;
    }

    public void setPunLle(float punLle) {
        this.punLle = punLle;
    }

    public float getTraNom() {
        return traNom;
    }

    public void setTraNom(float traNom) {
        this.traNom = traNom;
    }

    public float getTopFacCab() {
        return topFacCab;
    }

    public void setTopFacCab(float topFacCab) {
        this.topFacCab = topFacCab;
    }

    public float getFecVen() {
        return fecVen;
    }

    public void setFecVen(float fecVen) {
        this.fecVen = fecVen;
    }

    public float getVen() {
        return ven;
    }

    public void setVen(float ven) {
        this.ven = ven;
    }

    public float getZon() {
        return zon;
    }

    public void setZon(float zon) {
        this.zon = zon;
    }

    public float getCon() {
        return con;
    }

    public void setCon(float con) {
        this.con = con;
    }

    public float getCliCod() {
        return cliCod;
    }

    public void setCliCod(float cliCod) {
        this.cliCod = cliCod;
    }

    public float getOc() {
        return oc;
    }

    public void setOc(float oc) {
        this.oc = oc;
    }

    public float getFacNum() {
        return facNum;
    }

    public void setFacNum(float facNum) {
        this.facNum = facNum;
    }

    public float getHora() {
        return hora;
    }

    public void setHora(float hora) {
        this.hora = hora;
    }

    public float getNumInt() {
        return numInt;
    }

    public void setNumInt(float numInt) {
        this.numInt = numInt;
    }

    public float getTopFacDet() {
        return topFacDet;
    }

    public void setTopFacDet(float topFacDet) {
        this.topFacDet = topFacDet;
    }

    public float getProCod() {
        return proCod;
    }

    public void setProCod(float proCod) {
        this.proCod = proCod;
    }

    public float getProCan() {
        return proCan;
    }

    public void setProCan(float proCan) {
        this.proCan = proCan;
    }

    public float getProUni() {
        return proUni;
    }

    public void setProUni(float proUni) {
        this.proUni = proUni;
    }

    public float getProDes() {
        return proDes;
    }

    public void setProDes(float proDes) {
        this.proDes = proDes;
    }

    public float getProValUni() {
        return proValUni;
    }

    public void setProValUni(float proValUni) {
        this.proValUni = proValUni;
    }

    public float getProDes1() {
        return proDes1;
    }

    public void setProDes1(float proDes1) {
        this.proDes1 = proDes1;
    }

    public float getProValNet() {
        return proValNet;
    }

    public void setProValNet(float proValNet) {
        this.proValNet = proValNet;
    }

    public float getTotalMargin() {
        return totalMargin;
    }

    public void setTotalMargin(float totalMargin) {
        this.totalMargin = totalMargin;
    }

    
}