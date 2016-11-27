package org.epis.minierp.business.contabilidad;

import java.util.Iterator;
import org.epis.minierp.dao.contabilidad.CuentaDao;
import org.epis.minierp.model.EnP3mCuenta;

public class CuentaBusiness
{
    CuentaDao cuentaDao;
    
    public CuentaBusiness(){
        cuentaDao = new CuentaDao();
    }
    
    public EnP3mCuenta create(int cuePad, int cueNiv, String cueDes, String cueNum, String cueAmaDeb, String cueAmaHab){
        EnP3mCuenta cuenta = new EnP3mCuenta();
        cuenta.setEnP3mCuentaByCuePad(cuentaDao.getByIdActive(cuePad));
        //cuenta.setEnP3mCuentaByCueAmaDeb(cuentaDao.getByNumActive(cueAmaDeb));
        //cuenta.setEnP3mCuentaByCueAmaHab(cuentaDao.getByNumActive(cueAmaHab));
        cuenta.setCueNiv(cueNiv);
        cuenta.setCueDes(cueDes);
        cuenta.setCueNum(cueNum);
        cuenta.setEstRegCod('A');
        cuentaDao.save(cuenta);
        return cuenta;
    }
    
    public void update(int cueCod, String cueDes, String cueAmaDeb, String cueAmaHab){
        EnP3mCuenta cuenta = cuentaDao.getById(cueCod);
        cuenta.setCueDes(cueDes);
        cuenta.setEnP3mCuentaByCueAmaDeb(cuentaDao.getByNumActive(cueAmaDeb));
        cuenta.setEnP3mCuentaByCueAmaHab(cuentaDao.getByNumActive(cueAmaHab));
	cuentaDao.update(cuenta);
    }
    
    private void setEstRegCod(Integer cueCod, char estRegCod){
        EnP3mCuenta cuenta = cuentaDao.getById(cueCod);
        cuenta.setEstRegCod(estRegCod);
        cuentaDao.update(cuenta);
    }
    
    public void activate(Integer cueCod){
        setEstRegCod(cueCod,'A');
    }
    
    public void disable(Integer cueCod){
        setEstRegCod(cueCod,'I');
    }
    
    public void delete(Integer cueCod){
        EnP3mCuenta cuenta = cuentaDao.getById(cueCod);
        setEstRegCod(cueCod,'*');
        Iterator<EnP3mCuenta> iterator = cuenta.getEnP3mCuentasForCuePad().iterator();
        while(iterator.hasNext()) {
            EnP3mCuenta c = iterator.next();
            delete(c.getCueCod());
        }
    }
}
