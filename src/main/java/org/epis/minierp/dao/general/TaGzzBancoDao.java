/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.epis.minierp.dao.general;

import java.util.List;
import org.epis.minierp.model.TaGzzBanco;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Bryan
 */
public class TaGzzBancoDao {
    private Session session;

    public TaGzzBancoDao() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }

    public List<TaGzzBanco> getAll() {
        Query query = session.createQuery("from TaGzzBanco");
        List<TaGzzBanco> estados = query.list();
        return estados;
    }

    public List<TaGzzBanco> getAllActive() {
        Query query = session.createQuery("from TaGzzBanco E where E.estRegCod = 'A'");
        List<TaGzzBanco> estados = query.list();
        System.out.println(estados);
        return estados;
    }
    public List<TaGzzBanco> getAllInactive() {
        Query query = session.createQuery("from TaGzzBanco A where A.estRegCod = 'I'");
        try{
        List<TaGzzBanco> estados = query.list();
        System.out.println(estados);
        return estados;
        }
        catch(Exception e){
         return null;   
        }
    }

    public TaGzzBanco getById(int id) {
        TaGzzBanco estado = null;
        try {
            estado = (TaGzzBanco) session.load(TaGzzBanco.class, id);
        } catch (ObjectNotFoundException e) {
            return null;
        }
        return estado;
    }
    
    public void save(TaGzzBanco banco) {
        session.save(banco);     
    }
    
    public void update(TaGzzBanco banco){
        session.update(banco);
    }
    
    public void saveOrUpdate(TaGzzBanco banco){
        session.saveOrUpdate(banco);
    }
    
    public void delete(TaGzzBanco banco){
        session.delete(banco);
    }
}
