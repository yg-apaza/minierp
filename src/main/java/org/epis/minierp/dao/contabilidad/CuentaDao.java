package org.epis.minierp.dao.contabilidad;

import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.commons.beanutils.BeanUtils;
import org.epis.minierp.dto.CuentaDto;
import org.epis.minierp.model.EnP3mCuenta;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;

public class CuentaDao
{
    private Session session;
    
    public CuentaDao()
    {  
        session = HibernateUtil.getSessionFactory().getCurrentSession();  
    }
    
    public List<CuentaDto> getAllActive()
    {
        Query query = session.createQuery("from EnP3mCuenta C where C.estRegCod = 'A' and C.cueNiv = :niv order by C.cueNum ASC");
        query.setParameter("niv", 1);
        List<EnP3mCuenta> cuentas = query.list();
        List<CuentaDto> nuevos = new ArrayList<CuentaDto>();
        for(int i = 0; i < cuentas.size(); i++){
            try {
                CuentaDto nuevo = new CuentaDto();
                BeanUtils.copyProperties(nuevo, cuentas.get(i));
                nuevo.setChilds(getAllActive(nuevo.getCueCod()));
                nuevos.add(nuevo);
            } catch (IllegalAccessException | InvocationTargetException ex) {
                return null;
            }
        }
        
        return nuevos;
    }
    
    public List<CuentaDto> getAllActiveRecursive(int cuePad)
    {
        Query query = session.createQuery("from EnP3mCuenta C where C.estRegCod = 'A' and C.cuePad = :pad order by C.cueNum ASC");
        query.setParameter("pad", cuePad);
        List<EnP3mCuenta> cuentas =  query.list();
        List<CuentaDto> nuevos = new ArrayList<CuentaDto>();
        for(int i = 0; i < cuentas.size(); i++)
        {
            try{
                CuentaDto nuevo = new CuentaDto();
                BeanUtils.copyProperties(nuevo, cuentas.get(i));
                nuevo.setChilds(getAllActiveRecursive(nuevo.getCueCod()));
                nuevos.add(nuevo);
            } catch (IllegalAccessException | InvocationTargetException ex) {
                return null;
            }
        }
        return nuevos;
    }
    
    public List<CuentaDto> getAllActive(int cuePad) {
        Query query = session.createQuery("from EnP3mCuenta C where C.estRegCod = 'A' and C.cuePad = :pad order by C.cueNum ASC");
        query.setParameter("pad", cuePad);
        List<EnP3mCuenta> cuentas =  query.list();
        List<CuentaDto> nuevos = new ArrayList<CuentaDto>();
        
        for(int i = 0; i < cuentas.size(); i++)
        {
            try {
                CuentaDto nuevo = new CuentaDto();
                BeanUtils.copyProperties(nuevo, cuentas.get(i));
                List<CuentaDto> childs = getAllActive(nuevo.getCueCod());
                nuevos.add(nuevo);
                nuevos.addAll(childs);
            } catch (IllegalAccessException | InvocationTargetException ex) {
                return null;
            }
        }
        return nuevos;
    }
    
    public List<CuentaDto> getMainChilds(){
        Query query = session.createQuery("from EnP3mCuenta C where C.estRegCod = 'A' and C.cueNiv = :niv order by C.cueNum ASC");
        query.setParameter("niv", 1);
        List<EnP3mCuenta> cuentas = query.list();
        List<CuentaDto> nuevos = new ArrayList<CuentaDto>();
        for(int i = 0; i < cuentas.size(); i++){
            try {
                CuentaDto nuevo = new CuentaDto();
                BeanUtils.copyProperties(nuevo, cuentas.get(i));
                nuevo.setChilds(getChilds(nuevo.getCueCod()));
                nuevos.add(nuevo);
            } catch (IllegalAccessException | InvocationTargetException ex) {
                return null;
            }
        }
        
        return nuevos;
    }
    
    public List<CuentaDto> getChilds(int cuePad) {
        Query query = session.createQuery("from EnP3mCuenta C where C.estRegCod = 'A' and C.cuePad = :pad order by C.cueNum ASC");
        query.setParameter("pad", cuePad);
        List<EnP3mCuenta> cuentas =  query.list();
        List<CuentaDto> nuevos = new ArrayList<CuentaDto>();
        
        for(int i = 0; i < cuentas.size(); i++)
        {
            try {
                CuentaDto nuevo = new CuentaDto();
                BeanUtils.copyProperties(nuevo, cuentas.get(i));
                nuevos.add(nuevo);
            } catch (IllegalAccessException | InvocationTargetException ex) {
                return null;
            }
        }
        
        return nuevos;
    }
    
    public CuentaDto getByIdActive(int id)
    {
        EnP3mCuenta cuenta = null;
        CuentaDto newCuenta = new CuentaDto();
        Query query = session.createQuery("from EnP3mCuenta C where C.cueCod = :id and C.estRegCod = 'A'");
        query.setParameter("id", id);
        query.setMaxResults(1);
        try {
            List<EnP3mCuenta> usuarios = query.list();
            cuenta =  usuarios.get(0);
            BeanUtils.copyProperties(newCuenta, cuenta);
            newCuenta.setChilds(new ArrayList<CuentaDto>());
        } catch (IllegalAccessException | InvocationTargetException | IndexOutOfBoundsException ex) {
            Logger.getLogger(CuentaDao.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
        return newCuenta;
    }
    
    public void save(EnP3mCuenta cuenta) {
        session.save(cuenta);     
    }
}
