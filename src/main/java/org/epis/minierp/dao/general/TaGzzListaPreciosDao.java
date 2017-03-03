
package org.epis.minierp.dao.general;

import java.util.List;
import org.epis.minierp.model.TaGzzListaPrecios;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

public class TaGzzListaPreciosDao {
    
    private Session session;

    public TaGzzListaPreciosDao() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }

    public List<TaGzzListaPrecios> getAll() {
        Query query = session.createQuery("from TaGzzListaPrecios");
        List<TaGzzListaPrecios> estados = query.list();
        return estados;
    }

    public List<TaGzzListaPrecios> getAllActive() {
        Query query = session.createQuery("from TaGzzListaPrecios E where E.estRegCod = 'A'");
        List<TaGzzListaPrecios> estados = query.list();
        return estados;
    }

    public TaGzzListaPrecios getById(int id) {
        TaGzzListaPrecios estado = null;
        try {
            estado = (TaGzzListaPrecios) session.load(TaGzzListaPrecios.class, id);
        } catch (ObjectNotFoundException e) {
            return null;
        }
        return estado;
    }

    public void save(TaGzzListaPrecios clase) {
        session.save(clase);     
    }
    
    public void update(TaGzzListaPrecios clase){
        session.update(clase);
    }
    
    public void saveOrUpdate(TaGzzListaPrecios clase){
        session.saveOrUpdate(clase);
    }
    
    public void delete(TaGzzListaPrecios clase){
        session.delete(clase);
    }
    
    
}
