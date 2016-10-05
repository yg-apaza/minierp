package org.epis.minierp.dao.compras;

import java.util.List;
import org.epis.minierp.model.TipoPagoFactura;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

public class TipoPagoFacturaDao {
    private Session session;
    
    public TipoPagoFacturaDao() {  
        session = HibernateUtil.getSessionFactory().getCurrentSession();  
    }
    
    public List <TipoPagoFactura> getAll() {
        Query query = session.createQuery("from TipoPagoFactura T");
        List <TipoPagoFactura> tipos =  query.list();
        return tipos;
    }
    
    public List <TipoPagoFactura> getAllActive() {
        Query query = session.createQuery("from TipoPagoFactura T where T.estRegCod = 'A'");
        List <TipoPagoFactura> tipos =  query.list();
        return tipos;
    }
    
    public TipoPagoFactura getById(int id) {
        TipoPagoFactura tipo = null;
        try {
            tipo = (TipoPagoFactura)session.load(TipoPagoFactura.class, id);
        } catch(ObjectNotFoundException e) {
            return null;
        }
        
        return tipo;
    }
}