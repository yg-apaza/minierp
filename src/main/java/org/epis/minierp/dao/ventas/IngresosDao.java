package org.epis.minierp.dao.ventas;

import java.util.List;
import org.epis.minierp.model.ventas.Ingresos;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;

public class IngresosDao {

  private Session session;

    public IngresosDao() {
        
        session = HibernateUtil.getSessionFactory().getCurrentSession();  
    }

    public List<Ingresos> getAll(String cliCod) {
        List<Ingresos> resultados=null;
        Query query = session.createSQLQuery("CALL PROC_IngresosPreventas(:CliCod,1)")
	.addEntity(Ingresos.class)
	.setParameter("CliCod",cliCod);
        resultados=query.list();
        return resultados;
    }   
}
