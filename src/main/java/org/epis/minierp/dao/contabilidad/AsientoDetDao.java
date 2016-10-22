package org.epis.minierp.dao.contabilidad;

import org.epis.minierp.model.EnP3tAsientoDet;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.Session;

/**
 *
 * @author Roycer
 */
public class AsientoDetDao {
    
    private Session session;

    public AsientoDetDao() {     
        session = HibernateUtil.getSessionFactory().getCurrentSession(); 
    }
    
    public void save(EnP3tAsientoDet asientoDet){
        session.save(asientoDet);
    }
    
    

}
