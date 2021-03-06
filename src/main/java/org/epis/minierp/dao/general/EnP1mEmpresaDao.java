package org.epis.minierp.dao.general;

import java.util.List;
import org.epis.minierp.model.EnP1mEmpresa;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

public class EnP1mEmpresaDao {

    private Session session;

    public EnP1mEmpresaDao() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }

    public List<EnP1mEmpresa> getAll() {
        Query query = session.createQuery("from EnP1mEmpresa");
        List<EnP1mEmpresa> estados = query.list();
        return estados;
    }

    public List<EnP1mEmpresa> getAllActive() {
        Query query = session.createQuery("from EnP1mEmpresa E where E.estRegCod = 'A'");
        List<EnP1mEmpresa> estados = query.list();
        System.out.println(estados);
        return estados;
    }

    public EnP1mEmpresa getById(int id) {
        EnP1mEmpresa estado = null;
        try {
            estado = (EnP1mEmpresa) session.load(EnP1mEmpresa.class, id);
        } catch (ObjectNotFoundException e) {
            return null;
        }
        return estado;
    }
    
    public EnP1mEmpresa getByDes(String des) {
        Query query = session.createQuery("from EnP1mEmpresa E where E.empDes = :id");
        query.setParameter("id", des);
        List <EnP1mEmpresa> empresas = query.list();
        if(empresas.isEmpty())
            return null;
        return empresas.get(0);
    }
    
    public void save(EnP1mEmpresa clase) {
        session.save(clase);     
    }
    
    public void update(EnP1mEmpresa clase){
        session.update(clase);
    }
    
    public void saveOrUpdate(EnP1mEmpresa clase){
        session.saveOrUpdate(clase);
    }
    
    public void delete(EnP1mEmpresa clase){
        session.delete(clase);
    }
    
}
