package org.epis.minierp.dao.general;

import java.util.List;
import org.epis.minierp.model.TaGzzTipoPagoFactura;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

public class TaGzzTipoPagoFacturaDao {

    private Session session;

    public TaGzzTipoPagoFacturaDao() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }

    public List<TaGzzTipoPagoFactura> getAll() {
        Query query = session.createQuery("from TaGzzTipoPagoFactura");
        List<TaGzzTipoPagoFactura> estados = query.list();
        return estados;
    }

    public List<TaGzzTipoPagoFactura> getAllActive() {
        Query query = session.createQuery("from TaGzzTipoPagoFactura E where E.estRegCod = 'A'");
        List<TaGzzTipoPagoFactura> estados = query.list();
        System.out.println(estados);
        return estados;
    }

    public TaGzzTipoPagoFactura getById(int id) {
        TaGzzTipoPagoFactura estado = null;
        try {
            estado = (TaGzzTipoPagoFactura) session.load(TaGzzTipoPagoFactura.class, id);
        } catch (ObjectNotFoundException e) {
            return null;
        }
        return estado;
    }
    
    public void save(TaGzzTipoPagoFactura tipoPagoFactura) {
        session.save(tipoPagoFactura);     
    }
    
    public void update(TaGzzTipoPagoFactura tipoPagoFactura){
        session.update(tipoPagoFactura);
    }
    
    public void saveOrUpdate(TaGzzTipoPagoFactura tipoPagoFactura){
        session.saveOrUpdate(tipoPagoFactura);
    }
    
    public void delete(TaGzzTipoPagoFactura tipoPagoFactura){
        session.delete(tipoPagoFactura);
    }
    
}
