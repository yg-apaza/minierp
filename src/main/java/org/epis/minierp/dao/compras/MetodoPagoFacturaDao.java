package org.epis.minierp.dao.compras;

import java.util.List;
import org.epis.minierp.model.MetodoPagoFactura;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

public class MetodoPagoFacturaDao {
    private Session session;
    
    public MetodoPagoFacturaDao() {  
        session = HibernateUtil.getSessionFactory().getCurrentSession();  
    }
    
    public List <MetodoPagoFactura> getAll() {
        Query query = session.createQuery("from MetodoPagoFactura T");
        List <MetodoPagoFactura> metodos =  query.list();
        return metodos;
    }
    
    public List <MetodoPagoFactura> getAllActive() {
        Query query = session.createQuery("from MetodoPagoFactura T where T.estRegCod = 'A'");
        List <MetodoPagoFactura> metodos =  query.list();
        return metodos;
    }
    
    public MetodoPagoFactura getById(int id) {
        MetodoPagoFactura metodo = null;
        try {
            metodo = (MetodoPagoFactura)session.load(MetodoPagoFactura.class, id);
        } catch(ObjectNotFoundException e) {
            return null;
        }
        
        return metodo;
    }
}