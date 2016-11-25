package org.epis.minierp.dao.contabilidad;

import org.epis.minierp.model.EnP3tPlantillaDet;
import org.epis.minierp.model.EnP3tPlantillaDetId;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
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
    
    public void update(EnP3tPlantillaDet plantillaDet){
        session.update(plantillaDet);
    }
    
    public EnP3tPlantillaDet getById(EnP3tPlantillaDetId id){
        EnP3tPlantillaDet plantillaDet = null;
        try {
            plantillaDet = (EnP3tPlantillaDet) session.load(EnP3tPlantillaDet.class, id);
        } catch (ObjectNotFoundException e) {
            return null;
        }
        return plantillaDet;
    }
}
