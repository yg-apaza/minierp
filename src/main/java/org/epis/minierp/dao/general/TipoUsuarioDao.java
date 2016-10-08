package org.epis.minierp.dao.general;

import java.util.List;
import org.epis.minierp.model.TaGzzTipoUsuario;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

public class TipoUsuarioDao
{
    private Session session;
    
    public TipoUsuarioDao()
    {  
        session = HibernateUtil.getSessionFactory().getCurrentSession();  
    }
        
    public List<TaGzzTipoUsuario> getAll()
    {
        Query query = session.createQuery("from TaGzzTipoUsuario T");
        List<TaGzzTipoUsuario> tipos =  query.list();
        return tipos;
    }
    
    public List<TaGzzTipoUsuario> getAllActive()
    {
        Query query = session.createQuery("from TaGzzTipoUsuario T where T.estRegCod = 'A'");
        List<TaGzzTipoUsuario> tipos =  query.list();
        return tipos;
    }
    
    public TaGzzTipoUsuario getById(int id)
    {
        TaGzzTipoUsuario tipo = null;
        try {
            tipo = (TaGzzTipoUsuario)session.load(TaGzzTipoUsuario.class, id);
        } catch(ObjectNotFoundException e)
        {
            return null;
        }
        return tipo;
    }
}