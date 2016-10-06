package org.epis.minierp.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "en_p1m_cliente")
public class Cliente implements Serializable {

    @Id
    private String cliCod;
    
    @Column(name = "CliNom")
    private String cliNom;
    
    @Column(name = "CliApePat")
    private String cliApePat;
    
    @Column(name = "CliApeMat")
    private String cliApeMat;

    @Column(name = "CliSex")
    private char cliSex;
    
    @Column(name = "CliDir")
    private String cliDir;
    
    @Column(name = "CliTelFij")
    private String cliTelFij;
    
    @Column(name = "CliTelCel")
    private String cliTelCel    ;
    
    @Column(name = "CliEmail")
    private String cliEmail;
    
    @Column(name = "EstCivCod")
    private int estCivCod;
    
    @Column(name = "EstRegCod")
    private char estRegCod;

    public String getCliCod() {
        return cliCod;
    }

    public String getCliNom() {
        return cliNom;
    }

    public String getCliApePat() {
        return cliApePat;
    }

    public String getCliApeMat() {
        return cliApeMat;
    }

    public char getCliSex() {
        return cliSex;
    }

    public String getCliDir() {
        return cliDir;
    }

    public String getCliTelFij() {
        return cliTelFij;
    }

    public String getCliTelCel() {
        return cliTelCel;
    }

    public String getCliEmail() {
        return cliEmail;
    }

    public int getEstCivCod() {
        return estCivCod;
    }

    public char getEstRegCod() {
        return estRegCod;
    }

    public void setCliCod(String cliCod) {
        this.cliCod = cliCod;
    }

    public void setCliNom(String cliNom) {
        this.cliNom = cliNom;
    }

    public void setCliApePat(String cliApePat) {
        this.cliApePat = cliApePat;
    }

    public void setCliApeMat(String cliApeMat) {
        this.cliApeMat = cliApeMat;
    }

    public void setCliSex(char cliSex) {
        this.cliSex = cliSex;
    }

    public void setCliDir(String cliDir) {
        this.cliDir = cliDir;
    }

    public void setCliTelFij(String cliTelFij) {
        this.cliTelFij = cliTelFij;
    }

    public void setCliTelCel(String cliTelCel) {
        this.cliTelCel = cliTelCel;
    }

    public void setCliEmail(String cliEmail) {
        this.cliEmail = cliEmail;
    }

    public void setEstCivCod(int estCivCod) {
        this.estCivCod = estCivCod;
    }

    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }

    @Override
    public String toString() {
        return "Cliente{" + "cliCod=" + cliCod + ", cliNom=" + cliNom + ", cliApePat=" + cliApePat + ", cliApeMat=" + cliApeMat + ", cliSex=" + cliSex + ", cliDir=" + cliDir + ", cliTelFij=" + cliTelFij + ", cliTelCel=" + cliTelCel + ", cliEmail=" + cliEmail + ", estCivCod=" + estCivCod + ", estRegCod=" + estRegCod + '}';
    }
    
    
}
