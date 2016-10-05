package org.epis.minierp.dao.compras;

import java.util.List;
import org.epis.minierp.model.Proveedor;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

public class ProveedorDao {
    private Session session;
    
    public ProveedorDao() {  
        session = HibernateUtil.getSessionFactory().getCurrentSession();  
    }
    
    public List <Proveedor> getAll() {
        Query query = session.createQuery("from Proveedor T");
        List <Proveedor> proveedores =  query.list();
        return proveedores;
    }
    
    public List <Proveedor> getAllActive() {
        Query query = session.createQuery("from Proveedor T where T.estRegCod = 'A'");
        List <Proveedor> proveedors =  query.list();
        return proveedors;
    }
    
    public Proveedor getById(int id) {
        Proveedor proveedor = null;
        try {
            proveedor = (Proveedor)session.load(Proveedor.class, id);
        } catch(ObjectNotFoundException e) {
            return null;
        }
        
        return proveedor;
    }
}