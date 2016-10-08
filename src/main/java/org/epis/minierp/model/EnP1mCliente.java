package org.epis.minierp.model;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "en_p1m_cliente", catalog = "episerp")
public class EnP1mCliente implements java.io.Serializable {
    private String cliCod;
    private TaGzzEstadoCivil taGzzEstadoCivil;
    private String cliNom;
    private String cliApePat;
    private String cliApeMat;
    private char cliSex;
    private String cliDir;
    private String cliTelFij;
    private String cliTelCel;
    private String cliEmail;
    private char estRegCod;
    private Set enP1mPreventaCabs = new HashSet(0);
    private Set enP1mDocumentoClientes = new HashSet(0);
    private Set enP1mFacturaVentaCabs = new HashSet(0);

    public EnP1mCliente() {
    }

    public EnP1mCliente(String cliCod, TaGzzEstadoCivil taGzzEstadoCivil, char cliSex, String cliDir, String cliEmail, char estRegCod) {
        this.cliCod = cliCod;
        this.taGzzEstadoCivil = taGzzEstadoCivil;
        this.cliSex = cliSex;
        this.cliDir = cliDir;
        this.cliEmail = cliEmail;
        this.estRegCod = estRegCod;
    }

    public EnP1mCliente(String cliCod, TaGzzEstadoCivil taGzzEstadoCivil, String cliNom, String cliApePat, String cliApeMat, char cliSex, String cliDir, String cliTelFij, String cliTelCel, String cliEmail, char estRegCod, Set enP1mPreventaCabs, Set enP1mDocumentoClientes, Set enP1mFacturaVentaCabs) {
        this.cliCod = cliCod;
        this.taGzzEstadoCivil = taGzzEstadoCivil;
        this.cliNom = cliNom;
        this.cliApePat = cliApePat;
        this.cliApeMat = cliApeMat;
        this.cliSex = cliSex;
        this.cliDir = cliDir;
        this.cliTelFij = cliTelFij;
        this.cliTelCel = cliTelCel;
        this.cliEmail = cliEmail;
        this.estRegCod = estRegCod;
        this.enP1mPreventaCabs = enP1mPreventaCabs;
        this.enP1mDocumentoClientes = enP1mDocumentoClientes;
        this.enP1mFacturaVentaCabs = enP1mFacturaVentaCabs;
    }

    @Id
    @Column(name = "CliCod", unique = true, nullable = false, length = 15)
    public String getCliCod() {
        return this.cliCod;
    }

    public void setCliCod(String cliCod) {
        this.cliCod = cliCod;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "EstCivCod", nullable = false)
    public TaGzzEstadoCivil getTaGzzEstadoCivil() {
        return this.taGzzEstadoCivil;
    }

    public void setTaGzzEstadoCivil(TaGzzEstadoCivil taGzzEstadoCivil) {
        this.taGzzEstadoCivil = taGzzEstadoCivil;
    }

    @Column(name = "CliNom", length = 90)
    public String getCliNom() {
        return this.cliNom;
    }

    public void setCliNom(String cliNom) {
        this.cliNom = cliNom;
    }

    @Column(name = "CliApePat", length = 90)
    public String getCliApePat() {
        return this.cliApePat;
    }

    public void setCliApePat(String cliApePat) {
        this.cliApePat = cliApePat;
    }

    @Column(name = "CliApeMat", length = 90)
    public String getCliApeMat() {
        return this.cliApeMat;
    }

    public void setCliApeMat(String cliApeMat) {
        this.cliApeMat = cliApeMat;
    }

    @Column(name = "CliSex", nullable = false, length = 1)
    public char getCliSex() {
        return this.cliSex;
    }

    public void setCliSex(char cliSex) {
        this.cliSex = cliSex;
    }

    @Column(name = "CliDir", nullable = false, length = 90)
    public String getCliDir() {
        return this.cliDir;
    }

    public void setCliDir(String cliDir) {
        this.cliDir = cliDir;
    }

    @Column(name = "CliTelFij", length = 15)
    public String getCliTelFij() {
        return this.cliTelFij;
    }

    public void setCliTelFij(String cliTelFij) {
        this.cliTelFij = cliTelFij;
    }

    @Column(name = "CliTelCel", length = 15)
    public String getCliTelCel() {
        return this.cliTelCel;
    }

    public void setCliTelCel(String cliTelCel) {
        this.cliTelCel = cliTelCel;
    }

    @Column(name = "CliEmail", nullable = false, length = 50)
    public String getCliEmail() {
        return this.cliEmail;
    }

    public void setCliEmail(String cliEmail) {
        this.cliEmail = cliEmail;
    }

    @Column(name = "EstRegCod", nullable = false, length = 1)
    public char getEstRegCod() {
        return this.estRegCod;
    }

    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "enP1mCliente")
    public Set getEnP1mPreventaCabs() {
        return this.enP1mPreventaCabs;
    }

    public void setEnP1mPreventaCabs(Set enP1mPreventaCabs) {
        this.enP1mPreventaCabs = enP1mPreventaCabs;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "enP1mCliente")
    public Set getEnP1mDocumentoClientes() {
        return this.enP1mDocumentoClientes;
    }

    public void setEnP1mDocumentoClientes(Set enP1mDocumentoClientes) {
        this.enP1mDocumentoClientes = enP1mDocumentoClientes;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "enP1mCliente")
    public Set getEnP1mFacturaVentaCabs() {
        return this.enP1mFacturaVentaCabs;
    }

    public void setEnP1mFacturaVentaCabs(Set enP1mFacturaVentaCabs) {
        this.enP1mFacturaVentaCabs = enP1mFacturaVentaCabs;
    }

    @Override
    public String toString() {
        return "EnP1mCliente{" + "cliCod=" + cliCod + ", taGzzEstadoCivil=" + taGzzEstadoCivil + ", cliNom=" + cliNom + ", cliApePat=" + cliApePat + ", cliApeMat=" + cliApeMat + ", cliSex=" + cliSex + ", cliDir=" + cliDir + ", cliTelFij=" + cliTelFij + ", cliTelCel=" + cliTelCel + ", cliEmail=" + cliEmail + ", estRegCod=" + estRegCod + '}';
    }
}