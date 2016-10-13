package org.epis.minierp.dao.compras;

import java.util.List;
import org.epis.minierp.model.TaGzzTipoPagoFactura;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

public class TipoPagoFacturaDao {
    private Session session;
    
    public TipoPagoFacturaDao() {  
        session = HibernateUtil.getSessionFactory().getCurrentSession();  
    }
    
    public List <TaGzzTipoPagoFactura> getAll() {
        Query query = session.createQuery("from TaGzzTipoPagoFactura T");
        List <TaGzzTipoPagoFactura> tipos =  query.list();
        return tipos;
    }
    
    public List <TaGzzTipoPagoFactura> getAllActive() {
        Query query = session.createQuery("from TaGzzTipoPagoFactura T where T.estRegCod = 'A'");
        List <TaGzzTipoPagoFactura> tipos =  query.list();
        return tipos;
    }
    
    public TaGzzTipoPagoFactura getById(int id) {
        TaGzzTipoPagoFactura tipo = null;
        try {
            tipo = (TaGzzTipoPagoFactura)session.load(TaGzzTipoPagoFactura.class, id);
        } catch(ObjectNotFoundException e) {
            return null;
        }
        
        return tipo;
    }
}