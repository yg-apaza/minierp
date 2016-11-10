package org.epis.minierp.dao.general;

import java.util.List;
import org.epis.minierp.model.TaGzzTipoDocCliente;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

public class TaGzzTipoDocClienteDao {

    private Session session;

    public TaGzzTipoDocClienteDao() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }

    public List<TaGzzTipoDocCliente> getAll() {
        Query query = session.createQuery("from TaGzzTipoDocCliente");
        List<TaGzzTipoDocCliente> estados = query.list();
        return estados;
    }

    public List<TaGzzTipoDocCliente> getAllActive() {
        Query query = session.createQuery("from TaGzzTipoDocCliente E where E.estRegCod = 'A'");
        List<TaGzzTipoDocCliente> estados = query.list();
        System.out.println(estados);
        return estados;
    }
    public List<TaGzzTipoDocCliente> getAllInactive() {
        Query query = session.createQuery("from TaGzzTipoDocCliente E where E.estRegCod = 'I'");
        List<TaGzzTipoDocCliente> estados = query.list();
        System.out.println(estados);
        return estados;
    }

    public TaGzzTipoDocCliente getById(int id) {
        TaGzzTipoDocCliente estado = null;
        try {
            estado = (TaGzzTipoDocCliente) session.load(TaGzzTipoDocCliente.class, id);
        } catch (ObjectNotFoundException e) {
            return null;
        }
        return estado;
    }
    
    public void save(TaGzzTipoDocCliente tipoDocCliente) {
        session.save(tipoDocCliente);     
    }
    
    public void update(TaGzzTipoDocCliente tipoDocCliente){
        session.update(tipoDocCliente);
    }
    
    public void saveOrUpdate(TaGzzTipoDocCliente tipoDocCliente){
        session.saveOrUpdate(tipoDocCliente);
    }
    
    public void delete(TaGzzTipoDocCliente tipoDocCliente){
        session.delete(tipoDocCliente);
    }
    
}
