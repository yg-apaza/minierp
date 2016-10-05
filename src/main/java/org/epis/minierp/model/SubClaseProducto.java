package org.epis.minierp.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="en_p2m_subclase_producto")
public class SubClaseProducto implements Serializable
{
    @EmbeddedId
    private ClaseProductoId claProCod;
    
    @Id
    private String subClaProcCod;
    
    @Column(name="SubClaProDet")
    private String subClaProDet;
    
    @Column(name="EstRegCod")
    private String estRegCod;
    
}
    
    
    