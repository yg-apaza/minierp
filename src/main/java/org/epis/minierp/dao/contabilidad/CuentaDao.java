package org.epis.minierp.dao.contabilidad;

import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.beanutils.BeanUtils;
import org.epis.minierp.dto.CuentaDto;
import org.epis.minierp.model.Cuenta;
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
        Query query = session.createQuery("from Cuenta C where C.estRegCod = 'A' and C.cueNiv = :niv order by C.cueNum ASC");
        query.setParameter("niv", 1);
        List<Cuenta> cuentas = query.list();
        List<CuentaDto> nuevos = new ArrayList<CuentaDto>();
        for(int i = 0; i < cuentas.size(); i++){
            try {
                CuentaDto nuevo = new CuentaDto();
                BeanUtils.copyProperties(nuevo, cuentas.get(i));
                nuevo.setChilds(getChildsActive(nuevo.getCueCod()));
                nuevos.add(nuevo);
            } catch (IllegalAccessException | InvocationTargetException ex) {
                return null;
            }
        }
        
        return nuevos;
    }
    
    public List<CuentaDto> getChildsActiveRecursive(int cuePad)
    {
        Query query = session.createQuery("from Cuenta C where C.estRegCod = 'A' and C.cuePad = :pad order by C.cueNum ASC");
        query.setParameter("pad", cuePad);
        List<Cuenta> cuentas =  query.list();
        List<CuentaDto> nuevos = new ArrayList<CuentaDto>();
        for(int i = 0; i < cuentas.size(); i++)
        {
            try{
                CuentaDto nuevo = new CuentaDto();
                BeanUtils.copyProperties(nuevo, cuentas.get(i));
                nuevo.setChilds(getChildsActiveRecursive(nuevo.getCueCod()));
                nuevos.add(nuevo);
            } catch (IllegalAccessException | InvocationTargetException ex) {
                return null;
            }
        }
        return nuevos;
    }
    
    public List<CuentaDto> getChildsActive(int cuePad){
        Query query = session.createQuery("from Cuenta C where C.estRegCod = 'A' and C.cuePad = :pad order by C.cueNum ASC");
        query.setParameter("pad", cuePad);
        List<Cuenta> cuentas =  query.list();
        List<CuentaDto> nuevos = new ArrayList<CuentaDto>();
        
        for(int i = 0; i < cuentas.size(); i++)
        {
            try{
                CuentaDto nuevo = new CuentaDto();
                BeanUtils.copyProperties(nuevo, cuentas.get(i));
                List<CuentaDto> childs = getChildsActive(nuevo.getCueCod());
                nuevos.add(nuevo);
                nuevos.addAll(childs);
            } catch (IllegalAccessException | InvocationTargetException ex) {
                return null;
            }
        }
        return nuevos;
    }
}
