package org.epis.minierp.dao.ventas;

import java.util.List;
import org.epis.minierp.model.EnP1mCliente;
import org.epis.minierp.model.TaGzzEstadoCivil;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

public class EnP1mClienteDao {

    private Session session;

    public EnP1mClienteDao() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }

    public List<EnP1mCliente> getAll() {
        Query query = session.createQuery("from EnP1mCliente");
        List<EnP1mCliente> estados = query.list();
        return estados;
    }

    public List<EnP1mCliente> getAllActive() {
        Query query = session.createQuery("from EnP1mCliente E where E.estRegCod = 'A'");
        List<EnP1mCliente> estados = query.list();
        System.out.println(estados);
        return estados;
    }

    public EnP1mCliente getById(String id) {
        EnP1mCliente estado = null;
        try {
            estado = (EnP1mCliente) session.load(TaGzzEstadoCivil.class, id);
        } catch (ObjectNotFoundException e) {
            return null;
        }
        return estado;
    }
    
    public void save(EnP1mCliente cliente) {
        session.save(cliente);     
    }
}
