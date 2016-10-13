package org.epis.minierp.dao.compras;

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
    
    public List <TaGzzMetodoPagoFactura> getAll() {
        Query query = session.createQuery("from TaGzzMetodoPagoFactura T");
        List <TaGzzMetodoPagoFactura> metodos =  query.list();
        return metodos;
    }
    
    public List <TaGzzMetodoPagoFactura> getAllActive() {
        Query query = session.createQuery("from TaGzzMetodoPagoFactura T where T.estRegCod = 'A'");
        List <TaGzzMetodoPagoFactura> metodos =  query.list();
        return metodos;
    }
    
    public TaGzzMetodoPagoFactura getById(int id) {
        TaGzzMetodoPagoFactura metodo = null;
        try {
            metodo = (TaGzzMetodoPagoFactura)session.load(TaGzzMetodoPagoFactura.class, id);
        } catch(ObjectNotFoundException e) {
            return null;
        }
        
        return metodo;
    }
}