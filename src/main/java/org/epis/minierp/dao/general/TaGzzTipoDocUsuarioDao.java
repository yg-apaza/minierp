package org.epis.minierp.dao.general;

import java.util.List;
import org.epis.minierp.model.TaGzzTipoDocUsuario;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

public class TaGzzTipoDocUsuarioDao {

    private Session session;

    public TaGzzTipoDocUsuarioDao() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }

    public List<TaGzzTipoDocUsuario> getAll() {
        Query query = session.createQuery("from TaGzzTipoDocUsuario");
        List<TaGzzTipoDocUsuario> estados = query.list();
        return estados;
    }

    public List<TaGzzTipoDocUsuario> getAllActive() {
        Query query = session.createQuery("from TaGzzTipoDocUsuario E where E.estRegCod = 'A'");
        List<TaGzzTipoDocUsuario> estados = query.list();
        System.out.println(estados);
        return estados;
    }

    public TaGzzTipoDocUsuario getById(int id) {
        TaGzzTipoDocUsuario estado = null;
        try {
            estado = (TaGzzTipoDocUsuario) session.load(TaGzzTipoDocUsuario.class, id);
        } catch (ObjectNotFoundException e) {
            return null;
        }
        return estado;
    }
    
    public void save(TaGzzTipoDocUsuario tipoDocUsuario) {
        session.save(tipoDocUsuario);     
    }
    
    public void update(TaGzzTipoDocUsuario tipoDocUsuario){
        session.update(tipoDocUsuario);
    }
    
    public void saveOrUpdate(TaGzzTipoDocUsuario tipoDocUsuario){
        session.saveOrUpdate(tipoDocUsuario);
    }
    
    public void delete(TaGzzTipoDocUsuario tipoDocUsuario){
        session.delete(tipoDocUsuario);
    }
    
}
