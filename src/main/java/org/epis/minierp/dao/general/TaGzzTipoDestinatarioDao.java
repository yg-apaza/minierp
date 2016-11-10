
package org.epis.minierp.dao.general;

import java.util.List;
import org.epis.minierp.model.TaGzzTipoDestinatario;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;


public class TaGzzTipoDestinatarioDao {
    
    private Session session;

    public TaGzzTipoDestinatarioDao() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }
    
    public List<TaGzzTipoDestinatario> getAll() {
        Query query = session.createQuery("from TaGzzTipoDestinatario");
        List<TaGzzTipoDestinatario> estados = query.list();
        return estados;
    }

    public List<TaGzzTipoDestinatario> getAllActive() {
        Query query = session.createQuery("from TaGzzTipoDestinatario E where E.estRegCod = 'A'");
        List<TaGzzTipoDestinatario> estados = query.list();
        System.out.println(estados);
        return estados;
    }
    public List<TaGzzTipoDestinatario> getAllInactive() {
        Query query = session.createQuery("from TaGzzTipoDestinatario E where E.estRegCod = 'I'");
        List<TaGzzTipoDestinatario> estados = query.list();
        System.out.println(estados);
        return estados;
    }

    public TaGzzTipoDestinatario getById(int id) {
        TaGzzTipoDestinatario estado = null;
        try {
            estado = (TaGzzTipoDestinatario) session.load(TaGzzTipoDestinatario.class, id);
        } catch (ObjectNotFoundException e) {
            return null;
        }
        return estado;
    }
    
    public void save(TaGzzTipoDestinatario tipoDes) {
        session.save(tipoDes);     
    }
    
    public void update(TaGzzTipoDestinatario tipoDes){
        session.update(tipoDes);
    }
    
    public void saveOrUpdate(TaGzzTipoDestinatario tipoDes){
        session.saveOrUpdate(tipoDes);
    }
    
    public void delete(TaGzzTipoDestinatario tipoDes){
        session.delete(tipoDes);
    }
}
