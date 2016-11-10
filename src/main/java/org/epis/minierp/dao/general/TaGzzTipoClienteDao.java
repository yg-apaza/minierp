package org.epis.minierp.dao.general;

import java.util.List;
import org.epis.minierp.model.TaGzzTipoCliente;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

public class TaGzzTipoClienteDao {
    
    private Session session;
    
    public TaGzzTipoClienteDao(){
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }
    
    public List<TaGzzTipoCliente> getAll() {
        Query query = session.createQuery("from TaGzzTipoCliente");
        List<TaGzzTipoCliente> estados = query.list();
        return estados;
    }

    public List<TaGzzTipoCliente> getAllActive() {
        Query query = session.createQuery("from TaGzzTipoCliente E where E.estRegCod = 'A'");
        List<TaGzzTipoCliente> estados = query.list();
        System.out.println(estados);
        return estados;
    }
    
    public List<TaGzzTipoCliente> getAllInactive() {
        Query query = session.createQuery("from TaGzzTipoCliente E where E.estRegCod = 'I'");
        List<TaGzzTipoCliente> estados = query.list();
        System.out.println(estados);
        return estados;
    }
    
    public TaGzzTipoCliente getById(int id) {
        TaGzzTipoCliente estado;
        try {
            estado = (TaGzzTipoCliente) session.get(TaGzzTipoCliente.class, id);
        } catch (ObjectNotFoundException e) {
            return null;
        }
        return estado;
    }
    
    public void save(TaGzzTipoCliente tipCliente) {
        session.save(tipCliente);     
    }
    
    public void update(TaGzzTipoCliente tipCliente){
        session.update(tipCliente);
    }
    
    public void saveOrUpdate(TaGzzTipoCliente tipCliente){
        session.saveOrUpdate(tipCliente);
    }
    
    public void delete(TaGzzTipoCliente tipCliente){
        session.delete(tipCliente);
    }
}
