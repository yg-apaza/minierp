package org.epis.minierp.model;

import java.io.Serializable;
import java.math.BigDecimal;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.NamedNativeQueries;
import javax.persistence.NamedNativeQuery;


/**
 *
 * @author Roycer
 */
@Entity
@NamedNativeQueries({@NamedNativeQuery(name = "callIngresos", query = "CALL PROC_Ingresos(:CliCod)", resultClass =  Ingresos.class)})
public class Ingresos implements Serializable {
    
    @Id
    @GeneratedValue
     private BigDecimal HOY;


    private BigDecimal AYER;
    private BigDecimal ANTEAYER;

    public Ingresos(){}

    public BigDecimal getHOY() {
        return HOY;
    }

    public void setHOY(BigDecimal HOY) {
        this.HOY = HOY;
    }

    public BigDecimal getAYER() {
        return AYER;
    }

    public void setAYER(BigDecimal AYER) {
        this.AYER = AYER;
    }

    public BigDecimal getANTEAYER() {
        return ANTEAYER;
    }

    public void setANTEAYER(BigDecimal ANTEAYER) {
        this.ANTEAYER = ANTEAYER;
    }
    
    
    
}
