package org.epis.minierp.dao.ventas;

import java.util.List;
import org.epis.minierp.model.EnP1mPagosCuotasCab;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

public class EnP1mPagosCuotasCabDao {

    private Session session;

    public EnP1mPagosCuotasCabDao() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }

    public List<EnP1mPagosCuotasCab> getAll() {
        Query query = session.createQuery("from EnP1mPagosCuotasCab");
        List<EnP1mPagosCuotasCab> estados = query.list();
        return estados;
    }

    public List<EnP1mPagosCuotasCab> getAllActive() {
        Query query = session.createQuery("from EnP1mPagosCuotasCab E where E.estRegCod = 'A'");
        List<EnP1mPagosCuotasCab> estados = query.list();
        System.out.println(estados);
        return estados;
    }
    
    public List<EnP1mPagosCuotasCab> getAllInactives() {
        Query query = session.createQuery("from EnP1mPagosCuotasCab E where E.estRegCod = 'I'");
        List<EnP1mPagosCuotasCab> estados = query.list();
        System.out.println(estados);
        return estados;
    }

    public List<EnP1mPagosCuotasCab> getFiltered(String facVenCabCod) {
        Query query = session.createQuery("from EnP1mPagosCuotasCab E where E.estRegCod = 'A' "
                + "and E.facVenCabCod like '%" + facVenCabCod + "'");
        List<EnP1mPagosCuotasCab> estados = query.list();
        System.out.println(estados);
        return estados;
    }
    
    public EnP1mPagosCuotasCab getById(String id) {
        EnP1mPagosCuotasCab estado = null;
        try {
            estado = (EnP1mPagosCuotasCab) session.load(EnP1mPagosCuotasCab.class, id);
        } catch (ObjectNotFoundException e) {
            return null;
        }
        return estado;
    }
    
    public void save(EnP1mPagosCuotasCab cuotasCab) {
        session.save(cuotasCab);     
    }
    
    public void update(EnP1mPagosCuotasCab cuotasCab){
        session.update(cuotasCab);
    }
    
    public void saveOrUpdate(EnP1mPagosCuotasCab cuotasCab){
        session.saveOrUpdate(cuotasCab);
    }
    
    public void delete(EnP1mPagosCuotasCab cuotasCab){
        session.delete(cuotasCab);
    }
    
}
