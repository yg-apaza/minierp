package org.epis.minierp.dao.logistica;

import java.util.List;
import org.epis.minierp.model.EnP2mProducto;
import org.epis.minierp.model.EnP2mProductoId;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

public class EnP2mProductoDao {

    private Session session;

    public EnP2mProductoDao() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }

    public List<EnP2mProducto> getAll() {
        Query query = session.createQuery("from EnP2mProducto");
        List<EnP2mProducto> estados = query.list();
        return estados;
    }

    public List<EnP2mProducto> getAllActive() {
        Query query = session.createQuery("from EnP2mProducto E where E.estRegCod = 'A'");
        List<EnP2mProducto> estados = query.list();
        System.out.println(estados);
        return estados;
    }

    public EnP2mProducto getById(EnP2mProductoId id) {
        EnP2mProducto estado = null;
        try {
            estado = (EnP2mProducto) session.load(EnP2mProducto.class, id);
        } catch (ObjectNotFoundException e) {
            return null;
        }
        return estado;
    }
    
    public void save(EnP2mProducto cliente) {
        session.save(cliente);     
    }
    
    public void update(EnP2mProducto cliente){
        session.update(cliente);
    }
    
    public void saveOrUpdate(EnP2mProducto cliente){
        session.saveOrUpdate(cliente);
    }
    
    public void delete(EnP2mProducto cliente){
        session.delete(cliente);
    }
    
}
