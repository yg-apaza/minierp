package org.epis.minierp.dao.logistica;

import java.util.List;
import org.epis.minierp.model.EnP2mAlmacen;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

public class EnP2mAlmacenDao {

    private Session session;

    public EnP2mAlmacenDao() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }

    public List<EnP2mAlmacen> getAll() {
        Query query = session.createQuery("from EnP2mAlmacen");
        List<EnP2mAlmacen> estados = query.list();
        return estados;
    }

    public List<EnP2mAlmacen> getAllActive() {
        Query query = session.createQuery("from EnP2mAlmacen E where E.estRegCod = 'A'");
        List<EnP2mAlmacen> estados = query.list();
        System.out.println(estados);
        return estados;
    }
  public List<EnP2mAlmacen> getAllInactive() {
        Query query = session.createQuery("from EnP2mAlmacen E where E.estRegCod = 'I'");
        List<EnP2mAlmacen> inactivos = query.list();
        System.out.println(inactivos);
        return inactivos;
    }

    public EnP2mAlmacen getById(String id) {
        EnP2mAlmacen estado = null;
        try {
            estado = (EnP2mAlmacen) session.load(EnP2mAlmacen.class, id);
        } catch (ObjectNotFoundException e) {
            return null;
        }
        return estado;
    }
    
    public void save(EnP2mAlmacen almacen) {
        session.save(almacen);     
    }
    
    public void update(EnP2mAlmacen almacen){
        session.update(almacen);
    }
    
    public void saveOrUpdate(EnP2mAlmacen almacen){
        session.saveOrUpdate(almacen);
    }
    
    public void delete(EnP2mAlmacen almacen){
        session.delete(almacen);
    }
    
}
