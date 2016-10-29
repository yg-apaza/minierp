package org.epis.minierp.dao.general;

import java.util.List;
import org.epis.minierp.model.TaGzzTipoComprobante;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

public class TaGzzTipoComprobanteDao {


    private Session session;
    
    public TaGzzTipoComprobanteDao(){
         session = HibernateUtil.getSessionFactory().getCurrentSession();
    }
    
    public List<TaGzzTipoComprobante> getAll() {
        Query query = session.createQuery("from TaGzzTipoComprobante");
        List<TaGzzTipoComprobante> estados = query.list();
        return estados;
    }
    
    public TaGzzTipoComprobante getById(int id) {
        TaGzzTipoComprobante estado = null;
        try {
            estado = (TaGzzTipoComprobante) session.load(TaGzzTipoComprobante.class, id);
        } catch (ObjectNotFoundException e) {
            return null;
        }
        return estado;
    }
}