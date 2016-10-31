
package org.epis.minierp.dao.logistica;

import java.util.List;
import org.epis.minierp.model.EnP2mGuiaRemRemitente;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;


public class EnP2mGuiaRemRemitenteDao {
    
    private Session session;

    public EnP2mGuiaRemRemitenteDao() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }
    
    public List<EnP2mGuiaRemRemitente> getAll() {
        Query query = session.createQuery("from EnP2mGuiaRemRemitente");
        List<EnP2mGuiaRemRemitente> estados = query.list();
        return estados;
    }

    public List<EnP2mGuiaRemRemitente> getAllActive() {
        Query query = session.createQuery("from EnP2mGuiaRemRemitente E where E.estRegCod = 'A'");
        List<EnP2mGuiaRemRemitente> estados = query.list();
        System.out.println(estados);
        return estados;
    }
    
    public List<EnP2mGuiaRemRemitente> getAllInactive() {
        Query query = session.createQuery("from EnP2mGuiaRemRemitente E where E.estRegCod = 'I'");
        List<EnP2mGuiaRemRemitente> estados = query.list();
        System.out.println(estados);
        return estados;
    }

    public EnP2mGuiaRemRemitente getById(String id) {
        EnP2mGuiaRemRemitente estado = null;
        try {
            estado = (EnP2mGuiaRemRemitente) session.load(EnP2mGuiaRemRemitente.class, id);
        } catch (ObjectNotFoundException e) {
            return null;
        }
        return estado;
    }
    
    public void save(EnP2mGuiaRemRemitente guia) {
        session.save(guia);     
    }
    
    public void update(EnP2mGuiaRemRemitente guia){
        session.update(guia);
    }
    
    public void saveOrUpdate(EnP2mGuiaRemRemitente guia){
        session.saveOrUpdate(guia);
    }
    
    public void delete(EnP2mGuiaRemRemitente guia){
        session.delete(guia);
    }
}
