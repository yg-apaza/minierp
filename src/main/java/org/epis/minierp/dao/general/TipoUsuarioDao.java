package org.epis.minierp.dao.general;

import java.util.List;
import org.epis.minierp.model.TipoUsuario;
import org.epis.minierp.util.SessionUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

public class TipoUsuarioDao
{
    public static List<TipoUsuario> getAll()
    {
        Session session = SessionUtil.getSession();    
        Query query = session.createQuery("from TipoUsuario T");
        List<TipoUsuario> tipos =  query.list();
        return tipos;
    }
    
    public static List<TipoUsuario> getAllActive()
    {
        Session session = SessionUtil.getSession();    
        Query query = session.createQuery("from TipoUsuario T where T.estRegCod = 'A'");
        List<TipoUsuario> tipos =  query.list();
        return tipos;
    }
    
    public static TipoUsuario getById(int id)
    {
        Session session = SessionUtil.getSession();
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
