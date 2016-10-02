package org.epis.minierp.dao.general;

import java.util.List;
import org.epis.minierp.model.EstadoCivil;
import org.epis.minierp.util.SessionUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

public class EstadoCivilDao
{
    public static List<EstadoCivil> getAll()
    {
        Session session = SessionUtil.getSession();    
        Query query = session.createQuery("from EstadoCivil");
        List<EstadoCivil> estados =  query.list();
        return estados;
    }
    
    public static List<EstadoCivil> getAllActive()
    {
        Session session = SessionUtil.getSession();    
        Query query = session.createQuery("from EstadoCivil E where E.estRegCod = 'A'");
        List<EstadoCivil> estados =  query.list();
        return estados;
    }
    
    public static EstadoCivil getById(int id)
    {
        Session session = SessionUtil.getSession();
        EstadoCivil estado = null;
        try {
            estado = (EstadoCivil)session.load(EstadoCivil.class, id);
        } catch(ObjectNotFoundException e)
        {
            return null;
        }
        return estado;
    }
}
