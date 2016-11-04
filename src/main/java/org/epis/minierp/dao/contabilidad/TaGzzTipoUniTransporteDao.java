/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.epis.minierp.dao.general;

import java.util.List;
import org.epis.minierp.model.TaGzzTipoUniTransporte;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Bryan
 */
public class TaGzzTipoUniTransporteDao {
    private Session session;
    
    public TaGzzTipoUniTransporteDao(){
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }
    
    public List<TaGzzTipoUniTransporte> getAll() {
        Query query = session.createQuery("from TaGzzTipoUniTransporte");
        List<TaGzzTipoUniTransporte> estados = query.list();
        return estados;
    }

    public List<TaGzzTipoUniTransporte> getAllActive() {
        Query query = session.createQuery("from TaGzzTipoUniTransporte E where E.estRegCod = 'A'");
        List<TaGzzTipoUniTransporte> estados = query.list();
        System.out.println(estados);
        return estados;
    }
    
    public List<TaGzzTipoUniTransporte> getAllInactives() {
        Query query = session.createQuery("from TaGzzTipoUniTransporte E where E.estRegCod = 'I'");
        List<TaGzzTipoUniTransporte> estados = query.list();
        System.out.println(estados);
        return estados;
    }
    
    public TaGzzTipoUniTransporte getById(int id) {
        TaGzzTipoUniTransporte estado;
        try {
            estado = (TaGzzTipoUniTransporte) session.get(TaGzzTipoUniTransporte.class, id);
        } catch (ObjectNotFoundException e) {
            return null;
        }
        return estado;
    }
    
    public void save(TaGzzTipoUniTransporte tipUndTrns) {
        session.save(tipUndTrns);     
    }
    
    public void update(TaGzzTipoUniTransporte tipUndTrns){
        session.update(tipUndTrns);
    }
    
    public void saveOrUpdate(TaGzzTipoUniTransporte tipUndTrns){
        session.saveOrUpdate(tipUndTrns);
    }
    
    public void delete(TaGzzTipoUniTransporte tipUndTrns){
        session.delete(tipUndTrns);
    }
}
