package org.epis.minierp.dao.compras;

import java.util.List;
import org.epis.minierp.model.Moneda;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

public class MonedaDao { 
    private Session session;
    
    public MonedaDao() {  
        session = HibernateUtil.getSessionFactory().getCurrentSession();  
    }
    
    public List <Moneda> getAll() {
        Query query = session.createQuery("from Moneda T");
        List <Moneda> monedas =  query.list();
        return monedas;
    }
    
    public List <Moneda> getAllActive() {
        Query query = session.createQuery("from Moneda T where T.estRegCod = 'A'");
        List <Moneda> monedas =  query.list();
        return monedas;
    }
    
    public Moneda getById(int id) {
        Moneda moneda = null;
        try {
            moneda = (Moneda)session.load(Moneda.class, id);
        } catch(ObjectNotFoundException e) {
            return null;
        }
        
        return moneda;
    }
}