package org.epis.minierp.dao.ventas;

import java.util.List;
import org.epis.minierp.model.EnP1mDocumentoUsuario;
import org.epis.minierp.model.EnP1mDocumentoUsuarioId;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

public class EnP1mDocumentoUsuarioDao {

    private Session session;

    public EnP1mDocumentoUsuarioDao() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }

    public List<EnP1mDocumentoUsuario> getAll() {
        Query query = session.createQuery("from EnP1mDocumentoUsuario");
        List<EnP1mDocumentoUsuario> estados = query.list();
        return estados;
    }

    public List<EnP1mDocumentoUsuario> getAllActive() {
        Query query = session.createQuery("from EnP1mDocumentoUsuario E where E.estRegCod = 'A'");
        List<EnP1mDocumentoUsuario> estados = query.list();
        System.out.println(estados);
        return estados;
    }

    public EnP1mDocumentoUsuario getById(EnP1mDocumentoUsuarioId id) {
        EnP1mDocumentoUsuario estado = null;
        try {
            estado = (EnP1mDocumentoUsuario) session.load(EnP1mDocumentoUsuario.class, id);
        } catch (ObjectNotFoundException e) {
            return null;
        }
        return estado;
    }
    
    public void save(EnP1mDocumentoUsuario docUsuario) {
        session.save(docUsuario);     
    }
    
    public void update(EnP1mDocumentoUsuario docUsuario){
        session.update(docUsuario);
    }
    
    public void saveOrUpdate(EnP1mDocumentoUsuario docUsuario){
        session.saveOrUpdate(docUsuario);
    }
    
    public void delete(EnP1mDocumentoUsuario docUsuario){
        session.delete(docUsuario);
    }
    
}
