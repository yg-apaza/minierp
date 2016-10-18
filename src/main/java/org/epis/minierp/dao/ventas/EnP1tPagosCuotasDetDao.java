package org.epis.minierp.dao.ventas;

import java.util.List;
import org.epis.minierp.model.EnP1tPagosCuotasDet;
import org.epis.minierp.model.EnP1tPagosCuotasDetId;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

public class EnP1tPagosCuotasDetDao {

    private Session session;

    public EnP1tPagosCuotasDetDao() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }

    public List<EnP1tPagosCuotasDet> getAll() {
        Query query = session.createQuery("from EnP1tPagosCuotasDet");
        List<EnP1tPagosCuotasDet> estados = query.list();
        return estados;
    }
    
    public List<EnP1tPagosCuotasDet> getAllOrdered() {
        Query query = session.createQuery("from EnP1tPagosCuotasDet E "
                + "order by E.id.facVenCabCod, E.id.pagCuoDetCod asc");
        List<EnP1tPagosCuotasDet> estados = query.list();
        return estados;
    }
    
    public List<EnP1tPagosCuotasDet> getAllOrderedFiltered(String facVenCabCod) {
        Query query = session.createQuery("from EnP1tPagosCuotasDet E "
                + "where E.id.facVenCabCod like '%" + facVenCabCod + "' "
                + "order by E.id.facVenCabCod, E.id.pagCuoDetCod asc");
        List<EnP1tPagosCuotasDet> estados = query.list();
        return estados;
    }

    public int getLastpagCuoDetCod(String facVenCabCod){
        Query query = session.createQuery("select max(E.id.pagCuoDetCod) from EnP1tPagosCuotasDet E "
                + "where E.id.facVenCabCod = " + facVenCabCod);        
        List<EnP1tPagosCuotasDet> maximo = query.list();
        int value = 0;
        try {   //evitar errores cuando la tabla esta vacia
            String numString = maximo.toString(); //[num] Hay q quitarle los corchetes
            value = Integer.parseInt(numString.substring(1,numString.length()-1)) + 1;
        } catch (Exception e) {
            return 1;
        }
            return value;  
    }
    
    
    public EnP1tPagosCuotasDet getById(EnP1tPagosCuotasDetId id) {
        EnP1tPagosCuotasDet estado = null;
        try {
            estado = (EnP1tPagosCuotasDet) session.load(EnP1tPagosCuotasDet.class, id);
        } catch (ObjectNotFoundException e) {
            return null;
        }
        return estado;
    }
    
    public void save(EnP1tPagosCuotasDet cuotasDet) {
        session.save(cuotasDet);     
    }
    
    public void update(EnP1tPagosCuotasDet cuotasDet){
        session.update(cuotasDet);
    }
    
    public void saveOrUpdate(EnP1tPagosCuotasDet cuotasDet){
        session.saveOrUpdate(cuotasDet);
    }
    
    public void delete(EnP1tPagosCuotasDet cuotasDet){
        session.delete(cuotasDet);
    }
    
}
