package org.epis.minierp.dao.compras;

import java.util.List;
import org.epis.minierp.model.TaGzzMoneda;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

public class TaGzzMonedaDao { 
    private Session session;
    
    public TaGzzMonedaDao() {  
        session = HibernateUtil.getSessionFactory().getCurrentSession();  
    }
    
    public List <TaGzzMoneda> getAll() {
        Query query = session.createQuery("from TaGzzMoneda T");
        List <TaGzzMoneda> monedas =  query.list();
        return monedas;
    }
    
    public List <TaGzzMoneda> getAllActive() {
        Query query = session.createQuery("from TaGzzMoneda T where T.estRegCod = 'A'");
        List <TaGzzMoneda> monedas =  query.list();
        return monedas;
    }
    
    public TaGzzMoneda getById(int id) {
        TaGzzMoneda moneda = null;
        try {
            moneda = (TaGzzMoneda)session.load(TaGzzMoneda.class, id);
        } catch(ObjectNotFoundException e) {
            return null;
        }
        
        return moneda;
    }
}