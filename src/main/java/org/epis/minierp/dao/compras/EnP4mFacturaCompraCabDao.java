package org.epis.minierp.dao.compras;

import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.epis.minierp.model.EnP4mFacturaCompraCab;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

public class EnP4mFacturaCompraCabDao {
    private Session session;
    
    public EnP4mFacturaCompraCabDao() {  
        session = HibernateUtil.getSessionFactory().getCurrentSession();  
    }
    
    public EnP4mFacturaCompraCab getById(String id) {      
        EnP4mFacturaCompraCab facturaCompraCabecera = null;
        facturaCompraCabecera = (EnP4mFacturaCompraCab)session.load(EnP4mFacturaCompraCab.class, id);
        return facturaCompraCabecera;
    }
    
    public EnP4mFacturaCompraCab getByIdActive(String id) {       
        EnP4mFacturaCompraCab facturaCompraCabecera = null;
        Query query = session.createQuery("from EnP4mFacturaCompraCab U where U.facComCabCod = :id and U.estRegCod = 'A'");
        query.setParameter("id", id);
        query.setMaxResults(1);
        try {
            List <EnP4mFacturaCompraCab> facturasCompraCabecera = query.list();
            facturaCompraCabecera =  facturasCompraCabecera.get(0);
        } catch(ObjectNotFoundException e) {
            return null;
        } catch (IndexOutOfBoundsException ex) {
            Logger.getLogger(EnP4mFacturaCompraCabDao.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
        return facturaCompraCabecera;
    }
    
    public List <EnP4mFacturaCompraCab> getAll() {
        Query query = session.createQuery("from EnP4mFacturaCompraCab");        
        List <EnP4mFacturaCompraCab> facturasCompraCabecera =  query.list();
        return facturasCompraCabecera;
    }
    
    public void save(EnP4mFacturaCompraCab facturaCompraCabecera) {
        session.save(facturaCompraCabecera);     
    }
    
    public void update(EnP4mFacturaCompraCab facturaCompraCabecera) {
        session.update(facturaCompraCabecera);     
    }
    
    public void saveOrUpdate(EnP4mFacturaCompraCab facturaCompraCabecera) {
        session.saveOrUpdate(facturaCompraCabecera);     
    }
    
    public void delete(EnP4mFacturaCompraCab facturaCompraCabecera) {
        session.delete(facturaCompraCabecera);     
    }
    
}