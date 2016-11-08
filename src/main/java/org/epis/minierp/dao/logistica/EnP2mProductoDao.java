package org.epis.minierp.dao.logistica;

import java.util.List;
import org.epis.minierp.model.EnP2mProducto;
import org.epis.minierp.model.EnP2mProductoId;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

public class EnP2mProductoDao {
    private Session session;
    
    public EnP2mProductoDao() {  
        session = HibernateUtil.getSessionFactory().getCurrentSession();  
    }
    
    public List <EnP2mProducto> getAll() {
        Query query = session.createQuery("from EnP2mProducto");
        List <EnP2mProducto> productos =  query.list();
        return productos;
    }
    
    public List <EnP2mProducto> getAllActive() {
        Query query = session.createQuery("from EnP2mProducto T where T.estRegCod = 'A'");
        List <EnP2mProducto> productos =  query.list();
        return productos;
    }
    
    public List <EnP2mProducto> getAllInactive() {
        Query query = session.createQuery("from EnP2mProducto T where T.estRegCod = 'I'");
        List <EnP2mProducto> productos =  query.list();
        return productos;
    }
    
    public List <EnP2mProducto> getAllByAlmacen(String AlmCod){
        Query query = session.createQuery("from EnP2mProducto T where T.estRegCod = 'A' and T.enP2mAlmacen.almCod=:p1");
        query.setParameter("p1", AlmCod);
        List <EnP2mProducto> productos =  query.list();
        return productos;
    }
    public List <EnP2mProducto> getA() {
        Query query = session.createQuery("FROM EnP2mProducto WHERE proPreUniVen > (SELECT Avg(proPreUniVen) FROM EnP2mProducto WHERE estRegCod = 'A') and proStk < (SELECT Avg(proStk) FROM EnP2mProducto WHERE estRegCod = 'A') and estRegCod = 'A'");
        List <EnP2mProducto> productos =  query.list();
        return productos;
    }
    
    public List <EnP2mProducto> getB() {
        Query query = session.createQuery("FROM EnP2mProducto WHERE proPreUniVen <= (SELECT Avg(proPreUniVen) FROM EnP2mProducto WHERE estRegCod = 'A') and proStk <= (SELECT Avg(proStk) FROM EnP2mProducto WHERE estRegCod = 'A') and estRegCod = 'A' or "
                                            + "proPreUniVen >= (SELECT Avg(proPreUniVen) FROM EnP2mProducto WHERE estRegCod = 'A') and proStk >= (SELECT Avg(proStk) FROM EnP2mProducto WHERE estRegCod = 'A') and estRegCod = 'A'");
        List <EnP2mProducto> productos =  query.list();
        return productos;
    }
    
    public List <EnP2mProducto> getC() {
        Query query = session.createQuery("FROM EnP2mProducto WHERE proPreUniVen < (SELECT Avg(proPreUniVen) FROM EnP2mProducto WHERE estRegCod = 'A') and proStk > (SELECT Avg(proStk) FROM EnP2mProducto WHERE estRegCod = 'A') and estRegCod = 'A'");
        List <EnP2mProducto> productos =  query.list();
        return productos;
    }
    
    public EnP2mProducto getById(EnP2mProductoId id) {
        EnP2mProducto producto = null;
        try {
            producto = (EnP2mProducto)session.load(EnP2mProducto.class, id);
        } catch(ObjectNotFoundException e) {
            return null;
        }
        
        return producto;
    }
    
    public EnP2mProducto getByIdActive(EnP2mProductoId id) {
        EnP2mProducto producto = null;
        try {
            producto = (EnP2mProducto)session.load(EnP2mProducto.class, id);
            if(producto.getEstRegCod() != 'A')
                return null;
        } catch(ObjectNotFoundException e) {
            return null;
        }
        
        return producto;
    }
    
    public EnP2mProducto getByDescription(String proDet) {
        EnP2mProducto producto = null;
        Query query = session.createQuery("from EnP2mProducto P where P.proDet = :det and P.estRegCod = 'A'");
        query.setParameter("det", proDet);
        query.setMaxResults(1);
        try {
            List <EnP2mProducto> productos = query.list();
            producto = productos.get(0);
        } catch (IndexOutOfBoundsException ex) {
            return null;
        }
        
        return producto;
    }
    
    public void save(EnP2mProducto producto) {
        session.save(producto);     
    }
    
    public void update(EnP2mProducto producto) {
        session.update(producto);     
    }

    public EnP2mProducto getById(String id) {
        EnP2mProducto producto = null;
        Query query = session.createQuery("FROM EnP2mProducto WHERE proCod = '"+id+"' and estRegCod = 'A'");
        List <EnP2mProducto> productos =  query.list();
        producto = productos.get(0);
        return producto;
    }
}