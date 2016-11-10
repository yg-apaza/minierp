/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.epis.minierp.dao.general;

import java.util.List;
import org.epis.minierp.model.TaGzzTipoDevolucion;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Bryan
 */
public class TaGzzTipoDevolucionDao {
    private Session session;

    public TaGzzTipoDevolucionDao() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }

    public List<TaGzzTipoDevolucion> getAll() {
        Query query = session.createQuery("from TaGzzTipoDevolucion");
        List<TaGzzTipoDevolucion> estados = query.list();
        return estados;
    }

    public List<TaGzzTipoDevolucion> getAllActive() {
        Query query = session.createQuery("from TaGzzTipoDevolucion E where E.estRegCod = 'A'");
        List<TaGzzTipoDevolucion> estados = query.list();
        System.out.println(estados);
        return estados;
    }
    
    public List<TaGzzTipoDevolucion> getAllInactive() {
        Query query = session.createQuery("from TaGzzTipoDevolucion E where E.estRegCod = 'I'");
        List<TaGzzTipoDevolucion> estados = query.list();
        System.out.println(estados);
        return estados;
    }

    public TaGzzTipoDevolucion getById(int id) {
        TaGzzTipoDevolucion estado = null;
        try {
            estado = (TaGzzTipoDevolucion) session.load(TaGzzTipoDevolucion.class, id);
        } catch (ObjectNotFoundException e) {
            return null;
        }
        return estado;
    }
    
    public void save(TaGzzTipoDevolucion tipoDevolucion) {
        session.save(tipoDevolucion);     
    }
    
    public void update(TaGzzTipoDevolucion tipoDevolucion){
        session.update(tipoDevolucion);
    }
    
    public void saveOrUpdate(TaGzzTipoDevolucion tipoDevolucion){
        session.saveOrUpdate(tipoDevolucion);
    }
    
    public void delete(TaGzzTipoDevolucion tipoDevolucion){
        session.delete(tipoDevolucion);
    }
}
