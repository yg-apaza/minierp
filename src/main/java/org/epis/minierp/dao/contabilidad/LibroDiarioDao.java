package org.epis.minierp.dao.contabilidad;

import java.util.List;
import org.epis.minierp.model.EnP3mLibroDiario;
import org.epis.minierp.model.ventas.Ingresos;
import org.epis.minierp.model.contabilidad.LibroDiario;
import org.epis.minierp.model.TaGzzMoneda;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Roycer
 */
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
    
    public List<LibroDiario> getAllOperaciones(int oLibDiaCod) {
        List<LibroDiario> resultados=null;
        Query query = session.createSQLQuery("CALL PROC_LibroDiario(:oLibDiaCod)")
	.addEntity(LibroDiario.class)
	.setParameter("oLibDiaCod",oLibDiaCod);
        resultados=query.list();
        return resultados;
    }   
    
}
