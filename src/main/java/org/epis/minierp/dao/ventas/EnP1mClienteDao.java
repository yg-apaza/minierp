package org.epis.minierp.dao.ventas;

import java.util.List;
import org.epis.minierp.model.EnP1mCliente;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

public class EnP1mClienteDao {

    private Session session;

    public EnP1mClienteDao() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }

    public List<EnP1mCliente> getAll() {
        Query query = session.createQuery("from EnP1mCliente");
        List<EnP1mCliente> estados = query.list();
        return estados;
    }

    public List<EnP1mCliente> getAllActive() {
        Query query = session.createQuery("from EnP1mCliente E where E.estRegCod = 'A'");
        List<EnP1mCliente> estados = query.list();
        return estados;
    }
    
    public List<EnP1mCliente> getAllInactives() {
        Query query = session.createQuery("from EnP1mCliente E where E.estRegCod = 'I'");
        List<EnP1mCliente> estados = query.list();
        return estados;
    }

    public EnP1mCliente getById(String id) {
        EnP1mCliente estado;
        try {
            estado = (EnP1mCliente) session.get(EnP1mCliente.class, id);
        } catch (ObjectNotFoundException e) {
            return null;
        }
        return estado;
    }
    
    public List<EnP1mCliente> getByTipoCLiente(int id) {
        Query query = session.createQuery("from EnP1mCliente C where C.taGzzTipoCliente.tipCliCod = :id and C.estRegCod = 'A'");
        query.setParameter("id", id);
        List <EnP1mCliente> clientes = query.list();
        return clientes;
    }
    
    public EnP1mCliente getByRazonSocial(String razSoc) {
        Query query = session.createQuery("from EnP1mCliente C where C.cliRazSoc = :id and C.estRegCod = 'A'");
        query.setParameter("id", razSoc);
        List <EnP1mCliente> clientes = query.list();
        if(clientes.size() == 0)
            return null;
        return clientes.get(0);
    }
    
    public EnP1mCliente getByNombreComercial(String nomCom) {
        Query query = session.createQuery("from EnP1mCliente C where C.cliNomCom = :id and C.estRegCod = 'A'");
        query.setParameter("id", nomCom);
        List <EnP1mCliente> clientes = query.list();
        if(clientes.size() == 0)
            return null;
        return clientes.get(0);
    }
    
    public void save(EnP1mCliente cliente) {
        session.save(cliente);     
    }
    
    public void update(EnP1mCliente cliente){
        session.update(cliente);
    }
    
    public void saveOrUpdate(EnP1mCliente cliente){
        session.saveOrUpdate(cliente);
    }
    
    public void delete(EnP1mCliente cliente){
        session.delete(cliente);
    }
    
}
