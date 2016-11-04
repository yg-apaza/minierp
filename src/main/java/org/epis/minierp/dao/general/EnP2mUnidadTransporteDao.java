/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.epis.minierp.dao.general;

import java.util.List;
import org.epis.minierp.model.EnP2mUnidadTransporte;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Bryan
 */
public class EnP2mUnidadTransporteDao {
    private Session session;

    public EnP2mUnidadTransporteDao() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }
    
    public List<EnP2mUnidadTransporte> getAll() {
        Query query = session.createQuery("from EnP2mUnidadTransporte");
        List<EnP2mUnidadTransporte> estados = query.list();
        return estados;
    }

    public List<EnP2mUnidadTransporte> getAllActive() {
        Query query = session.createQuery("from EnP2mUnidadTransporte E where E.estRegCod = 'A'");
        List<EnP2mUnidadTransporte> estados = query.list();
        System.out.println(estados);
        return estados;
    }
    
    public List<EnP2mUnidadTransporte> getAllInactive() {
        Query query = session.createQuery("from EnP2mUnidadTransporte E where E.estRegCod = 'I'");
        List<EnP2mUnidadTransporte> estados = query.list();
        System.out.println(estados);
        return estados;
    }

    public EnP2mUnidadTransporte getById(String id) {
        EnP2mUnidadTransporte estado = null;
        try {
            estado = (EnP2mUnidadTransporte) session.load(EnP2mUnidadTransporte.class, id);
        } catch (ObjectNotFoundException e) {
            return null;
        }
        return estado;
    }
    
    public void save(EnP2mUnidadTransporte guia) {
        session.save(guia);     
    }
    
    public void update(EnP2mUnidadTransporte guia){
        session.update(guia);
    }
    
    public void saveOrUpdate(EnP2mUnidadTransporte guia){
        session.saveOrUpdate(guia);
    }
    
    public void delete(EnP2mUnidadTransporte guia){
        session.delete(guia);
    }
}
