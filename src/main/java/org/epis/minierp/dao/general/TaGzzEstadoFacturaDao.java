package org.epis.minierp.dao.general;

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

    public List<TaGzzEstadoFactura> getAll() {
        Query query = session.createQuery("from TaGzzEstadoFactura");
        List<TaGzzEstadoFactura> estados = query.list();
        return estados;
    }

    public List<TaGzzEstadoFactura> getAllActive() {
        Query query = session.createQuery("from TaGzzEstadoFactura E where E.estRegCod = 'A'");
        List<TaGzzEstadoFactura> estados = query.list();
        System.out.println(estados);
        return estados;
    }
    public List<TaGzzEstadoFactura> getAllInactive() {
        Query query = session.createQuery("from TaGzzEstadoFactura E where E.estRegCod = 'I'");
        List<TaGzzEstadoFactura> estados = query.list();
        System.out.println(estados);
        return estados;
    }

    public TaGzzEstadoFactura getById(int id) {
        TaGzzEstadoFactura estado = null;
        try {
            estado = (TaGzzEstadoFactura) session.load(TaGzzEstadoFactura.class, id);
        } catch (ObjectNotFoundException e) {
            return null;
        }
        return estado;
    }
    
    public void save(TaGzzEstadoFactura stdFactura) {
        session.save(stdFactura);     
    }
    
    public void update(TaGzzEstadoFactura stdFactura){
        session.update(stdFactura);
    }
    
    public void saveOrUpdate(TaGzzEstadoFactura stdFactura){
        session.saveOrUpdate(stdFactura);
    }
    
    public void delete(TaGzzEstadoFactura stdFactura){
        session.delete(stdFactura);
    }
    
}
