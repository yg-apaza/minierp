package org.epis.minierp.dao.compras;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import org.epis.minierp.model.Producto;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

public class ProductoDao {
    private Session session;
    
    public ProductoDao() {  
        session = HibernateUtil.getSessionFactory().getCurrentSession();  
    }
    
    public List <Producto> getAll() {
        Query query = session.createQuery("from Producto T");
        List <Producto> productos =  query.list();
        return productos;
    }
    
    public List <Producto> getAllActive() {
        Query query = session.createQuery("from Producto T where T.estRegCod = 'A'");
        List <Producto> productos =  query.list();
        return productos;
    }
    
    public List<Producto> getAllProductsActive() {
        List<Producto> productos = new ArrayList<Producto>();
        Query query = session.createQuery("select p.proDet, p.proValUni, p.proStk from Producto where p.estRegCod = 'A'");

        return productos;
    }
    
    public Producto getById(String id) {
        Producto producto = null;
        try {
            producto = (Producto)session.load(Producto.class, id);
        } catch(ObjectNotFoundException e) {
            return null;
        }
        
        return producto;
    }
}