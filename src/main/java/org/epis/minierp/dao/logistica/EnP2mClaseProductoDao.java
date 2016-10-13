package org.epis.minierp.dao.logistica;

import java.util.List;
import org.epis.minierp.model.EnP2mClaseProducto;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

public class EnP2mClaseProductoDao {

    private Session session;

    public EnP2mClaseProductoDao() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }

    public List<EnP2mClaseProducto> getAll() {
        Query query = session.createQuery("from EnP2mClaseProducto");
        List<EnP2mClaseProducto> estados = query.list();
        return estados;
    }

    public List<EnP2mClaseProducto> getAllActive() {
        Query query = session.createQuery("from EnP2mClaseProducto E where E.estRegCod = 'A'");
        List<EnP2mClaseProducto> estados = query.list();
        System.out.println(estados);
        return estados;
    }

    public EnP2mClaseProducto getById(String id) {
        EnP2mClaseProducto estado = null;
        try {
            estado = (EnP2mClaseProducto) session.load(EnP2mClaseProducto.class, id);
        } catch (ObjectNotFoundException e) {
            return null;
        }
        return estado;
    }
    
    public void save(EnP2mClaseProducto clase) {
        session.save(clase);     
    }
    
    public void update(EnP2mClaseProducto clase){
        session.update(clase);
    }
    
    public void saveOrUpdate(EnP2mClaseProducto clase){
        session.saveOrUpdate(clase);
    }
    
    public void delete(EnP2mClaseProducto clase){
        session.delete(clase);
    }
    
}
