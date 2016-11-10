package org.epis.minierp.dao.general;

import java.util.List;
import org.epis.minierp.model.TaGzzMetodoPagoFactura;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

public class TaGzzMetodoPagoFacturaDao {

    private Session session;

    public TaGzzMetodoPagoFacturaDao() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }

    public List<TaGzzMetodoPagoFactura> getAll() {
        Query query = session.createQuery("from TaGzzMetodoPagoFactura");
        List<TaGzzMetodoPagoFactura> estados = query.list();
        return estados;
    }

    public List<TaGzzMetodoPagoFactura> getAllActive() {
        Query query = session.createQuery("from TaGzzMetodoPagoFactura E where E.estRegCod = 'A'");
        List<TaGzzMetodoPagoFactura> estados = query.list();
        System.out.println(estados);
        return estados;
    }
    public List<TaGzzMetodoPagoFactura> getAllInactive() {
        Query query = session.createQuery("from TaGzzMetodoPagoFactura E where E.estRegCod = 'I'");
        List<TaGzzMetodoPagoFactura> estados = query.list();
        System.out.println(estados);
        return estados;
    }

    public TaGzzMetodoPagoFactura getById(int id) {
        TaGzzMetodoPagoFactura estado = null;
        try {
            estado = (TaGzzMetodoPagoFactura) session.load(TaGzzMetodoPagoFactura.class, id);
        } catch (ObjectNotFoundException e) {
            return null;
        }
        return estado;
    }
    
    public void save(TaGzzMetodoPagoFactura metodoPagoFactura) {
        session.save(metodoPagoFactura);     
    }
    
    public void update(TaGzzMetodoPagoFactura metodoPagoFactura){
        session.update(metodoPagoFactura);
    }
    
    public void saveOrUpdate(TaGzzMetodoPagoFactura metodoPagoFactura){
        session.saveOrUpdate(metodoPagoFactura);
    }
    
    public void delete(TaGzzMetodoPagoFactura metodoPagoFactura){
        session.delete(metodoPagoFactura);
    }
    
}
