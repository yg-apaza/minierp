package org.epis.minierp.dao.ventas;

import java.util.List;
import org.epis.minierp.model.EnP1mMovimientoPuntoVen;
import org.epis.minierp.model.EnP1mMovimientoPuntoVenId;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

public class EnP1mMovimientoPuntoVenDao {
    
    private Session session;
    
    public EnP1mMovimientoPuntoVenDao() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }

    public List<EnP1mMovimientoPuntoVen> getAll() {
        Query query = session.createQuery("from EnP1mMovimientoPuntoVen");
        List<EnP1mMovimientoPuntoVen> movimientos = query.list();
        return movimientos;
    }

    public List<EnP1mMovimientoPuntoVen> getAllActive() {
        Query query = session.createQuery("from EnP1mMovimientoPuntoVen E where E.estRegCod = 'A'");
        List<EnP1mMovimientoPuntoVen> movimientos = query.list();
        return movimientos;
    }
    
    public List<EnP1mMovimientoPuntoVen> getAllInactives() {
        Query query = session.createQuery("from EnP1mMovimientoPuntoVen E where E.estRegCod = 'I'");
        List<EnP1mMovimientoPuntoVen> movimientos = query.list();
        return movimientos;
    }

    public EnP1mMovimientoPuntoVen getById(EnP1mMovimientoPuntoVenId id) {
        EnP1mMovimientoPuntoVen movimiento = null;
        try {
            movimiento = (EnP1mMovimientoPuntoVen) session.load(EnP1mMovimientoPuntoVen.class, id);
        } catch (ObjectNotFoundException e) {
            return null;
        }
        return movimiento;
    }
    
    public void save(EnP1mMovimientoPuntoVen movimiento) {
        session.save(movimiento);     
    }
    
    public void update(EnP1mMovimientoPuntoVen movimiento){
        session.update(movimiento);
    }
    
    public void saveOrUpdate(EnP1mMovimientoPuntoVen movimiento){
        session.saveOrUpdate(movimiento);
    }
    
    public void delete(EnP1mMovimientoPuntoVen movimiento){
        session.delete(movimiento);
    }
}
