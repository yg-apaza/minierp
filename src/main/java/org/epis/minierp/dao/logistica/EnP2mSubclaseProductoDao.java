package org.epis.minierp.dao.logistica;

import java.util.List;
import org.epis.minierp.model.EnP2mSubclaseProducto;
import org.epis.minierp.model.EnP2mSubclaseProductoId;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

public class EnP2mSubclaseProductoDao {

    private Session session;

    public EnP2mSubclaseProductoDao() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }

    public List<EnP2mSubclaseProducto> getAll() {
        Query query = session.createQuery("from EnP2mSubclaseProducto");
        List<EnP2mSubclaseProducto> estados = query.list();
        return estados;
    }

    public List<EnP2mSubclaseProducto> getAllActive() {
        Query query = session.createQuery("from EnP2mSubclaseProducto E where E.estRegCod = 'A'");
        List<EnP2mSubclaseProducto> estados = query.list();
        System.out.println(estados);
        return estados;
    }

    public EnP2mSubclaseProducto getById(EnP2mSubclaseProductoId id) {
        EnP2mSubclaseProducto estado = null;
        try {
            estado = (EnP2mSubclaseProducto) session.load(EnP2mSubclaseProducto.class, id);
        } catch (ObjectNotFoundException e) {
            return null;
        }
        return estado;
    }
    
    public void save(EnP2mSubclaseProducto subclase) {
        session.save(subclase);     
    }
    
    public void update(EnP2mSubclaseProducto subclase){
        session.update(subclase);
    }
    
    public void saveOrUpdate(EnP2mSubclaseProducto subclase){
        session.saveOrUpdate(subclase);
    }
    
    public void delete(EnP2mSubclaseProducto subclase){
        session.delete(subclase);
    }
    
}
