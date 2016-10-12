package org.epis.minierp.dao.ventas;

import java.util.List;
import org.epis.minierp.model.EnP1mFacturaVentaCab;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

public class EnP1mFacturaVentaCabDao {

    private Session session;

    public EnP1mFacturaVentaCabDao() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }

    public List<EnP1mFacturaVentaCab> getAll() {
        Query query = session.createQuery("from EnP1mFacturaVentaCab");
        List<EnP1mFacturaVentaCab> estados = query.list();
        return estados;
    }

    public List<EnP1mFacturaVentaCab> getAllActive() {
        Query query = session.createQuery("from EnP1mFacturaVentaCab E where E.estRegCod = 'A'");
        List<EnP1mFacturaVentaCab> estados = query.list();
        System.out.println(estados);
        return estados;
    }

    public EnP1mFacturaVentaCab getById(String id) {
        EnP1mFacturaVentaCab estado = null;
        try {
            estado = (EnP1mFacturaVentaCab) session.load(EnP1mFacturaVentaCab.class, id);
        } catch (ObjectNotFoundException e) {
            return null;
        }
        return estado;
    }
    
    public void save(EnP1mFacturaVentaCab facturaCab) {
        session.save(facturaCab);     
    }
    
    public void update(EnP1mFacturaVentaCab facturaCab){
        session.update(facturaCab);
    }
    
    public void saveOrUpdate(EnP1mFacturaVentaCab facturaCab){
        session.saveOrUpdate(facturaCab);
    }
    
    public void delete(EnP1mFacturaVentaCab facturaCab){
        session.delete(facturaCab);
    }
    
}
