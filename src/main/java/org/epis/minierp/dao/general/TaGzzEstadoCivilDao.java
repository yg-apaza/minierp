package org.epis.minierp.dao.general;

import java.util.List;
import org.epis.minierp.model.TaGzzEstadoCivil;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

public class TaGzzEstadoCivilDao {

    private Session session;

    public TaGzzEstadoCivilDao() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }

    public List<TaGzzEstadoCivil> getAll() {
        Query query = session.createQuery("from TaGzzEstadoCivil");
        List<TaGzzEstadoCivil> estados = query.list();
        return estados;
    }

    public List<TaGzzEstadoCivil> getAllActive() {
        Query query = session.createQuery("from TaGzzEstadoCivil E where E.estRegCod = 'A'");
        List<TaGzzEstadoCivil> estados = query.list();
        System.out.println(estados);
        return estados;
    }
    public List<TaGzzEstadoCivil> getAllInactive() {
        Query query = session.createQuery("from TaGzzEstadoCivil E where E.estRegCod = 'I'");
        List<TaGzzEstadoCivil> estados = query.list();
        System.out.println(estados);
        return estados;
    }
    

    public TaGzzEstadoCivil getById(int id) {
        TaGzzEstadoCivil estado = null;
        try {
            estado = (TaGzzEstadoCivil) session.load(TaGzzEstadoCivil.class, id);
        } catch (ObjectNotFoundException e) {
            return null;
        }
        return estado;
    }
    
    public void save(TaGzzEstadoCivil estadoCivil) {
        session.save(estadoCivil);     
    }
    
    public void update(TaGzzEstadoCivil estadoCivil){
        session.update(estadoCivil);
    }
    
    public void saveOrUpdate(TaGzzEstadoCivil estadoCivil){
        session.saveOrUpdate(estadoCivil);
    }
    
    public void delete(TaGzzEstadoCivil estadoCivil){
        session.delete(estadoCivil);
    }
    
}
