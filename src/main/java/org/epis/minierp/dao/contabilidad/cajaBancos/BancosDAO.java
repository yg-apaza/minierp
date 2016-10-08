package org.epis.minierp.dao.contabilidad.cajaBancos;

import org.epis.minierp.dao.contabilidad.cajaBancos.CajaDAO;
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
