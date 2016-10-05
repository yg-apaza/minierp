package org.epis.minierp.dao.contabilidad;

import org.epis.minierp.util.HibernateUtil;
import org.hibernate.Session;

public class CajaDAO {
    private static CajaDAO cajaDAO;
    private Session session;
    
    public CajaDAO()
    {  
        session = HibernateUtil.getSessionFactory().getCurrentSession();  
    }
    
}