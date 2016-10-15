package org.epis.minierp.dao.contabilidad;

import org.epis.minierp.model.contabilidad.CajaView;
import java.util.List;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;

public class BancosDAO {
    private static CajaDAO cajaDAO;
    private Session session;
    
    public BancosDAO()
    {  
        session = HibernateUtil.getSessionFactory().getCurrentSession();  
    }
    public List<CajaView> getView(){
        Query query = session.createQuery("from BancosView");
        return query.list();
    }
}
