package org.epis.minierp.dao.general;

import java.util.List;
import org.epis.minierp.model.TaGzzMoneda;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

public class TaGzzMonedaDao {

    private Session session;

    public TaGzzMonedaDao() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }

    public List<TaGzzMoneda> getAll() {
        Query query = session.createQuery("from TaGzzMoneda");
        List<TaGzzMoneda> estados = query.list();
        return estados;
    }

    public List<TaGzzMoneda> getAllActive() {
        Query query = session.createQuery("from TaGzzMoneda E where E.estRegCod = 'A'");
        List<TaGzzMoneda> estados = query.list();
        System.out.println(estados);
        return estados;
    }

    public TaGzzMoneda getById(int id) {
        TaGzzMoneda estado = null;
        try {
            estado = (TaGzzMoneda) session.load(TaGzzMoneda.class, id);
        } catch (ObjectNotFoundException e) {
            return null;
        }
        return estado;
    }
    
    public void save(TaGzzMoneda moneda) {
        session.save(moneda);     
    }
    
    public void update(TaGzzMoneda moneda){
        session.update(moneda);
    }
    
    public void saveOrUpdate(TaGzzMoneda moneda){
        session.saveOrUpdate(moneda);
    }
    
    public void delete(TaGzzMoneda moneda){
        session.delete(moneda);
    }
    
}
