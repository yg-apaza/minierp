package org.epis.minierp.business.contabilidad;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.epis.minierp.dao.contabilidad.CuentaDao;
import org.epis.minierp.dao.logistica.EnP2mClaseProductoDao;
import org.epis.minierp.dao.logistica.EnP2mSubclaseProductoDao;
import org.epis.minierp.model.EnP2mClaseProducto;
import org.epis.minierp.model.EnP2mSubclaseProducto;
import org.epis.minierp.model.EnP2mSubclaseProductoId;
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
    
    public ArrayList<EnP3mCuenta> getCuenta4Class(String claDet){
        ArrayList<EnP3mCuenta> cuentas = new ArrayList<EnP3mCuenta>();
        try {
            Properties prop = new Properties();
            InputStream inputStream = CuentaBusiness.class.getClassLoader().getResourceAsStream("/contabilidad.properties");
            prop.load(inputStream);
            
            Integer clase_compra_cod = Integer.parseInt(prop.getProperty("clase_compra_cod"));
            Integer clase_compra_hab_cod = Integer.parseInt(prop.getProperty("clase_compra_hab_cod"));
            Integer clase_venta_cod = Integer.parseInt(prop.getProperty("clase_venta_cod"));
            Integer clase_venta_deb_cod = Integer.parseInt(prop.getProperty("clase_venta_deb_cod"));
            Integer clase_com_cod = Integer.parseInt(prop.getProperty("clase_com_cod"));
            
            EnP3mCuenta cueComAmaHab = create(clase_compra_hab_cod, 6, claDet, getNextCueNum(clase_compra_hab_cod), "", "");
            EnP3mCuenta cueVenAmaDeb = create(clase_venta_deb_cod, 6, claDet, getNextCueNum(clase_venta_deb_cod), "", "");
            EnP3mCuenta cueCom = create(clase_com_cod, 6, claDet, getNextCueNum(clase_com_cod), "", "");
            
            EnP3mCuenta cuentaCom = create(clase_compra_cod, 6, claDet, getNextCueNum(clase_compra_cod), cueCom, cueComAmaHab);
            EnP3mCuenta cuentaVen = create(clase_venta_cod, 6, claDet, getNextCueNum(clase_venta_cod), cueVenAmaDeb, cueCom);
            cuentas.add(cuentaCom);
            cuentas.add(cuentaVen);
            return cuentas;
        } catch (IOException ex) {
            Logger.getLogger(CuentaBusiness.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public ArrayList<EnP3mCuenta> getCuenta4SubClass(String claCod, String subDet){
        ArrayList<EnP3mCuenta> cuentas = new ArrayList<EnP3mCuenta>();
        EnP2mClaseProductoDao claseDao = new EnP2mClaseProductoDao();
        EnP2mClaseProducto clase = claseDao.getById(claCod);
        
        Integer subclase_compra_cod = clase.getEnP3mCuentaByCueComCod().getCueCod();
        Integer subclase_compra_hab_cod = clase.getEnP3mCuentaByCueComCod().getEnP3mCuentaByCueAmaHab().getCueCod();
        Integer subclase_venta_cod = clase.getEnP3mCuentaByCueVenCod().getCueCod();
        Integer subclase_venta_deb_cod = clase.getEnP3mCuentaByCueVenCod().getEnP3mCuentaByCueAmaDeb().getCueCod();
        Integer subclase_com_cod = clase.getEnP3mCuentaByCueComCod().getEnP3mCuentaByCueAmaDeb().getCueCod();

        EnP3mCuenta cueComAmaHab = create(subclase_compra_hab_cod, 8, subDet, getNextCueNum(subclase_compra_hab_cod), "", "");
        EnP3mCuenta cueVenAmaDeb = create(subclase_venta_deb_cod, 8, subDet, getNextCueNum(subclase_venta_deb_cod), "", "");
        EnP3mCuenta cueCom = create(subclase_com_cod, 8, subDet, getNextCueNum(subclase_com_cod), "", "");

        EnP3mCuenta cuentaCom = create(subclase_compra_cod, 8, subDet, getNextCueNum(subclase_compra_cod), cueCom, cueComAmaHab);
        EnP3mCuenta cuentaVen = create(subclase_venta_cod, 8, subDet, getNextCueNum(subclase_venta_cod), cueVenAmaDeb, cueCom);
        cuentas.add(cuentaCom);
        cuentas.add(cuentaVen);
        
        return cuentas;
    }
    
    public ArrayList<EnP3mCuenta> getCuenta4Producto(String claCod, String subClaCod, String proDet){
        ArrayList<EnP3mCuenta> cuentas = new ArrayList<EnP3mCuenta>();
        EnP2mSubclaseProductoDao subclaseDao = new EnP2mSubclaseProductoDao();
        EnP2mSubclaseProducto subclase = subclaseDao.getById(new EnP2mSubclaseProductoId(subClaCod, claCod));
        
        Integer producto_compra_cod = subclase.getEnP3mCuentaByCueComCod().getCueCod();
        Integer producto_compra_hab_cod = subclase.getEnP3mCuentaByCueComCod().getEnP3mCuentaByCueAmaHab().getCueCod();
        Integer producto_venta_cod = subclase.getEnP3mCuentaByCueVenCod().getCueCod();
        Integer producto_venta_deb_cod = subclase.getEnP3mCuentaByCueVenCod().getEnP3mCuentaByCueAmaDeb().getCueCod();
        Integer producto_com_cod = subclase.getEnP3mCuentaByCueComCod().getEnP3mCuentaByCueAmaDeb().getCueCod();

        EnP3mCuenta cueComAmaHab = create(producto_compra_hab_cod, 10, proDet, getNextCueNum(producto_compra_hab_cod), "", "");
        EnP3mCuenta cueVenAmaDeb = create(producto_venta_deb_cod, 10, proDet, getNextCueNum(producto_venta_deb_cod), "", "");
        EnP3mCuenta cueCom = create(producto_com_cod, 10, proDet, getNextCueNum(producto_com_cod), "", "");

        EnP3mCuenta cuentaCom = create(producto_compra_cod, 10, proDet, getNextCueNum(producto_compra_cod), cueCom, cueComAmaHab);
        EnP3mCuenta cuentaVen = create(producto_venta_cod, 10, proDet, getNextCueNum(producto_venta_cod), cueVenAmaDeb, cueCom);
        cuentas.add(cuentaCom);
        cuentas.add(cuentaVen);
        
        return cuentas;
    }
}
