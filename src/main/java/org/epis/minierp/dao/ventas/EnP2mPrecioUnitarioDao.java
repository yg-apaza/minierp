package org.epis.minierp.dao.ventas;

import java.util.List;
import org.epis.minierp.model.EnP2mPrecioUnitario;
import org.epis.minierp.model.EnP2mPrecioUnitarioId;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

public class EnP2mPrecioUnitarioDao {

    private Session session;

    public EnP2mPrecioUnitarioDao() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }

    public List<EnP2mPrecioUnitario> getAll() {
        Query query = session.createQuery("from EnP2mPrecioUnitario");
        List<EnP2mPrecioUnitario> estados = query.list();
        return estados;
    }

    public List<EnP2mPrecioUnitario> getAllActive() {
        Query query = session.createQuery("from EnP2mPrecioUnitario E where E.estRegCod = 'A'");
        List<EnP2mPrecioUnitario> estados = query.list();
        return estados;
    }

    public List<EnP2mPrecioUnitario> getAllInactive() {
        Query query = session.createQuery("from EnP2mPrecioUnitario E where E.estRegCod = 'I'");
        List<EnP2mPrecioUnitario> estados = query.list();
        return estados;
    }

    public EnP2mPrecioUnitario getById(EnP2mPrecioUnitarioId id) {
        EnP2mPrecioUnitario estado = null;
        try {
            estado = (EnP2mPrecioUnitario) session.load(EnP2mPrecioUnitario.class, id);
        } catch (ObjectNotFoundException e) {
            return null;
        }
        return estado;
    }

    public void save(EnP2mPrecioUnitario precioUnitario) {
        session.save(precioUnitario);
    }

    public void update(EnP2mPrecioUnitario precioUnitario) {
        session.update(precioUnitario);
    }

    public void saveOrUpdate(EnP2mPrecioUnitario precioUnitario) {
        session.saveOrUpdate(precioUnitario);
    }

    public void delete(EnP2mPrecioUnitario precioUnitario) {
        session.delete(precioUnitario);
    }
}
