package org.epis.minierp.dao.perifericos;

import java.text.SimpleDateFormat;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.epis.minierp.model.EnP2mProducto;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;

public class ProductoDao
{
    private SimpleDateFormat dt = new SimpleDateFormat("yyyy/MM/dd");
    private Session session;
    
    public ProductoDao()
    {  
        session = HibernateUtil.getSessionFactory().getCurrentSession();  
    }
    
    public EnP2mProducto getById(String id)
    {
        EnP2mProducto producto = null;
        producto =  (EnP2mProducto)session.load(EnP2mProducto.class, id);
        return producto;
    }
    
    public EnP2mProducto getByIdActive(String id)
    {
        EnP2mProducto producto = null;

        Query query = session.createQuery("from EnP2mProducto P where P.proCod = :id and P.estRegCod = 'A'");
        query.setParameter("id", id);
        query.setMaxResults(1);
        try {
            List<EnP2mProducto> productos = query.list();
            producto =  productos.get(0);
        } catch (IndexOutOfBoundsException ex) {
            Logger.getLogger(ProductoDao.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
        return producto;
    }
    
    public List<EnP2mProducto> getAll()
    {
        
        Query query = session.createQuery("from EnP2mProducto");
        List<EnP2mProducto> productos =  query.list();

        return productos;
    }
    
    public void save(EnP2mProducto producto) {
        session.save(producto);     
    }
    
    public void increaseStock(int proCod) {
        EnP2mProducto producto = (EnP2mProducto)session.get(EnP2mProducto.class, proCod); 
        producto.setProStk(producto.getProStk()+1);
	session.update(producto); 
    }
}