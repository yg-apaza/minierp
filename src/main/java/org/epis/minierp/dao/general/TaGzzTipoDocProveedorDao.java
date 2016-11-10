/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.epis.minierp.dao.general;

import java.util.List;
import org.epis.minierp.model.TaGzzTipoDocProveedor;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Bryan
 */
public class TaGzzTipoDocProveedorDao {
    private Session session;

    public TaGzzTipoDocProveedorDao() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }

    public List<TaGzzTipoDocProveedor> getAll() {
        Query query = session.createQuery("from TaGzzTipoDocProveedor");
        List<TaGzzTipoDocProveedor> estados = query.list();
        return estados;
    }

    public List<TaGzzTipoDocProveedor> getAllActive() {
        Query query = session.createQuery("from TaGzzTipoDocProveedor E where E.estRegCod = 'A'");
        List<TaGzzTipoDocProveedor> estados = query.list();
        System.out.println(estados);
        return estados;
    }
    public List<TaGzzTipoDocProveedor> getAllInactive() {
        Query query = session.createQuery("from TaGzzTipoDocProveedor E where E.estRegCod = 'I'");
        List<TaGzzTipoDocProveedor> estados = query.list();
        System.out.println(estados);
        return estados;
    }

    public TaGzzTipoDocProveedor getById(int id) {
        TaGzzTipoDocProveedor estado = null;
        try {
            estado = (TaGzzTipoDocProveedor) session.load(TaGzzTipoDocProveedor.class, id);
        } catch (ObjectNotFoundException e) {
            return null;
        }
        return estado;
    }
    
    public void save(TaGzzTipoDocProveedor tipoDocProveedor) {
        session.save(tipoDocProveedor);     
    }
    
    public void update(TaGzzTipoDocProveedor tipoDocProveedor){
        session.update(tipoDocProveedor);
    }
    
    public void saveOrUpdate(TaGzzTipoDocProveedor tipoDocProveedor){
        session.saveOrUpdate(tipoDocProveedor);
    }
    
    public void delete(TaGzzTipoDocProveedor tipoDocProveedor){
        session.delete(tipoDocProveedor);
    }
}
