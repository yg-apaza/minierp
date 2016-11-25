package org.epis.minierp.dao.general;

import java.util.List;
import org.epis.minierp.model.TaGzzTipoComprobante;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

public class TaGzzTipoComprobanteDao {
    
    private Session session;
    
    public TaGzzTipoComprobanteDao() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }

    public List<TaGzzTipoComprobante> getAll() {
        Query query = session.createQuery("from TaGzzTipoComprobante");
        List<TaGzzTipoComprobante> tipos = query.list();
        return tipos;
    }

    public List<TaGzzTipoComprobante> getAllActive() {
        Query query = session.createQuery("from TaGzzTipoComprobante E where E.estRegCod = 'A'");
        List<TaGzzTipoComprobante> tipos = query.list();
        return tipos;
    }
    
    public List<TaGzzTipoComprobante> getAllInactive() {
        Query query = session.createQuery("from TaGzzTipoComprobante E where E.estRegCod = 'I'");
        List<TaGzzTipoComprobante> tipos = query.list();
        return tipos;
    }

    public TaGzzTipoComprobante getById(Integer id) {
        TaGzzTipoComprobante tipo = null;
        try {
            tipo = (TaGzzTipoComprobante) session.load(TaGzzTipoComprobante.class, id);
        } catch (ObjectNotFoundException e) {
            return null;
        }
        return tipo;
    }
    
    public void save(TaGzzTipoComprobante tipo) {
        session.save(tipo);     
    }
    
    public void update(TaGzzTipoComprobante tipo){
        session.update(tipo);
    }
    
    public void saveOrUpdate(TaGzzTipoComprobante tipo){
        session.saveOrUpdate(tipo);
    }
    
    public void delete(TaGzzTipoComprobante tipo){
        session.delete(tipo);
    }
}
