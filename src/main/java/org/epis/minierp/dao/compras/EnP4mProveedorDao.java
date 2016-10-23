package org.epis.minierp.dao.compras;

import java.util.List;
import org.epis.minierp.model.EnP4mProveedor;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

public class EnP4mProveedorDao {
    private Session session;
    
    public EnP4mProveedorDao() {  
        session = HibernateUtil.getSessionFactory().getCurrentSession();  
    }
    
    public List <EnP4mProveedor> getAll() {
        Query query = session.createQuery("from EnP4mProveedor T");
        List <EnP4mProveedor> proveedores =  query.list();
        return proveedores;
    }
    
    public List <EnP4mProveedor> getAllActive() {
        Query query = session.createQuery("from EnP4mProveedor T where T.estRegCod = 'A'");
        List <EnP4mProveedor> proveedors =  query.list();
        return proveedors;
    }
    
    public EnP4mProveedor getByIdActive(String docProCod) {
        EnP4mProveedor proveedor = null;
        Query query = session.createQuery("from EnP4mProveedor P where P.proCod = :id and P.estRegCod = 'A'");
        query.setParameter("id", docProCod);
        query.setMaxResults(1);
        try {
            List<EnP4mProveedor> proveedores = query.list();
            proveedor = proveedores.get(0);
        } catch (IndexOutOfBoundsException ex) {
            return null;
        }
        return proveedor;
    }
    
    public void save(EnP4mProveedor proveedor) {
        session.save(proveedor);     
    }
    
    public void update(EnP4mProveedor proveedor){
        session.update(proveedor);
    }
    
    public void delete(EnP4mProveedor proveedor){
        session.delete(proveedor);
    }
    
    public EnP4mProveedor getById(String id) {
        EnP4mProveedor proveedor = null;
        try {
            proveedor = (EnP4mProveedor)session.get(EnP4mProveedor.class, id);
        } catch(ObjectNotFoundException e) {
            return null;
        }
        
        return proveedor;
    }
}