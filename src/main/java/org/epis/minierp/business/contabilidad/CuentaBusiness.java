package org.epis.minierp.business.contabilidad;

import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
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
        cuenta.setEnP3mCuentaByCueAmaDeb(cuentaDao.getByNumActive(cueAmaDeb));
        cuenta.setEnP3mCuentaByCueAmaHab(cuentaDao.getByNumActive(cueAmaHab));
        cuenta.setCueNiv(cueNiv);
        cuenta.setCueDes(cueDes);
        cuenta.setCueNum(cueNum);
        cuenta.setEstRegCod('A');
        cuentaDao.save(cuenta);
        return cuenta;
    }
    
    private EnP3mCuenta create(int cuePad, int cueNiv, String cueDes, String cueNum, EnP3mCuenta cueAmaDeb, EnP3mCuenta cueAmaHab) {
        EnP3mCuenta cuenta = new EnP3mCuenta();
        cuenta.setEnP3mCuentaByCuePad(cuentaDao.getByIdActive(cuePad));
        cuenta.setEnP3mCuentaByCueAmaDeb(cueAmaDeb);
        cuenta.setEnP3mCuentaByCueAmaHab(cueAmaHab);
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
    
    public EnP3mCuenta getCuentaVenta4Class(String claDet){
        try {
            Properties prop = new Properties();
            InputStream inputStream = CuentaBusiness.class.getClassLoader().getResourceAsStream("/contabilidad.properties");
            prop.load(inputStream);
            
            Integer clase_venta_cod = Integer.parseInt(prop.getProperty("clase_venta_cod"));
            Integer clase_venta_deb_cod = Integer.parseInt(prop.getProperty("clase_venta_deb_cod"));
            Integer clase_venta_hab_cod = Integer.parseInt(prop.getProperty("clase_venta_hab_cod"));
            
            // Cuenta de Amarre del Debe para Ventas
            EnP3mCuenta cueAmaDeb = create(clase_venta_deb_cod, 6, claDet, getNextCueNum(clase_venta_deb_cod), "", "");
            EnP3mCuenta cueAmaHab = create(clase_venta_hab_cod, 6, claDet, getNextCueNum(clase_venta_hab_cod), "", "");
            EnP3mCuenta cuenta = create(clase_venta_cod, 6, claDet, getNextCueNum(clase_venta_cod), cueAmaDeb, cueAmaHab);
            
            return cuenta;
        } catch (IOException ex) {
            Logger.getLogger(CuentaBusiness.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    private String getNextCueNum(Integer cuePad){
        EnP3mCuenta cuenta = cuentaDao.getById(cuePad);
        try{
            EnP3mCuenta ultimo = (EnP3mCuenta) cuenta.getEnP3mCuentasForCuePad().last();
            return String.valueOf(Long.parseLong(ultimo.getCueNum()) + 1);
        }
        catch(NoSuchElementException ex){
            return cuenta.getCueNum() + "01";
        }
    }
}
