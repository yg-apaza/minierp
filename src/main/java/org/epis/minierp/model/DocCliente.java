package org.epis.minierp.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "en_p1m_documento_cliente")
public class DocCliente implements Serializable {
    
    @Id
    private String cliCod;
    
    @Id
    private int tipDocCliCod;
    
    @Column(name="DocCliNum")
    private String docCliNum;
    
    @Column(name="EstRegCod")
    private char estRegCod;

    public String getCliCod() {
        return cliCod;
    }

    public int getTipDocCliCod() {
        return tipDocCliCod;
    }

    public String getDocCliNum() {
        return docCliNum;
    }

    public char getEstRegCod() {
        return estRegCod;
    }

    public void setCliCod(String cliCod) {
        this.cliCod = cliCod;
    }

    public void setTipDocCliCod(int tipDocCliCod) {
        this.tipDocCliCod = tipDocCliCod;
    }

    public void setDocCliNum(String docCliNum) {
        this.docCliNum = docCliNum;
    }

    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }

    @Override
    public String toString() {
        return "DocCliente{" + "cliCod=" + cliCod + ", tipDocCliCod=" + tipDocCliCod + ", docCliNum=" + docCliNum + ", estRegCod=" + estRegCod + '}';
    }
    
}
