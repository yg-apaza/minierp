package org.epis.minierp.dao.compras;

import java.util.List;
import org.epis.minierp.model.TaGzzEstadoFactura;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

public class TaGzzEstadoFacturaDao {
    private Session session;

    public TaGzzEstadoFacturaDao() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();  
    }
    
    public List <TaGzzEstadoFactura> getAll() {
        Query query = session.createQuery("from TaGzzEstadoFactura T");
        List <TaGzzEstadoFactura> estados =  query.list();
        return estados;
    }
    
    public List <TaGzzEstadoFactura> getAllActive() {
        Query query = session.createQuery("from TaGzzEstadoFactura T where T.estRegCod = 'A'");
        List <TaGzzEstadoFactura> estados =  query.list();
        return estados;
    }
    
    public TaGzzEstadoFactura getById(int id) {
        TaGzzEstadoFactura estado = null;
        try {
            estado = (TaGzzEstadoFactura)session.load(TaGzzEstadoFactura.class, id);
        } catch(ObjectNotFoundException e) {
            return null;
        }
        
        return estado;
    }
}