package org.epis.minierp.dao.contabilidad;

import java.util.List;
import org.epis.minierp.model.TaGzzBanco;
import org.epis.minierp.model.TaGzzTipoUsuario;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

public class BancoDao
{
    private Session session;
    
    public BancoDao()
    {
        session = HibernateUtil.getSessionFactory().getCurrentSession();  
    }
    
    public List<TaGzzBanco> getAllActive()
    {
        Query query = session.createQuery("from TaGzzBanco B where B.estRegCod = 'A'");
        return query.list();
    }
    
    public TaGzzBanco getById(int id)
    {
        TaGzzBanco banco = null;
        try {
            banco = (TaGzzBanco)session.load(TaGzzBanco.class, id);
        } catch(ObjectNotFoundException e)
        {
            return null;
        }
        return banco;
    }
}
