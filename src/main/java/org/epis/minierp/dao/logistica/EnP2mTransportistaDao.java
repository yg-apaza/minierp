/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.epis.minierp.dao.logistica;

import java.util.List;
import org.epis.minierp.model.EnP2mTransportista;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Bryan
 */
public class EnP2mTransportistaDao {
    
    private Session session;

    public EnP2mTransportistaDao() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }
    
    public List<EnP2mTransportista> getAll() {
        Query query = session.createQuery("from EnP2mTransportista");
        List<EnP2mTransportista> estados = query.list();
        return estados;
    }

    public List<EnP2mTransportista> getAllActive() {
        Query query = session.createQuery("from EnP2mTransportista E where E.estRegCod = 'A'");
        List<EnP2mTransportista> estados = query.list();
        System.out.println(estados);
        return estados;
    }
    
    public List<EnP2mTransportista> getAllInactive() {
        Query query = session.createQuery("from EnP2mTransportista E where E.estRegCod = 'I'");
        List<EnP2mTransportista> estados = query.list();
        System.out.println(estados);
        return estados;
    }

    public EnP2mTransportista getById(String id) {
        EnP2mTransportista estado = null;
        try {
            estado = (EnP2mTransportista) session.load(EnP2mTransportista.class, id);
        } catch (ObjectNotFoundException e) {
            return null;
        }
        return estado;
    }
    
    public void save(EnP2mTransportista guia) {
        session.save(guia);     
    }
    
    public void update(EnP2mTransportista guia){
        session.update(guia);
    }
    
    public void saveOrUpdate(EnP2mTransportista guia){
        session.saveOrUpdate(guia);
    }
    
    public void delete(EnP2mTransportista guia){
        session.delete(guia);
    }
}