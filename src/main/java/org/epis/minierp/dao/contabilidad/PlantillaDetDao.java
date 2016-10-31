package org.epis.minierp.dao.contabilidad;

import org.epis.minierp.model.EnP3tPlantillaDet;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.Session;

public class PlantillaDetDao
{
    private Session session;
    
    public PlantillaDetDao() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }
    
    public void save(EnP3tPlantillaDet plantillaDet){
        session.save(plantillaDet);
    }
}
