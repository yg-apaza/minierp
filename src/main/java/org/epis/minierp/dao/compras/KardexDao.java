package org.epis.minierp.dao.compras;

import java.util.List;

import org.epis.minierp.model.compras.Kardex;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;

public class KardexDao {

    private Session session;

    public KardexDao() {
        
        session = HibernateUtil.getSessionFactory().getCurrentSession();  
    }

    public List<Kardex> getAll(String codProd) {
        List<Kardex> resultados=null;
        Query query = session.createSQLQuery(
	"CALL kardex_prom_ponderado(:prodCode)")
	.addEntity(Kardex.class)
	.setParameter("prodCode",codProd );
        resultados=query.list();
        return resultados;
    }
}