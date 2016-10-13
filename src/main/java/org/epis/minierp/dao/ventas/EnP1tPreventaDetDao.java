package org.epis.minierp.dao.ventas;

import java.util.List;
import org.epis.minierp.model.EnP1tPreventaDet;
import org.epis.minierp.model.EnP1tPreventaDetId;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

public class EnP1tPreventaDetDao {

    private Session session;

    public EnP1tPreventaDetDao() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }

    public List<EnP1tPreventaDet> getAll() {
        Query query = session.createQuery("from EnP1tPreventaDet");
        List<EnP1tPreventaDet> estados = query.list();
        return estados;
    }

    public EnP1tPreventaDet getById(EnP1tPreventaDetId id) {
        EnP1tPreventaDet estado = null;
        try {
            estado = (EnP1tPreventaDet) session.load(EnP1tPreventaDet.class, id);
        } catch (ObjectNotFoundException e) {
            return null;
        }
        return estado;
    }
    
    public void save(EnP1tPreventaDet preventaDet) {
        session.save(preventaDet);     
    }
    
    public void update(EnP1tPreventaDet preventaDet){
        session.update(preventaDet);
    }
    
    public void saveOrUpdate(EnP1tPreventaDet preventaDet){
        session.saveOrUpdate(preventaDet);
    }
    
    public void delete(EnP1tPreventaDet preventaDet){
        session.delete(preventaDet);
    }
    
}
