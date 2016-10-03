package org.epis.minierp.dao.general;

import java.util.List;
import org.epis.minierp.model.TipoUsuario;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

public class TipoUsuarioDao
{
    private static TipoUsuarioDao tipoUsuarioDao;
    private Session session;
    
    public TipoUsuarioDao()
    {  
        session = HibernateUtil.getSessionFactory().getCurrentSession();  
    }
        
    public List<TipoUsuario> getAll()
    {
        Query query = session.createQuery("from TipoUsuario T");
        List<TipoUsuario> tipos =  query.list();
        return tipos;
    }
    
    public List<TipoUsuario> getAllActive()
    {
        Query query = session.createQuery("from TipoUsuario T where T.estRegCod = 'A'");
        List<TipoUsuario> tipos =  query.list();
        return tipos;
    }
    
    public TipoUsuario getById(int id)
    {
        TipoUsuario tipo = null;
        try {
            tipo = (TipoUsuario)session.load(TipoUsuario.class, id);
        } catch(ObjectNotFoundException e)
        {
            return null;
        }
        return tipo;
    }
}
