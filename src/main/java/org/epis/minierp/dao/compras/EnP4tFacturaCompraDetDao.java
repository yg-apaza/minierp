package org.epis.minierp.dao.compras;

import org.epis.minierp.model.EnP4tFacturaCompraDet;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.Session;

public class EnP4tFacturaCompraDetDao {
    private Session session;
    
    public EnP4tFacturaCompraDetDao() {  
        session = HibernateUtil.getSessionFactory().getCurrentSession();  
    }
    
    public void save(EnP4tFacturaCompraDet facturaCompraDetalle) {
        session.save(facturaCompraDetalle);     
    }
}