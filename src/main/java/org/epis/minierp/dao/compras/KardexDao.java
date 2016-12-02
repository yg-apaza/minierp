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

    public List<Kardex> getAll(String codProd, String tipoKardex,String invCod) {
        List<Kardex> resultados = null;
        Query query = null;
        if (tipoKardex.equals("prom")) {
            query = session.createSQLQuery(
                    "CALL kardex_prom_ponderado(:prodCode,:invCode)")
                    .addEntity(Kardex.class)
                    .setParameter("prodCode", codProd)
                    .setParameter("invCode", invCod);
        } else if (tipoKardex.equals("peps")) {
            query = session.createSQLQuery(
                    "CALL kardex_peps(:prodCode,:invCode)")
                    .addEntity(Kardex.class)
                    .setParameter("prodCode", codProd)
                    .setParameter("invCode", invCod);
        }

        resultados = query.list();
        return resultados;
    }
}
