package org.epis.minierp.dao.contabilidad;

import org.epis.minierp.util.HibernateUtil;
import org.hibernate.Session;

public class BalanceDao {
    private Session session;
    
    public BalanceDao()
    {  
        session = HibernateUtil.getSessionFactory().getCurrentSession();  
    }
}
