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
    
    public List <EnP2mProducto> getA() {
        Query query = session.createQuery("FROM EnP2mProducto WHERE proPreUni > (SELECT Avg(proPreUni) FROM EnP2mProducto WHERE estRegCod = 'A') and proStk < (SELECT Avg(proStk) FROM EnP2mProducto WHERE estRegCod = 'A') and estRegCod = 'A'");
        List <EnP2mProducto> productos =  query.list();
        return productos;
    }
    
    public List <EnP2mProducto> getB() {
        Query query = session.createQuery("FROM EnP2mProducto WHERE proPreUni <= (SELECT Avg(proPreUni) FROM EnP2mProducto WHERE estRegCod = 'A') and proStk <= (SELECT Avg(proStk) FROM EnP2mProducto WHERE estRegCod = 'A') and estRegCod = 'A' or "
                                            + "proPreUni >= (SELECT Avg(proPreUni) FROM EnP2mProducto WHERE estRegCod = 'A') and proStk >= (SELECT Avg(proStk) FROM EnP2mProducto WHERE estRegCod = 'A') and estRegCod = 'A'");
        List <EnP2mProducto> productos =  query.list();
        return productos;
    }
    
    public List <EnP2mProducto> getC() {
        Query query = session.createQuery("FROM EnP2mProducto WHERE proPreUni < (SELECT Avg(proPreUni) FROM EnP2mProducto WHERE estRegCod = 'A') and proStk > (SELECT Avg(proStk) FROM EnP2mProducto WHERE estRegCod = 'A') and estRegCod = 'A'");
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
    
    public void save(EnP2mProducto producto) {
        session.save(producto);     
    }
    
    public void update(EnP2mProducto producto) {
        session.update(producto);     
    }
    
    public void increaseStock(int proCod) {
        EnP2mProducto producto = (EnP2mProducto)session.get(EnP2mProducto.class, proCod); 
        producto.setProStk(producto.getProStk()+1);
	session.update(producto); 
    }
}