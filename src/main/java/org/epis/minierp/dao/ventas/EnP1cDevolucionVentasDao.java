
package org.epis.minierp.dao.ventas;

import java.util.List;
import org.epis.minierp.model.EnP1cDevolucionVentas;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;


public class EnP1cDevolucionVentasDao {
    
    private Session session;

    public EnP1cDevolucionVentasDao() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }
    
    public List<EnP1cDevolucionVentas> getAll() {
        Query query = session.createQuery("from EnP1cDevolucionVentas");
        List<EnP1cDevolucionVentas> estados = query.list();
        return estados;
    }

    public EnP1cDevolucionVentas getById(String id) {
        EnP1cDevolucionVentas estado = null;
        try {
            estado = (EnP1cDevolucionVentas) session.load(EnP1cDevolucionVentas.class, id);
        } catch (ObjectNotFoundException e) {
            return null;
        }
        return estado;
    }
    
    public void save(EnP1cDevolucionVentas devVen) {
        session.save(devVen);     
    }
    
    public void update(EnP1cDevolucionVentas devVen){
        session.update(devVen);
    }
    
    public void saveOrUpdate(EnP1cDevolucionVentas devVen){
        session.saveOrUpdate(devVen);
    }
    
    public void delete(EnP1cDevolucionVentas devVen){
        session.delete(devVen);
    }
    
}
