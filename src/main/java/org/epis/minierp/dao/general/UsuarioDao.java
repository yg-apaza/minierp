package org.epis.minierp.dao.general;


import java.text.SimpleDateFormat;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.epis.minierp.model.EnP1mUsuario;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;

public class UsuarioDao
{
    private SimpleDateFormat dt = new SimpleDateFormat("yyyy/MM/dd");
    private Session session;
    
    public UsuarioDao()
    {  
        session = HibernateUtil.getSessionFactory().getCurrentSession();  
    }
    
    public EnP1mUsuario getById(String id)
    {
        EnP1mUsuario usuario = null;
        usuario =  (EnP1mUsuario)session.load(EnP1mUsuario.class, id);
        return usuario;
    }
    
    public EnP1mUsuario getByIdActive(String id)
    {
        EnP1mUsuario usuario = null;

        Query query = session.createQuery("from EnP1mUsuario U where U.usuCod = :id and U.estRegCod = 'A'");
        query.setParameter("id", id);
        query.setMaxResults(1);
        try {
            List<EnP1mUsuario> usuarios = query.list();
            usuario =  usuarios.get(0);
        } catch (IndexOutOfBoundsException ex) {
            Logger.getLogger(UsuarioDao.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
        return usuario;
    }
    
    public EnP1mUsuario getByUsername(String username)
    {
        EnP1mUsuario usuario = null;
        Query query = session.createQuery("from EnP1mUsuario U where U.usuLog = :id and U.estRegCod = 'A'");
        query.setParameter("id", username);
        query.setMaxResults(1);
        try {
            List<EnP1mUsuario> usuarios = query.list();
            usuario =  usuarios.get(0);
        } catch (IndexOutOfBoundsException ex) {
            Logger.getLogger(UsuarioDao.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
        return usuario;
    }
    
    public List<EnP1mUsuario> getAll()
    {
        Query query = session.createQuery("from EnP1mUsuario");
        List<EnP1mUsuario> usuarios =  query.list();

        return usuarios;
    }
    
    public void save(EnP1mUsuario usuario) {
        session.save(usuario);     
    }
}
