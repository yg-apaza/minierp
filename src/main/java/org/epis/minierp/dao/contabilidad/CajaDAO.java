package org.epis.minierp.dao.contabilidad;

import org.epis.minierp.model.contabilidad.CajaView;
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
    
    public List<CajaView> getView(){
        Query query = session.createQuery("from CajaView");
        return query.list();
    }
}