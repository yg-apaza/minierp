package org.epis.minierp.dao.general;

import java.util.List;
import org.epis.minierp.model.TaGzzUnidadMed;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

public class TaGzzUnidadMedDao {

    private Session session;

    public TaGzzUnidadMedDao() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }

    public List<TaGzzUnidadMed> getAll() {
        Query query = session.createQuery("from TaGzzUnidadMed");
        List<TaGzzUnidadMed> estados = query.list();
        return estados;
    }

    public List<TaGzzUnidadMed> getAllActive() {
        Query query = session.createQuery("from TaGzzUnidadMed E where E.estRegCod = 'A'");
        List<TaGzzUnidadMed> estados = query.list();
        System.out.println(estados);
        return estados;
    }
    public List<TaGzzUnidadMed> getAllInactive() {
        Query query = session.createQuery("from TaGzzUnidadMed E where E.estRegCod = 'I'");
        List<TaGzzUnidadMed> estados = query.list();
        System.out.println(estados);
        return estados;
    }

    public TaGzzUnidadMed getById(int id) {
        TaGzzUnidadMed estado = null;
        try {
            estado = (TaGzzUnidadMed) session.load(TaGzzUnidadMed.class, id);
        } catch (ObjectNotFoundException e) {
            return null;
        }
        return estado;
    }
    
    public void save(TaGzzUnidadMed unidadMed) {
        session.save(unidadMed);     
    }
    
    public void update(TaGzzUnidadMed unidadMed){
        session.update(unidadMed);
    }
    
    public void saveOrUpdate(TaGzzUnidadMed unidadMed){
        session.saveOrUpdate(unidadMed);
    }
    
    public void delete(TaGzzUnidadMed unidadMed){
        session.delete(unidadMed);
    }
    
}
