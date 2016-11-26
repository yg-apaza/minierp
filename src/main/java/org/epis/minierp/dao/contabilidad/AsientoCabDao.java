package org.epis.minierp.dao.contabilidad;

import org.epis.minierp.model.EnP3mAsientoCab;
import org.epis.minierp.model.EnP3mAsientoCabId;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
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
    
    public EnP3mAsientoCab getById(EnP3mAsientoCabId id){
        EnP3mAsientoCab asiento = null;
        try {
            asiento = (EnP3mAsientoCab)session.load(EnP3mAsientoCab.class, id);
        } catch(ObjectNotFoundException e)
        {
            return null;
        }
        return asiento;
    }
}
