package org.epis.minierp.model;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "en_p4m_proveedor", catalog = "episerp")
public class EnP4mProveedor implements java.io.Serializable {

    private String proCod;
    private String proDet;
    private String proCon;
    private String proDir;
    private String proTelFij;
    private String proTelCel;
    private String proEmail;
    private String proPagWeb;
    private String proObs;
    private char estRegCod;
    private Set enP4mFacturaCompraCabs = new HashSet(0);
    private Set enP4mDocumentoProveedors = new HashSet(0);
    private Set enP4mGuiaCompraCabs = new HashSet(0);

    public EnP4mProveedor() {
    }

    public EnP4mProveedor(String proCod, String proDet, char estRegCod) {
        this.proCod = proCod;
        this.proDet = proDet;
        this.estRegCod = estRegCod;
    }

    public EnP4mProveedor(String proCod, String proDet, String proCon, String proDir, String proTelFij, String proTelCel, String proEmail, String proPagWeb, String proObs, char estRegCod, Set enP4mFacturaCompraCabs, Set enP4mDocumentoProveedors, Set enP4mGuiaCompraCabs) {
        this.proCod = proCod;
        this.proDet = proDet;
        this.proCon = proCon;
        this.proDir = proDir;
        this.proTelFij = proTelFij;
        this.proTelCel = proTelCel;
        this.proEmail = proEmail;
        this.proPagWeb = proPagWeb;
        this.proObs = proObs;
        this.estRegCod = estRegCod;
        this.enP4mFacturaCompraCabs = enP4mFacturaCompraCabs;
        this.enP4mDocumentoProveedors = enP4mDocumentoProveedors;
        this.enP4mGuiaCompraCabs = enP4mGuiaCompraCabs;
    }

    @Id

    @Column(name = "ProCod", unique = true, nullable = false, length = 15)
    public String getProCod() {
        return this.proCod;
    }

    public void setProCod(String proCod) {
        this.proCod = proCod;
    }

    @Column(name = "ProDet", nullable = false, length = 90)
    public String getProDet() {
        return this.proDet;
    }

    public void setProDet(String proDet) {
        this.proDet = proDet;
    }

    @Column(name = "ProCon", length = 90)
    public String getProCon() {
        return this.proCon;
    }

    public void setProCon(String proCon) {
        this.proCon = proCon;
    }

    @Column(name = "ProDir", length = 90)
    public String getProDir() {
        return this.proDir;
    }

    public void setProDir(String proDir) {
        this.proDir = proDir;
    }

    @Column(name = "ProTelFij", length = 15)
    public String getProTelFij() {
        return this.proTelFij;
    }

    public void setProTelFij(String proTelFij) {
        this.proTelFij = proTelFij;
    }

    @Column(name = "ProTelCel", length = 15)
    public String getProTelCel() {
        return this.proTelCel;
    }

    public void setProTelCel(String proTelCel) {
        this.proTelCel = proTelCel;
    }

    @Column(name = "ProEmail", length = 50)
    public String getProEmail() {
        return this.proEmail;
    }

    public void setProEmail(String proEmail) {
        this.proEmail = proEmail;
    }

    @Column(name = "ProPagWeb", length = 50)
    public String getProPagWeb() {
        return this.proPagWeb;
    }

    public void setProPagWeb(String proPagWeb) {
        this.proPagWeb = proPagWeb;
    }

    @Column(name = "ProObs", length = 90)
    public String getProObs() {
        return this.proObs;
    }

    public void setProObs(String proObs) {
        this.proObs = proObs;
    }

    @Column(name = "EstRegCod", nullable = false, length = 1)
    public char getEstRegCod() {
        return this.estRegCod;
    }

    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "enP4mProveedor")
    public Set getEnP4mFacturaCompraCabs() {
        return this.enP4mFacturaCompraCabs;
    }

    public void setEnP4mFacturaCompraCabs(Set enP4mFacturaCompraCabs) {
        this.enP4mFacturaCompraCabs = enP4mFacturaCompraCabs;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "enP4mProveedor")
    public Set getEnP4mDocumentoProveedors() {
        return this.enP4mDocumentoProveedors;
    }

    public void setEnP4mDocumentoProveedors(Set enP4mDocumentoProveedors) {
        this.enP4mDocumentoProveedors = enP4mDocumentoProveedors;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "enP4mProveedor")
    public Set getEnP4mGuiaCompraCabs() {
        return this.enP4mGuiaCompraCabs;
    }

    public void setEnP4mGuiaCompraCabs(Set enP4mGuiaCompraCabs) {
        this.enP4mGuiaCompraCabs = enP4mGuiaCompraCabs;
    }

    @Override
    public String toString() {
        return "EnP4mProveedor{" + "proCod=" + proCod + ", proDet=" + proDet + ", proCon=" + proCon + ", proDir=" + proDir + ", proTelFij=" + proTelFij + ", proTelCel=" + proTelCel + ", proEmail=" + proEmail + ", proPagWeb=" + proPagWeb + ", proObs=" + proObs + ", estRegCod=" + estRegCod + '}';
    }
}
