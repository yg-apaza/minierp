package org.epis.minierp.dao.logistica;

import java.util.List;
import org.epis.minierp.model.EnP2mAlmacen;
import org.epis.minierp.model.EnP2mInventarioCab;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

public class EnP2mInventarioCabDao {

    private Session session;

    public EnP2mInventarioCabDao() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }

    public EnP2mInventarioCab getById(String id) {
        EnP2mInventarioCab estado = null;
        try {
            estado = (EnP2mInventarioCab) session.load(EnP2mInventarioCab.class, id);
        } catch (ObjectNotFoundException e) {
            return null;
        }
        return estado;
    }
    
    public void save(EnP2mInventarioCab inventario) {
        session.save(inventario);     
    }
    
    public void update(EnP2mInventarioCab inventario){
        session.update(inventario);
    }
    
    public void saveOrUpdate(EnP2mInventarioCab inventario){
        session.saveOrUpdate(inventario);
    }
    
    public void delete(EnP2mInventarioCab inventario){
        session.delete(inventario);
    }
    
}
