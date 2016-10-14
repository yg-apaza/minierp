package org.epis.minierp.dao.configuracion;

import java.util.List;
import org.epis.minierp.model.EnP1mSucursal;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

public class EnP1mSucursalDao {

    private Session session;

    public EnP1mSucursalDao() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }

    public List<EnP1mSucursal> getAll() {
        Query query = session.createQuery("from EnP1mSucursal");
        List<EnP1mSucursal> estados = query.list();
        return estados;
    }

    public List<EnP1mSucursal> getAllActive() {
        Query query = session.createQuery("from EnP1mSucursal E where E.estRegCod = 'A'");
        List<EnP1mSucursal> estados = query.list();
        System.out.println(estados);
        return estados;
    }

    public EnP1mSucursal getById(String id) {
        EnP1mSucursal estado = null;
        try {
            estado = (EnP1mSucursal) session.load(EnP1mSucursal.class, id);
        } catch (ObjectNotFoundException e) {
            return null;
        }
        return estado;
    }
    
    public void save(EnP1mSucursal clase) {
        session.save(clase);     
    }
    
    public void update(EnP1mSucursal clase){
        session.update(clase);
    }
    
    public void saveOrUpdate(EnP1mSucursal clase){
        session.saveOrUpdate(clase);
    }
    
    public void delete(EnP1mSucursal clase){
        session.delete(clase);
    }
    
}
