/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.epis.minierp.dao.general;

import java.util.List;
import org.epis.minierp.model.TaGzzTipoFallaProducto;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Bryan
 */
public class TaGzzTipoFallaProductoDao {
    private Session session;

    public TaGzzTipoFallaProductoDao() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }

    public List<TaGzzTipoFallaProducto> getAll() {
        Query query = session.createQuery("from TaGzzTipoFallaProducto");
        List<TaGzzTipoFallaProducto> estados = query.list();
        return estados;
    }

    public List<TaGzzTipoFallaProducto> getAllActive() {
        Query query = session.createQuery("from TaGzzTipoFallaProducto E where E.estRegCod = 'A'");
        List<TaGzzTipoFallaProducto> estados = query.list();
        System.out.println(estados);
        return estados;
    }
    public List<TaGzzTipoFallaProducto> getAllInactive() {
        Query query = session.createQuery("from TaGzzTipoFallaProducto E where E.estRegCod = 'I'");
        List<TaGzzTipoFallaProducto> estados = query.list();
        System.out.println(estados);
        return estados;
    }

    public TaGzzTipoFallaProducto getById(int id) {
        TaGzzTipoFallaProducto estado = null;
        try {
            estado = (TaGzzTipoFallaProducto) session.load(TaGzzTipoFallaProducto.class, id);
        } catch (ObjectNotFoundException e) {
            return null;
        }
        return estado;
    }
    
    public void save(TaGzzTipoFallaProducto tipoFallaProducto) {
        session.save(tipoFallaProducto);     
    }
    
    public void update(TaGzzTipoFallaProducto tipoFallaProducto){
        session.update(tipoFallaProducto);
    }
    
    public void saveOrUpdate(TaGzzTipoFallaProducto tipoFallaProducto){
        session.saveOrUpdate(tipoFallaProducto);
    }
    
    public void delete(TaGzzTipoFallaProducto tipoFallaProducto){
        session.delete(tipoFallaProducto);
    }
}
