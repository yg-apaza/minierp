
package org.epis.minierp.dao.ventas;

import java.util.List;
import org.epis.minierp.model.EnP1mCatalogoRuta;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

public class EnP1mCatalogoRutaDao {
    
    private Session session;

    public EnP1mCatalogoRutaDao() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }
    
    public List<EnP1mCatalogoRuta> getAll() {
        Query query = session.createQuery("from EnP1mCatalogoRuta");
        List<EnP1mCatalogoRuta> estados = query.list();
        return estados;
    }

    public List<EnP1mCatalogoRuta> getAllActive() {
        Query query = session.createQuery("from EnP1mCatalogoRuta E where E.estRegCod = 'A'");
        List<EnP1mCatalogoRuta> estados = query.list();
        System.out.println(estados);
        return estados;
    }
    
    public List<EnP1mCatalogoRuta> getAllInactives() {
        Query query = session.createQuery("from EnP1mCatalogoRuta E where E.estRegCod = 'I'");
        List<EnP1mCatalogoRuta> estados = query.list();
        System.out.println(estados);
        return estados;
    }

    public EnP1mCatalogoRuta getById(int id) {
        EnP1mCatalogoRuta estado;
        try {
            estado = (EnP1mCatalogoRuta) session.get(EnP1mCatalogoRuta.class, id);
        } catch (ObjectNotFoundException e) {
            return null;
        }
        return estado;
    }
    
    public void save(EnP1mCatalogoRuta ruta) {
        session.save(ruta);     
    }
    
    public void update(EnP1mCatalogoRuta ruta){
        session.update(ruta);
    }
    
    public void saveOrUpdate(EnP1mCatalogoRuta ruta){
        session.saveOrUpdate(ruta);
    }
    
    public void delete(EnP1mCatalogoRuta ruta){
        session.delete(ruta);
    }
}
