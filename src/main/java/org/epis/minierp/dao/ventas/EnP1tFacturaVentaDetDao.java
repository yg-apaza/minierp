package org.epis.minierp.dao.ventas;

import java.util.List;
import org.epis.minierp.model.EnP1tFacturaVentaDet;
import org.epis.minierp.model.EnP1tFacturaVentaDetId;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

public class EnP1tFacturaVentaDetDao {

    private Session session;

    public EnP1tFacturaVentaDetDao() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }

    public List<EnP1tFacturaVentaDet> getAll() {
        Query query = session.createQuery("from EnP1tFacturaVentaDet");
        List<EnP1tFacturaVentaDet> estados = query.list();
        return estados;
    }

    public EnP1tFacturaVentaDet getById(EnP1tFacturaVentaDetId id) {
        EnP1tFacturaVentaDet estado = null;
        try {
            estado = (EnP1tFacturaVentaDet) session.load(EnP1tFacturaVentaDet.class, id);
        } catch (ObjectNotFoundException e) {
            return null;
        }
        return estado;
    }
    
    public List <EnP1tFacturaVentaDet> getByProduc(String codPro){
        Query query = session.createQuery("from EnP1tFacturaVentaDet U where U.enP2mProducto.id.proCod = :codPro");
        query.setParameter("codPro", codPro);
        return query.list();
    }
    
    public void save(EnP1tFacturaVentaDet facturaDet) {
        session.save(facturaDet);     
    }
    
    public void update(EnP1tFacturaVentaDet facturaDet){
        session.update(facturaDet);
    }
    
    public void saveOrUpdate(EnP1tFacturaVentaDet facturaDet){
        session.saveOrUpdate(facturaDet);
    }
    
    public void delete(EnP1tFacturaVentaDet facturaDet){
        session.delete(facturaDet);
    }
    
}
