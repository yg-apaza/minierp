
package org.epis.minierp.dao.general;

import java.util.List;
import org.epis.minierp.model.TaGzzMotivoTraslado;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;


public class TaGzzMotivoTrasladoDao {
    
    private Session session;

    public TaGzzMotivoTrasladoDao() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }
    
    public List<TaGzzMotivoTraslado> getAll() {
        Query query = session.createQuery("from TaGzzMotivoTraslado");
        List<TaGzzMotivoTraslado> estados = query.list();
        return estados;
    }

    public List<TaGzzMotivoTraslado> getAllActive() {
        Query query = session.createQuery("from TaGzzMotivoTraslado E where E.estRegCod = 'A'");
        List<TaGzzMotivoTraslado> estados = query.list();
        System.out.println(estados);
        return estados;
    }

    public TaGzzMotivoTraslado getById(int id) {
        TaGzzMotivoTraslado estado = null;
        try {
            estado = (TaGzzMotivoTraslado) session.load(TaGzzMotivoTraslado.class, id);
        } catch (ObjectNotFoundException e) {
            return null;
        }
        return estado;
    }
    
    public void save(TaGzzMotivoTraslado motTra) {
        session.save(motTra);     
    }
    
    public void update(TaGzzMotivoTraslado motTra){
        session.update(motTra);
    }
    
    public void saveOrUpdate(TaGzzMotivoTraslado motTra){
        session.saveOrUpdate(motTra);
    }
    
    public void delete(TaGzzMotivoTraslado motTra){
        session.delete(motTra);
    }
}
