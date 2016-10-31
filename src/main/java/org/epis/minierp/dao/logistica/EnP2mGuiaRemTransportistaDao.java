
package org.epis.minierp.dao.logistica;

import java.util.List;
import org.epis.minierp.model.EnP2mGuiaRemTransportista;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;


public class EnP2mGuiaRemTransportistaDao {
    
    private Session session;

    public EnP2mGuiaRemTransportistaDao() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }
    
    public List<EnP2mGuiaRemTransportista> getAll() {
        Query query = session.createQuery("from EnP2mGuiaRemTransportista");
        List<EnP2mGuiaRemTransportista> estados = query.list();
        return estados;
    }

    public List<EnP2mGuiaRemTransportista> getAllActive() {
        Query query = session.createQuery("from EnP2mGuiaRemTransportista E where E.estRegCod = 'A'");
        List<EnP2mGuiaRemTransportista> estados = query.list();
        System.out.println(estados);
        return estados;
    }
    
    public List<EnP2mGuiaRemTransportista> getAllInactive() {
        Query query = session.createQuery("from EnP2mGuiaRemTransportista E where E.estRegCod = 'I'");
        List<EnP2mGuiaRemTransportista> estados = query.list();
        System.out.println(estados);
        return estados;
    }

    public EnP2mGuiaRemTransportista getById(String id) {
        EnP2mGuiaRemTransportista estado = null;
        try {
            estado = (EnP2mGuiaRemTransportista) session.load(EnP2mGuiaRemTransportista.class, id);
        } catch (ObjectNotFoundException e) {
            return null;
        }
        return estado;
    }
    
    public void save(EnP2mGuiaRemTransportista guia) {
        session.save(guia);     
    }
    
    public void update(EnP2mGuiaRemTransportista guia){
        session.update(guia);
    }
    
    public void saveOrUpdate(EnP2mGuiaRemTransportista guia){
        session.saveOrUpdate(guia);
    }
    
    public void delete(EnP2mGuiaRemTransportista guia){
        session.delete(guia);
    }
}
