package org.epis.minierp.dao.general;

import java.util.List;
import org.epis.minierp.model.EstadoCivil;
import org.epis.minierp.util.SessionUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

public class EstadoCivilDao
{
    private static EstadoCivilDao estadoCivilDao;
    private Session session = SessionUtil.getSession();

    public static EstadoCivilDao getInstance()
    {
        if (estadoCivilDao == null){
            estadoCivilDao = new EstadoCivilDao();
        }
        return estadoCivilDao;
    }
    
    public List<EstadoCivil> getAll()
    {
        Query query = session.createQuery("from EstadoCivil");
        List<EstadoCivil> estados =  query.list();
        return estados;
    }
    
    public List<EstadoCivil> getAllActive()
    {
        Query query = session.createQuery("from EstadoCivil E where E.estRegCod = 'A'");
        List<EstadoCivil> estados =  query.list();
        return estados;
    }
    
    public EstadoCivil getById(int id)
    {
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
