package org.epis.minierp.dao.general;

import java.util.List;
import org.epis.minierp.model.TaGzzTipoDescuento;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

public class TaGzzTipoDescuentoDao {
    private Session session;
    
    public TaGzzTipoDescuentoDao(){
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }
    
    public TaGzzTipoDescuento getById(int id) {
        TaGzzTipoDescuento tipo = null;
        try {
            tipo = (TaGzzTipoDescuento) session.load(TaGzzTipoDescuento.class, id);
        } catch (ObjectNotFoundException e) {
            return null;
        }
        return tipo;
    }
    
    public List <TaGzzTipoDescuento> getAllActive() {
        Query query = session.createQuery("from TaGzzTipoDescuento E where E.estRegCod = 'A'");
        List <TaGzzTipoDescuento> tipos = query.list();
        return tipos;
    }
    public void save(TaGzzTipoDescuento tipoDes) {
        session.save(tipoDes);     
    }
    
    public void update(TaGzzTipoDescuento tipoDes){
        session.update(tipoDes);
    }
    
    public void saveOrUpdate(TaGzzTipoDescuento tipoDes){
        session.saveOrUpdate(tipoDes);
    }
    
    public void delete(TaGzzTipoDescuento tipoDes){
        session.delete(tipoDes);
    }
}
