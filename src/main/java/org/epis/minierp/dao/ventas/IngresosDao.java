/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.epis.minierp.dao.ventas;

import java.util.List;
import org.epis.minierp.model.Ingresos;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;


/**
 *
 * @author Roycer
 */

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
