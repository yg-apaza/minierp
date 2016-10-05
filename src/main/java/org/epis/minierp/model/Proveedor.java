package org.epis.minierp.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="en_p4m_proveedor")
public class Proveedor implements Serializable {
    @Id
    private String proCod;
    
    @Column(name="ProDet")
    private String proDet;
    
    @Column(name="ProCon")
    private String proCon;
    
    @Column(name="ProDir")
    private String proDir;
    
    @Column(name="ProTelFij")
    private String proTelFij;
    
    @Column(name="ProTelCel")
    private String proTelCel;
    
    @Column(name="ProEmail")
    private String proEmail;
    
    @Column(name="ProPagWeb")
    private String proPagWeb;
    
    @Column(name="ProObs")
    private String proObs;
    
    @Column(name="EstRegCod")
    private char estRegCod;

    public String getProCod() {
        return proCod;
    }

    public void setProCod(String proCod) {
        this.proCod = proCod;
    }

    public String getProDet() {
        return proDet;
    }

    public void setProDet(String proDet) {
        this.proDet = proDet;
    }

    public String getProCon() {
        return proCon;
    }

    public void setProCon(String proCon) {
        this.proCon = proCon;
    }

    public String getProDir() {
        return proDir;
    }

    public void setProDir(String proDir) {
        this.proDir = proDir;
    }

    public String getProTelFij() {
        return proTelFij;
    }

    public void setProTelFij(String proTelFij) {
        this.proTelFij = proTelFij;
    }

    public String getProTelCel() {
        return proTelCel;
    }

    public void setProTelCel(String proTelCel) {
        this.proTelCel = proTelCel;
    }

    public String getProEmail() {
        return proEmail;
    }

    public void setProEmail(String proEmail) {
        this.proEmail = proEmail;
    }

    public String getProPagWeb() {
        return proPagWeb;
    }

    public void setProPagWeb(String proPagWeb) {
        this.proPagWeb = proPagWeb;
    }

    public String getProObs() {
        return proObs;
    }

    public void setProObs(String proObs) {
        this.proObs = proObs;
    }

    public char getEstRegCod() {
        return estRegCod;
    }

    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }

    @Override
    public String toString() {
        return "Proveedor{" + "proCod=" + proCod + ", proDet=" + proDet + ", proCon=" + proCon + ", proDir=" + proDir + ", proTelFij=" + proTelFij + ", proTelCel=" + proTelCel + ", proEmail=" + proEmail + ", proPagWeb=" + proPagWeb + ", proObs=" + proObs + ", estRegCod=" + estRegCod + '}';
    }
}