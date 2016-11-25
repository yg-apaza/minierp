package org.epis.minierp.dao.contabilidad;

import java.util.List;
import org.epis.minierp.model.contabilidad.LibroDiarioView;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

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
        Criteria criteria = session.createCriteria(LibroDiarioView.class)
            .add(Restrictions.like("cueNum", cueNum+"%"));
        return criteria.list();
    }
}
