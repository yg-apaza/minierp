package org.epis.minierp.model;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="en_p2m_producto")
public class Producto implements Serializable
{
    @Id
    private String claProCod;
    
    @Id
    private String cubClaProCod;
    
    @Id
    private String proCod;
    
    @Column(name="ProDet")
    private String proDet;
    
    private String uniMedCod;
    
    private String proValUni;
    
    private String modCod;
    
    private String proStk;
    
    private String proStkPreVen;
    
    private String almCod;
    
    private String vovUniAlm;
    
    private String proStkMin;
    
    private String proObs;
    
    private String estRegCod;
    
    
  
  
}