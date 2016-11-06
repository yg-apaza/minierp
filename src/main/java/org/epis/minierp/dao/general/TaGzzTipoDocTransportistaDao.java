/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.epis.minierp.dao.general;

import java.util.List;
import org.epis.minierp.model.TaGzzTipoDocTransportista;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Bryan
 */
public class TaGzzTipoDocTransportistaDao {
    private Session session;

    public TaGzzTipoDocTransportistaDao() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }

    public List<TaGzzTipoDocTransportista> getAll() {
        Query query = session.createQuery("from TaGzzTipoDocTransportista");
        List<TaGzzTipoDocTransportista> estados = query.list();
        return estados;
    }

    public List<TaGzzTipoDocTransportista> getAllActive() {
        Query query = session.createQuery("from TaGzzTipoDocTransportista E where E.estRegCod = 'A'");
        List<TaGzzTipoDocTransportista> estados = query.list();
        System.out.println(estados);
        return estados;
    }

    public TaGzzTipoDocTransportista getById(int id) {
        TaGzzTipoDocTransportista estado = null;
        try {
            estado = (TaGzzTipoDocTransportista) session.load(TaGzzTipoDocTransportista.class, id);
        } catch (ObjectNotFoundException e) {
            return null;
        }
        return estado;
    }
    
    public void save(TaGzzTipoDocTransportista tipoDocTransportista) {
        session.save(tipoDocTransportista);     
    }
    
    public void update(TaGzzTipoDocTransportista tipoDocTransportista){
        session.update(tipoDocTransportista);
    }
    
    public void saveOrUpdate(TaGzzTipoDocTransportista tipoDocTransportista){
        session.saveOrUpdate(tipoDocTransportista);
    }
    
    public void delete(TaGzzTipoDocTransportista tipoDocTransportista){
        session.delete(tipoDocTransportista);
    }
}
