package org.epis.minierp.business.impresora;

import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

@XmlRootElement (name="boletaPrinter")
@XmlType(propOrder = {
    "size",
    "leftMargin",
    "rightMargin",
    "topMargin",
    "cliNom",
    "cliDir",
    "fecEmi",
    "topBolCab",
    "cliCod",
    "conPag",
    "fecVen",
    "venRut",
    "pdv",
    "obs",
    "topBolDet",
    "proCod",
    "proCan",
    "proUni",
    "proDes",
    "proValVen",
    "proDes1",
    "proPreNet",
    "totalMargin"
})

public class BoletaPrinter {
    int size;
    float leftMargin;
    float rightMargin;
    float topMargin;
    float cliNom;
    float cliDir;
    float fecEmi;
    float topBolCab;
    float cliCod;
    float conPag;
    float fecVen;
    float venRut;
    float pdv;
    float obs;
    float topBolDet;
    float proCod;
    float proCan;
    float proUni;
    float proDes;
    float proValVen;
    float proDes1;
    float proPreNet;
    float totalMargin;

    public BoletaPrinter() {
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    public float getLeftMargin() {
        return leftMargin;
    }

    public void setLeftMargin(float leftMargin) {
        this.leftMargin = leftMargin;
    }

    public float getRightMargin() {
        return rightMargin;
    }

    public void setRightMargin(float rightMargin) {
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

    public float getCliDir() {
        return cliDir;
    }

    public void setCliDir(float cliDir) {
        this.cliDir = cliDir;
    }

    public float getFecEmi() {
        return fecEmi;
    }

    public void setFecEmi(float fecEmi) {
        this.fecEmi = fecEmi;
    }

    public float getTopBolCab() {
        return topBolCab;
    }

    public void setTopBolCab(float topBolCab) {
        this.topBolCab = topBolCab;
    }

    public float getCliCod() {
        return cliCod;
    }

    public void setCliCod(float cliCod) {
        this.cliCod = cliCod;
    }

    public float getConPag() {
        return conPag;
    }

    public void setConPag(float conPag) {
        this.conPag = conPag;
    }

    public float getFecVen() {
        return fecVen;
    }

    public void setFecVen(float fecVen) {
        this.fecVen = fecVen;
    }

    public float getVenRut() {
        return venRut;
    }

    public void setVenRut(float venRut) {
        this.venRut = venRut;
    }

    public float getPdv() {
        return pdv;
    }

    public void setPdv(float pdv) {
        this.pdv = pdv;
    }

    public float getObs() {
        return obs;
    }

    public void setObs(float obs) {
        this.obs = obs;
    }

    public float getTopBolDet() {
        return topBolDet;
    }

    public void setTopBolDet(float topBolDet) {
        this.topBolDet = topBolDet;
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

    public float getProValVen() {
        return proValVen;
    }

    public void setProValVen(float proValVen) {
        this.proValVen = proValVen;
    }

    public float getProDes1() {
        return proDes1;
    }

    public void setProDes1(float proDes1) {
        this.proDes1 = proDes1;
    }

    public float getProPreNet() {
        return proPreNet;
    }

    public void setProPreNet(float proPreNet) {
        this.proPreNet = proPreNet;
    }

    public float getTotalMargin() {
        return totalMargin;
    }

    public void setTotalMargin(float totalMargin) {
        this.totalMargin = totalMargin;
    }

    
}