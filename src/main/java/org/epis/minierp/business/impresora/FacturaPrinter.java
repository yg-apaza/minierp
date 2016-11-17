package org.epis.minierp.business.impresora;

import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

@XmlRootElement (name="facturaPrinter")
@XmlType(propOrder = {
    "size",
    "leftMargin",
    "rightMargin",
    "topMargin",
    "cliNom",
    "cliDir",
    "fecEmi",
    "topFacCab",
    "cliCod",
    "conPag",
    "fecVen",
    "venZon",
    "numSec",
    "dis",
    "rut",
    "tra",
    "topFacDet",
    "proCod",
    "proCan",
    "proUni",
    "proDes",
    "proValUni",
    "proDes1",
    "proDes2",
    "proValNet",
    "totalMargin"
})

public class FacturaPrinter {
    int size;
    float leftMargin;
    float rightMargin;
    float topMargin;
    float cliNom;
    float cliDir;
    float fecEmi;
    float topFacCab;
    float cliCod;
    float conPag;
    float fecVen;
    float venZon;
    float numSec;
    float dis;
    float rut;
    float tra;
    float topFacDet;
    float proCod;
    float proCan;
    float proUni;
    float proDes;
    float proValUni;
    float proDes1;
    float proDes2;
    float proValNet;
    float totalMargin;

    public FacturaPrinter(int size, int leftMargin, int rightMargin, float topMargin, float cliNom, float cliDir, float fecEmi, float topFacCab, float cliCod, float conPag, float fecVen, float venZon, float numSec, float dis, float rut, float tra, float topFacDet, float proCod, float proCan, float proUni, float proDes, float proValUni, float proDes1, float proDes2, float proValNet, float totalMargin) {
        this.size = size;
        this.leftMargin = leftMargin;
        this.rightMargin = rightMargin;
        this.topMargin = topMargin;
        this.cliNom = cliNom;
        this.cliDir = cliDir;
        this.fecEmi = fecEmi;
        this.topFacCab = topFacCab;
        this.cliCod = cliCod;
        this.conPag = conPag;
        this.fecVen = fecVen;
        this.venZon = venZon;
        this.numSec = numSec;
        this.dis = dis;
        this.rut = rut;
        this.tra = tra;
        this.topFacDet = topFacDet;
        this.proCod = proCod;
        this.proCan = proCan;
        this.proUni = proUni;
        this.proDes = proDes;
        this.proValUni = proValUni;
        this.proDes1 = proDes1;
        this.proDes2 = proDes2;
        this.proValNet = proValNet;
        this.totalMargin = totalMargin;
    }

    public FacturaPrinter() {
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

    public float getTopFacCab() {
        return topFacCab;
    }

    public void setTopFacCab(float topFacCab) {
        this.topFacCab = topFacCab;
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

    public float getVenZon() {
        return venZon;
    }

    public void setVenZon(float venZon) {
        this.venZon = venZon;
    }

    public float getNumSec() {
        return numSec;
    }

    public void setNumSec(float numSec) {
        this.numSec = numSec;
    }

    public float getDis() {
        return dis;
    }

    public void setDis(float dis) {
        this.dis = dis;
    }

    public float getRut() {
        return rut;
    }

    public void setRut(float rut) {
        this.rut = rut;
    }

    public float getTra() {
        return tra;
    }

    public void setTra(float tra) {
        this.tra = tra;
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

    public float getProDes2() {
        return proDes2;
    }

    public void setProDes2(float proDes2) {
        this.proDes2 = proDes2;
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