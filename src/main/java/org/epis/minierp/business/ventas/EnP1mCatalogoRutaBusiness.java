
package org.epis.minierp.business.ventas;

import org.epis.minierp.dao.ventas.EnP1mCatalogoRutaDao;
import org.epis.minierp.model.EnP1mCatalogoRuta;


public class EnP1mCatalogoRutaBusiness {

EnP1mCatalogoRutaDao catRutDao;
    
    public EnP1mCatalogoRutaBusiness() {
        catRutDao = new EnP1mCatalogoRutaDao();
    }
    
    public void create(int catRutCod, String catRutDet){
        EnP1mCatalogoRuta ruta = new EnP1mCatalogoRuta();
        ruta.setCatRutCod(catRutCod);
        ruta.setCatRutDet(catRutDet);
        ruta.setEstRegCod('A');
        catRutDao.save(ruta);
    }
    
    public void update(int catRutCod, String catRutDet){
        EnP1mCatalogoRuta ruta = catRutDao.getById(catRutCod);
        ruta.setCatRutDet(catRutDet);
        catRutDao.update(ruta);
    }
    
    private void setEstRegCod(int catRutCod, char estRegCod){
        EnP1mCatalogoRuta ruta = catRutDao.getById(catRutCod);
        ruta.setEstRegCod(estRegCod);
        catRutDao.update(ruta);
    }
    
    public void activate(int catRutCod){
        setEstRegCod(catRutCod,'A');
    }
    
    public void disable(int catRutCod){
        setEstRegCod(catRutCod,'I');
    }
    
    public void delete(int catRutCod){
        setEstRegCod(catRutCod,'*');
    }
}
