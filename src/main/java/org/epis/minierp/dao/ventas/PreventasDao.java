/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.epis.minierp.dao.ventas;

import java.util.List;
import org.epis.minierp.model.Preventas;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;


/**
 *
 * @author Roycer
 */

public class PreventasDao {

  private Session session;

    public PreventasDao() {
        
        session = HibernateUtil.getSessionFactory().getCurrentSession();  
    }

    public List<Preventas> getAll(String cliCod) {
        List<Preventas> resultados=null;
        Query query = session.createSQLQuery("CALL PROC_IngresosPreventas(:CliCod,2)")
	.addEntity(Preventas.class)
	.setParameter("CliCod",cliCod);
        resultados=query.list();
        return resultados;
    }   
}
