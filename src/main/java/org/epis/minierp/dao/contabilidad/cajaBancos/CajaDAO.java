package org.epis.minierp.dao.contabilidad.cajaBancos;

import java.util.List;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;

public class CajaDAO {
    private Session session;
    
    public CajaDAO()
    {  
        session = HibernateUtil.getSessionFactory().getCurrentSession();  
    }
    
    public List<CajaModel> getView(){
        Query query = session.createQuery("from CajaModel");
        return query.list();
    }
}