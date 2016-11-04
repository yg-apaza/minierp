package org.epis.minierp.dao.ventas;

import org.epis.minierp.model.EnP2mGuiaRemRemitente;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.Session;

public class EnP2mGuiaRemRemitenteDao {
    private Session session;

    public EnP2mGuiaRemRemitenteDao() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }
    
    public void save(EnP2mGuiaRemRemitente guia) {
        session.save(guia);     
    }
}
