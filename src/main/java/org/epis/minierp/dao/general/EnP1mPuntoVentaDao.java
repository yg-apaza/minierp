package org.epis.minierp.dao.general;

import java.util.List;
import org.epis.minierp.model.EnP1mPuntoVenta;
import org.epis.minierp.model.EnP1mPuntoVentaId;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

public class EnP1mPuntoVentaDao {

    private Session session;

    public EnP1mPuntoVentaDao() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }

    public List<EnP1mPuntoVenta> getAll() {
        Query query = session.createQuery("from EnP1mPuntoVenta");
        List<EnP1mPuntoVenta> estados = query.list();
        return estados;
    }

    public List<EnP1mPuntoVenta> getAllActive() {
        Query query = session.createQuery("from EnP1mPuntoVenta E where E.estRegCod = 'A'");
        List<EnP1mPuntoVenta> estados = query.list();
        System.out.println(estados);
        return estados;
    }

    public EnP1mPuntoVenta getById(EnP1mPuntoVentaId id) {
        EnP1mPuntoVenta estado = null;
        try {
            estado = (EnP1mPuntoVenta) session.load(EnP1mPuntoVenta.class, id);
        } catch (ObjectNotFoundException e) {
            return null;
        }
        return estado;
    }
    
    public int getLastPunVenCod(){
        Query query = session.createQuery("select max(E.id.punVenCod) from EnP1mPuntoVenta E ");
        List<EnP1mPuntoVenta> maximo = query.list();
        int value = 0;
        try {   //evitar errores cuando la tabla esta vacia
            String numString = maximo.toString(); //[num] Hay q quitarle los corchetes
            value = Integer.parseInt(numString.substring(1,numString.length()-1)) + 1;
        } catch (Exception e) {
            return 1;
        }
            return value;  
    }
    
    public void save(EnP1mPuntoVenta clase) {
        session.save(clase);     
    }
    
    public void update(EnP1mPuntoVenta clase){
        session.update(clase);
    }
    
    public void saveOrUpdate(EnP1mPuntoVenta clase){
        session.saveOrUpdate(clase);
    }
    
    public void delete(EnP1mPuntoVenta clase){
        session.delete(clase);
    }
    
}
