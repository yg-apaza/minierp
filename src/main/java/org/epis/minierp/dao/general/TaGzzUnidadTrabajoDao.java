package org.epis.minierp.dao.general;

import java.util.List;
import org.epis.minierp.model.TaGzzUnidadTrabajo;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

public class TaGzzUnidadTrabajoDao {

    private Session session;

    public TaGzzUnidadTrabajoDao() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }

    public List<TaGzzUnidadTrabajo> getAll() {
        Query query = session.createQuery("from TaGzzUnidadTrabajo");
        List<TaGzzUnidadTrabajo> estados = query.list();
        return estados;
    }

    public List<TaGzzUnidadTrabajo> getAllActive() {
        Query query = session.createQuery("from TaGzzUnidadTrabajo E where E.estRegCod = 'A'");
        List<TaGzzUnidadTrabajo> estados = query.list();
        return estados;
    }

    public TaGzzUnidadTrabajo getById(int id) {
        TaGzzUnidadTrabajo estado = null;
        try {
            estado = (TaGzzUnidadTrabajo) session.load(TaGzzUnidadTrabajo.class, id);
        } catch (ObjectNotFoundException e) {
            return null;
        }
        return estado;
    }
    
    public void save(TaGzzUnidadTrabajo clase) {
        session.save(clase);     
    }
    
    public void update(TaGzzUnidadTrabajo clase){
        session.update(clase);
    }
    
    public void saveOrUpdate(TaGzzUnidadTrabajo clase){
        session.saveOrUpdate(clase);
    }
    
    public void delete(TaGzzUnidadTrabajo clase){
        session.delete(clase);
    }
    
}
