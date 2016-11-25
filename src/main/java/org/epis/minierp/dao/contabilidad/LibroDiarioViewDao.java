package org.epis.minierp.dao.contabilidad;

import java.util.List;
import org.epis.minierp.model.contabilidad.LibroDiarioView;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;

public class LibroDiarioViewDao
{
    private Session session;
    
    public LibroDiarioViewDao(){
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }
    
    public List<LibroDiarioView> getAll() {
        Query query = session.createQuery("from LibroDiarioView");
        List<LibroDiarioView> operaciones = query.list();
        return operaciones;
    }
    
    public List<LibroDiarioView> getAll(int codigo) {
        Query query = session.createQuery("from LibroDiarioView where LibDiaCod = :cod");
        query.setParameter("cod", codigo);
        List<LibroDiarioView> operaciones = query.list();
        return operaciones;
    }
    
    public List<LibroDiarioView> getAllNiv(String cueNum){
        Query query = session.createQuery("from LibroDiarioView where (cueNum like :cod)");
        query.setParameter("cod", cueNum);
        return query.list();
    }
}
