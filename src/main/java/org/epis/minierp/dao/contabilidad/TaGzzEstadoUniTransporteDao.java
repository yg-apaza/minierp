/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.epis.minierp.dao.general;

import java.util.List;
import org.epis.minierp.model.TaGzzEstadoUniTransporte;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Bryan
 */
public class TaGzzEstadoUniTransporteDao {
    private Session session;
    
    public TaGzzEstadoUniTransporteDao(){
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }
    
    public List<TaGzzEstadoUniTransporte> getAll() {
        Query query = session.createQuery("from TaGzzEstadoUniTransporte");
        List<TaGzzEstadoUniTransporte> estados = query.list();
        return estados;
    }

    public List<TaGzzEstadoUniTransporte> getAllActive() {
        Query query = session.createQuery("from TaGzzEstadoUniTransporte E where E.estRegCod = 'A'");
        List<TaGzzEstadoUniTransporte> estados = query.list();
        System.out.println(estados);
        return estados;
    }
    
    public List<TaGzzEstadoUniTransporte> getAllInactives() {
        Query query = session.createQuery("from TaGzzEstadoUniTransporte E where E.estRegCod = 'I'");
        List<TaGzzEstadoUniTransporte> estados = query.list();
        System.out.println(estados);
        return estados;
    }
    
    public TaGzzEstadoUniTransporte getById(int id) {
        TaGzzEstadoUniTransporte estado;
        try {
            estado = (TaGzzEstadoUniTransporte) session.get(TaGzzEstadoUniTransporte.class, id);
        } catch (ObjectNotFoundException e) {
            return null;
        }
        return estado;
    }
    
    public void save(TaGzzEstadoUniTransporte estUndTrns) {
        session.save(estUndTrns);     
    }
    
    public void update(TaGzzEstadoUniTransporte estUndTrns){
        session.update(estUndTrns);
    }
    
    public void saveOrUpdate(TaGzzEstadoUniTransporte estUndTrns){
        session.saveOrUpdate(estUndTrns);
    }
    
    public void delete(TaGzzEstadoUniTransporte estUndTrns){
        session.delete(estUndTrns);
    }
}
