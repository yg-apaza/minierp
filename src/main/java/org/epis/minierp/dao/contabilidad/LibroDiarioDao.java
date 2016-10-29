package org.epis.minierp.dao.contabilidad;

import java.util.List;
import org.epis.minierp.model.EnP3mLibroDiario;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;

public class LibroDiarioDao {

    private Session session;
    
    public LibroDiarioDao(){
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }
    public List<EnP3mLibroDiario> getAll() {
        Query query = session.createQuery("from EnP3mLibroDiario");
        List<EnP3mLibroDiario> estados = query.list();
        return estados;
    }
    public void save(EnP3mLibroDiario libDiario) {
        session.save(libDiario);     
    }
}
