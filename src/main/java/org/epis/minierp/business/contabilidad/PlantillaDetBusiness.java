package org.epis.minierp.business.contabilidad;

import org.epis.minierp.dao.contabilidad.CuentaDao;
import org.epis.minierp.dao.contabilidad.PlantillaDetDao;
import org.epis.minierp.model.EnP3mCuenta;
import org.epis.minierp.model.EnP3tPlantillaDet;
import org.epis.minierp.model.EnP3tPlantillaDetId;

public class PlantillaDetBusiness
{
    PlantillaDetDao plantillaDetDao;
    
    public PlantillaDetBusiness(){
        plantillaDetDao = new PlantillaDetDao();
    }
    
    public void create(int plaDetCod, int plaCod, String cueNum, boolean plaDetDebHab, double plaDetPor){
        EnP3tPlantillaDet plantillaDet = new EnP3tPlantillaDet();
        EnP3tPlantillaDetId key = new EnP3tPlantillaDetId(plaDetCod, plaCod);
        EnP3mCuenta cuenta = new CuentaDao().getByNumActive(cueNum);
        
        plantillaDet.setId(key);
        plantillaDet.setEnP3mCuenta(cuenta);
        plantillaDet.setPlaDetDebHab(plaDetDebHab);
        plantillaDet.setPlaDetPor(plaDetPor);
        plantillaDetDao.save(plantillaDet);
    }
    
    public void update(int plaDetCod, int plaCod, String cueNum, boolean plaDetDebHab, double plaDetPor){
        EnP3tPlantillaDet plantillaDet = plantillaDetDao.getById(new EnP3tPlantillaDetId(plaDetCod, plaCod));
        EnP3mCuenta cuenta = new CuentaDao().getByNumActive(cueNum);
        
        plantillaDet.setEnP3mCuenta(cuenta);
        plantillaDet.setPlaDetDebHab(plaDetDebHab);
        plantillaDet.setPlaDetPor(plaDetPor);
        plantillaDetDao.update(plantillaDet);
    }
}
