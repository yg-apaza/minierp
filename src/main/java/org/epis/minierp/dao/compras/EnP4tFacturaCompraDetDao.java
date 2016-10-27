package org.epis.minierp.dao.compras;

import java.util.List;
import org.epis.minierp.model.EnP4tFacturaCompraDet;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;

public class EnP4tFacturaCompraDetDao {
    private Session session;
    
    public EnP4tFacturaCompraDetDao() {  
        session = HibernateUtil.getSessionFactory().getCurrentSession();  
    }
    
    public void save(EnP4tFacturaCompraDet facturaCompraDetalle) {
        session.save(facturaCompraDetalle);     
    }
    
    public List <EnP4tFacturaCompraDet> getByProduc(String codPro){
        Query query = session.createQuery("from EnP4tFacturaCompraDet U where U.enP2mProducto.id.proCod = :codPro");
        query.setParameter("codPro", codPro);
        return query.list();
    }
}