package org.epis.minierp.dao.contabilidad;

import java.util.List;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;

public class BalanceDao {
    private Session session;
    
    public BalanceDao(){
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }
    
    public List<LibroDiario> getAll(){
        Query query = session.createQuery("FROM LibroDiario");
        return query.list();
    }
}
