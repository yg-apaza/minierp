
package org.epis.minierp.dao.ventas;

import java.util.List;
import org.epis.minierp.model.EnP1mCarteraClientes;
import org.epis.minierp.model.EnP1mCarteraClientesId;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;


public class EnP1mCarteraClientesDao {
    
    private Session session;

    public EnP1mCarteraClientesDao() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }

    public List<EnP1mCarteraClientes> getAll() {
        Query query = session.createQuery("from EnP1mCarteraClientes");
        List<EnP1mCarteraClientes> estados = query.list();
        return estados;
    }

    public List<EnP1mCarteraClientes> getAllActive() {
        Query query = session.createQuery("from EnP1mCarteraClientes E where E.usuCliEstReg = 'A'");
        List<EnP1mCarteraClientes> estados = query.list();
        System.out.println(estados);
        return estados;
    }
    
    public List<EnP1mCarteraClientes> getAllInactive() {
        Query query = session.createQuery("from EnP1mCarteraClientes E where E.usuCliEstReg = 'I'");
        List<EnP1mCarteraClientes> estados = query.list();
        System.out.println(estados);
        return estados;
    }

    public EnP1mCarteraClientes getById(EnP1mCarteraClientesId id) {
        EnP1mCarteraClientes estado = null;
        try {
            estado = (EnP1mCarteraClientes) session.load(EnP1mCarteraClientes.class, id);
        } catch (ObjectNotFoundException e) {
            return null;
        }
        return estado;
    }
    
    public List<EnP1mCarteraClientes> getAllActiveOrdered() {
        Query query = session.createQuery("from EnP1mCarteraClientes E where E.estRegCod = 'A' "
                + "order by E.id.cliCod, E.id.usuCod");
        List<EnP1mCarteraClientes> estados = query.list();
        System.out.println(estados);
        return estados;
    }
    
    public void save(EnP1mCarteraClientes Cliente) {
        session.save(Cliente);     
    }
    
    public void update(EnP1mCarteraClientes Cliente){
        session.update(Cliente);
    }
    
    public void saveOrUpdate(EnP1mCarteraClientes Cliente){
        session.saveOrUpdate(Cliente);
    }
    
    public void delete(EnP1mCarteraClientes Cliente){
        session.delete(Cliente);
    }
}
