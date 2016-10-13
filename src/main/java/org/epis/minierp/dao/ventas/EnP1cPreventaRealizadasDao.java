package org.epis.minierp.dao.ventas;

import java.util.List;
import org.epis.minierp.model.EnP1cPreventaRealizadas;
import org.epis.minierp.model.EnP1cPreventaRealizadasId;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

public class EnP1cPreventaRealizadasDao {

    private Session session;

    public EnP1cPreventaRealizadasDao() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }

    public List<EnP1cPreventaRealizadas> getAll() {
        Query query = session.createQuery("from EnP1cPreventaRealizadas");
        List<EnP1cPreventaRealizadas> estados = query.list();
        return estados;
    }

    public EnP1cPreventaRealizadas getById(EnP1cPreventaRealizadasId id) {
        EnP1cPreventaRealizadas estado = null;
        try {
            estado = (EnP1cPreventaRealizadas) session.load(EnP1cPreventaRealizadas.class, id);
        } catch (ObjectNotFoundException e) {
            return null;
        }
        return estado;
    }
    
    public void save(EnP1cPreventaRealizadas preventa) {
        session.save(preventa);     
    }
    
    public void update(EnP1cPreventaRealizadas preventa){
        session.update(preventa);
    }
    
    public void saveOrUpdate(EnP1cPreventaRealizadas preventa){
        session.saveOrUpdate(preventa);
    }
    
    public void delete(EnP1cPreventaRealizadas preventa){
        session.delete(preventa);
    }
    
}
