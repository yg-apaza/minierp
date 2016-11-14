
/**
 *
 * @author Diego
 */
package org.epis.minierp.dao.logistica;

import java.util.List;
import org.epis.minierp.model.EnP2tInventarioDet;
import org.epis.minierp.model.EnP2tInventarioDetId;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

public class EnP2tInventarioDetDao {

    private Session session;

    public EnP2tInventarioDetDao() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }

    public List<EnP2tInventarioDet> getAll() {
        Query query = session.createQuery("from EnP2tInventarioDet");
        List<EnP2tInventarioDet> estados = query.list();
        return estados;
    }

    public EnP2tInventarioDet getById(EnP2tInventarioDetId id) {
        EnP2tInventarioDet estado = null;
        try {
            estado = (EnP2tInventarioDet) session.load(EnP2tInventarioDet.class, id);
        } catch (ObjectNotFoundException e) {
            return null;
        }
        return estado;
    }
    /*
    public List <EnP2tInventarioDet> getByProduc(String codPro){
        Query query = session.createQuery("from EnP2tInventarioDet U where U.enP2mProducto.id.proCod = :codPro");
        query.setParameter("codPro", codPro);
        return query.list();
    }*/
    
    public void save(EnP2tInventarioDet facturaDet) {
        session.save(facturaDet);     
    }
    
    public void update(EnP2tInventarioDet facturaDet){
        session.update(facturaDet);
    }
    
    public void saveOrUpdate(EnP2tInventarioDet facturaDet){
        session.saveOrUpdate(facturaDet);
    }
    
    public void delete(EnP2tInventarioDet facturaDet){
        session.delete(facturaDet);
    }
    
}

