package org.epis.minierp.dao.contabilidad;

import java.util.List;
import org.epis.minierp.model.EnP3mPlantillaCab;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;

public class PlantillaCabDao
{
    private Session session;
    
    public PlantillaCabDao() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }
    
    public List<EnP3mPlantillaCab> getAllActive(){
        Query query = session.createQuery("from EnP3mPlantillaCab E where E.estRegCod = 'A'");
        List<EnP3mPlantillaCab> plantillas = query.list();
        return plantillas;
    }
    
    public void save(EnP3mPlantillaCab plantillaCab){
        session.save(plantillaCab);
    }
    
    public void delete(int plaCod){
        EnP3mPlantillaCab plantilla = (EnP3mPlantillaCab)session.get(EnP3mPlantillaCab.class, plaCod);
        plantilla.setEstRegCod('*');
	session.update(plantilla);
    }
}
