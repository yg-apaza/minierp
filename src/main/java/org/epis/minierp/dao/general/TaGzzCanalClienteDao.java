/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package org.epis.minierp.dao.general;

import java.util.List;
import org.epis.minierp.model.TaGzzCanalCliente;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author AlexanderYlnner
 */
public class TaGzzCanalClienteDao {
    private Session session;
    
    public TaGzzCanalClienteDao(){
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }
     public List<TaGzzCanalCliente> getAll() {
        Query query = session.createQuery("from TaGzzCanalCliente");
        List<TaGzzCanalCliente> canales = query.list();
        return canales;
    }

    public List<TaGzzCanalCliente> getAllActive() {
        Query query = session.createQuery("from TaGzzCanalCliente E where E.estRegCod = 'A'");
        List<TaGzzCanalCliente> canales = query.list();
        System.out.println(canales);
        return canales;
    }
    
    public List<TaGzzCanalCliente> getAllInactive() {
        Query query = session.createQuery("from TaGzzCanalCliente E where E.estRegCod = 'I'");
        List<TaGzzCanalCliente> canales = query.list();
        System.out.println(canales);
        return canales;
    }
    
    public TaGzzCanalCliente getById(int id) {
        TaGzzCanalCliente estado;
        try {
            estado = (TaGzzCanalCliente) session.get(TaGzzCanalCliente.class, id);
        } catch (ObjectNotFoundException e) {
            return null;
        }
        return estado;
    }
    
    public void save(TaGzzCanalCliente canal) {
        session.save(canal);     
    }
    
    public void update(TaGzzCanalCliente canal){
        session.update(canal);
    }
    
    public void saveOrUpdate(TaGzzCanalCliente canal){
        session.saveOrUpdate(canal);
    }
    
    public void delete(TaGzzCanalCliente canal){
        session.delete(canal);
    }
}
