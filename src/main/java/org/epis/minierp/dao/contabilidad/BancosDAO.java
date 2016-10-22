package org.epis.minierp.dao.contabilidad;

import java.util.List;
import org.epis.minierp.model.contabilidad.BancosView;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;

public class BancosDAO {
    private static BancosDAO bancoDAO;
    private Session session;
    
    public BancosDAO()
    {  
        session = HibernateUtil.getSessionFactory().getCurrentSession();  
    }
    public List<BancosView> getView(){
        Query query = session.createQuery("from BancosView");
        return query.list();
    }
}
