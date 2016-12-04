package org.epis.minierp.dao.general;

import java.util.List;
import org.epis.minierp.model.TaGzzCanalUsuario;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;


public class TaGzzCanalUsuarioDao {
    
    private Session session;

    public TaGzzCanalUsuarioDao() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }

    public List<TaGzzCanalUsuario> getAll() {
        Query query = session.createQuery("from TaGzzCanalUsuario");
        List<TaGzzCanalUsuario> estados = query.list();
        return estados;
    }

    public List<TaGzzCanalUsuario> getAllActive() {
        Query query = session.createQuery("from TaGzzCanalUsuario E where E.estRegCod = 'A'");
        List<TaGzzCanalUsuario> estados = query.list();
        return estados;
    }
    
    public List<TaGzzCanalUsuario> getAllInactives() {
        Query query = session.createQuery("from TaGzzCanalUsuario E where E.estRegCod = 'I'");
        List<TaGzzCanalUsuario> estados = query.list();
        return estados;
    }

    public TaGzzCanalUsuario getById(int id) {
        TaGzzCanalUsuario estado = null;
        try {
            estado = (TaGzzCanalUsuario) session.load(TaGzzCanalUsuario.class, id);
        } catch (ObjectNotFoundException e) {
            return null;
        }
        return estado;
    }  
    
    public void save(TaGzzCanalUsuario canalUsu) {
        session.save(canalUsu);     
    }
    
    public void update(TaGzzCanalUsuario canalUsu){
        session.update(canalUsu);
    }
    
    public void saveOrUpdate(TaGzzCanalUsuario canalUsu){
        session.saveOrUpdate(canalUsu);
    }
    
    public void delete(TaGzzCanalUsuario canalUsu){
        session.delete(canalUsu);
    }
    
}
