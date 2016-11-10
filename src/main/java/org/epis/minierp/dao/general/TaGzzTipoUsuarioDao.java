package org.epis.minierp.dao.general;

import java.util.List;
import org.epis.minierp.model.TaGzzTipoUsuario;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

public class TaGzzTipoUsuarioDao {

    private Session session;

    public TaGzzTipoUsuarioDao() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }

    public List<TaGzzTipoUsuario> getAll() {
        Query query = session.createQuery("from TaGzzTipoUsuario");
        List<TaGzzTipoUsuario> estados = query.list();
        return estados;
    }

    public List<TaGzzTipoUsuario> getAllActive() {
        Query query = session.createQuery("from TaGzzTipoUsuario E where E.estRegCod = 'A'");
        List<TaGzzTipoUsuario> estados = query.list();
        System.out.println(estados);
        return estados;
    }
    public List<TaGzzTipoUsuario> getAllInactive() {
        Query query = session.createQuery("from TaGzzTipoUsuario E where E.estRegCod = 'I'");
        List<TaGzzTipoUsuario> estados = query.list();
        System.out.println(estados);
        return estados;
    }

    public TaGzzTipoUsuario getById(int id) {
        TaGzzTipoUsuario estado = null;
        try {
            estado = (TaGzzTipoUsuario) session.load(TaGzzTipoUsuario.class, id);
        } catch (ObjectNotFoundException e) {
            return null;
        }
        return estado;
    }
    
    public void save(TaGzzTipoUsuario tipoUsuario) {
        session.save(tipoUsuario);     
    }
    
    public void update(TaGzzTipoUsuario tipoUsuario){
        session.update(tipoUsuario);
    }
    
    public void saveOrUpdate(TaGzzTipoUsuario tipoUsuario){
        session.saveOrUpdate(tipoUsuario);
    }
    
    public void delete(TaGzzTipoUsuario tipoUsuario){
        session.delete(tipoUsuario);
    }
    
}
