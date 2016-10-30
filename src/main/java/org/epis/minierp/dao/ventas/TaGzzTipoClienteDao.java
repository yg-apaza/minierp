package org.epis.minierp.dao.ventas;

import java.util.List;
import org.epis.minierp.model.TaGzzTipoCliente;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;

public class TaGzzTipoClienteDao {
    
    private Session session;
    
    public TaGzzTipoClienteDao() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }
    
    public List<TaGzzTipoCliente> getAllActive() {
        Query query = session.createQuery("from TaGzzTipoCliente E where E.estRegCod = 'A'");
        List<TaGzzTipoCliente> tipos = query.list();
        return tipos;
    }
}
