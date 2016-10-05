package org.epis.minierp.dao.general;

import java.util.List;
import org.epis.minierp.model.EstadoFactura;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

public class EstadoFacturaDao {
    private Session session;

    public EstadoFacturaDao() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();  
    }
    
    public List <EstadoFactura> getAll() {
        Query query = session.createQuery("from EstadoFactura T");
        List <EstadoFactura> estados =  query.list();
        return estados;
    }
    
    public List <EstadoFactura> getAllActive() {
        Query query = session.createQuery("from EstadoFactura T where T.estRegCod = 'A'");
        List <EstadoFactura> estados =  query.list();
        return estados;
    }
    
    public EstadoFactura getById(int id) {
        EstadoFactura estado = null;
        try {
            estado = (EstadoFactura)session.load(EstadoFactura.class, id);
        } catch(ObjectNotFoundException e) {
            return null;
        }
        
        return estado;
    }
}