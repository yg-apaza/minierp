package org.epis.minierp.dao.contabilidad;

import org.epis.minierp.model.EnP3mAsientoCab;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.Session;

public class AsientoCabDao
{
    private Session session;
    
    public AsientoCabDao() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }

    public void save(EnP3mAsientoCab asientoCab){
        session.save(asientoCab);
    }
}
