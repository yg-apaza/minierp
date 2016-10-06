package org.epis.minierp.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "en_p1m_documento_usuario")
public class DocUsuario implements Serializable {
    
    @Id
    private String usuCod;
    
    @Id
    private int tipDocUsuCod;
    
    @Column(name="DocUsuNum")
    private String docUsuNum;
    
    @Column(name="EstRegCod")
    private char estRegCod;

    public String getUsuCod() {
        return usuCod;
    }

    public int getTipDocUsuCod() {
        return tipDocUsuCod;
    }

    public String getDocUsuNum() {
        return docUsuNum;
    }

    public char getEstRegCod() {
        return estRegCod;
    }

    public void setUsuCod(String usuCod) {
        this.usuCod = usuCod;
    }

    public void setTipDocUsuCod(int tipDocUsuCod) {
        this.tipDocUsuCod = tipDocUsuCod;
    }

    public void setDocUsuNum(String docUsuNum) {
        this.docUsuNum = docUsuNum;
    }

    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }

    
    
}
