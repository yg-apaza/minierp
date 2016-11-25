package org.epis.minierp.business.contabilidad;

import org.epis.minierp.dao.contabilidad.PlantillaCabDao;
import org.epis.minierp.model.EnP3mPlantillaCab;

public class PlantillaCabBusiness
{
    PlantillaCabDao plantillaCabDao;
    
    public PlantillaCabBusiness(){
        plantillaCabDao = new PlantillaCabDao();
    }
    
    public EnP3mPlantillaCab create(String plaDet, String plaGlo){
        EnP3mPlantillaCab plantillaCab = new EnP3mPlantillaCab();
        plantillaCab.setPlaDet(plaDet);
        plantillaCab.setPlaGlo(plaGlo);
        plantillaCab.setEstRegCod('A');
        plantillaCabDao.save(plantillaCab);
        return plantillaCab;
    }
    
    public void update(Integer plaCod, String plaDet, String plaGlo){
        EnP3mPlantillaCab plantillaCab = plantillaCabDao.getById(plaCod);
        plantillaCab.setPlaDet(plaDet);
        plantillaCab.setPlaGlo(plaGlo);
        plantillaCabDao.update(plantillaCab);
    }
    
    private void setEstRegCod(Integer plaCod, char estRegCod){
        EnP3mPlantillaCab plantillaCab = plantillaCabDao.getById(plaCod);
        plantillaCab.setEstRegCod(estRegCod);
        plantillaCabDao.update(plantillaCab);
    }
    
    public void activate(Integer plaCod){
        setEstRegCod(plaCod,'A');
    }
    
    public void disable(Integer plaCod){
        setEstRegCod(plaCod,'I');
    }
    
    public void delete(Integer plaCod){
        setEstRegCod(plaCod,'*');
    }
}
