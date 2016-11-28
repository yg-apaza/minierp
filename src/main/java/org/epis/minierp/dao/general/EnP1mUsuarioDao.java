package org.epis.minierp.dao.general;

import java.util.ArrayList;
import java.util.List;
import org.epis.minierp.model.EnP1mCarteraClientes;
import org.epis.minierp.model.EnP1mCliente;
import org.epis.minierp.model.EnP1mUsuario;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

public class EnP1mUsuarioDao {

    private Session session;

    public EnP1mUsuarioDao() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }

    public List<EnP1mUsuario> getAll() {
        Query query = session.createQuery("from EnP1mUsuario");
        List<EnP1mUsuario> estados = query.list();
        return estados;
    }

    public List<EnP1mUsuario> getAllActive() {
        Query query = session.createQuery("from EnP1mUsuario E where E.estRegCod = 'A'");
        List<EnP1mUsuario> estados = query.list();
        System.out.println(estados);
        return estados;
    }
    public List<EnP1mUsuario> getAllInactive() {
        Query query = session.createQuery("from EnP1mUsuario E where E.estRegCod = 'I'");
        List<EnP1mUsuario> estados = query.list();
        System.out.println(estados);
        return estados;
    }

    public EnP1mUsuario getById(String id) {
        EnP1mUsuario estado = null;
        try {
            estado = (EnP1mUsuario) session.load(EnP1mUsuario.class, id);
        } catch (ObjectNotFoundException e) {
            return null;
        }
        return estado;
    }

    public EnP1mUsuario getByUsername(String username) {
        EnP1mUsuario usuario = null;
        Query query = session.createQuery("from EnP1mUsuario U where U.usuLog = :id and U.estRegCod = 'A'");
        query.setParameter("id", username);
        query.setMaxResults(1);
        try {
            List<EnP1mUsuario> usuarios = query.list();
            usuario = usuarios.get(0);
        } catch (IndexOutOfBoundsException ex) {
            return null;
        }
        return usuario;
    }
    
    public List getAllClientes4UsuCod(String usuCod){
        Query query = session.createQuery("from EnP1mCarteraClientes U "
                + "where U.id.usuCod = :id and U.estRegCod = 'A'");
        query.setParameter("id", usuCod);
        List<EnP1mCarteraClientes> cartera = query.list();
        List<EnP1mCliente> clientes = new ArrayList<>();
        for (EnP1mCarteraClientes iter : cartera) {
            clientes.add(iter.getEnP1mCliente());
        }
        return clientes;
    }
    
    public void save(EnP1mUsuario usuario) {
        session.save(usuario);     
    }
    
    public void update(EnP1mUsuario usuario) {
        session.update(usuario);
    }
    
    public void saveOrUpdate(EnP1mUsuario usuario){
        session.saveOrUpdate(usuario);
    }
    
    public void delete(EnP1mUsuario usuario){
        session.delete(usuario);
    }
    
    public void deleteUsuario(String id) {
        EnP1mUsuario usr=(EnP1mUsuario) session.get(EnP1mUsuario.class,id);
        session.delete(usr);
    }
     
    public void updateUsuario(EnP1mUsuario usuario) {
        session.update(usuario);
    }
}