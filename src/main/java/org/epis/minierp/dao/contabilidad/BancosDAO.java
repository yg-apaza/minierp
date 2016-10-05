package org.epis.minierp.dao.contabilidad;

import org.epis.minierp.util.HibernateUtil;
import org.hibernate.Session;

public class BancosDAO {
    private static CajaDAO cajaDAO;
    private Session session;
    
    public BancosDAO()
    {  
        session = HibernateUtil.getSessionFactory().getCurrentSession();  
    }
}
