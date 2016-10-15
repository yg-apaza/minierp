package org.epis.minierp.dao.compras;

import java.util.List;

import org.epis.minierp.model.Kardex;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;

public class KardexDao {

    private Session session;

    public KardexDao() {
        
        session = HibernateUtil.getSessionFactory().getCurrentSession();  
    }
    public <T> List<T> findByNamedQuery(String namedQuery, int firstResult, int maxResults, Object... values) {

        final Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        final Query query = session.getNamedQuery(namedQuery);

        for (int i = 0; i < values.length; i++) {
            query.setParameter(i, values[i]);
        }

        if (firstResult > 0) {
            query.setFirstResult(firstResult);
        }

        if (maxResults > 0) {
            query.setMaxResults(maxResults);
        }

        return query.list();
    }

    public List<Kardex> getAll(String codProd) {
        List<Kardex> resultados=null;
        resultados=findByNamedQuery("Kardex.findByProducto",0,0);
        return resultados;
    }
}