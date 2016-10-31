package org.epis.minierp.dao.contabilidad;

import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
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
    
    public List<EnP3mCuenta> getAllActive()
    {
        Query query = session.createQuery("from EnP3mCuenta C where C.estRegCod = 'A' and C.cueNiv = :niv order by C.cueNum ASC");
        query.setParameter("niv", 1);
        return query.list();
    }
    
    public EnP3mCuenta getByNumNivActive(String num, int niv){
        EnP3mCuenta cuenta = null;
        Query query = session.createQuery("from EnP3mCuenta C where C.cueNum = :num and C.cueNiv = :niv and C.estRegCod = 'A'");
        query.setParameter("num", num);
        query.setParameter("niv", niv);
        List<EnP3mCuenta> cuentas = query.list();
        cuenta = cuentas.get(0);
        return cuenta;
    }
    
    public EnP3mCuenta getByNumActive(String num){
        EnP3mCuenta cuenta = null;
        Query query = session.createQuery("from EnP3mCuenta C where C.cueNum = :num and C.estRegCod = 'A'");
        query.setParameter("num", num);
        query.setMaxResults(1);
        try {
            List<EnP3mCuenta> cuentas = query.list();
            cuenta =  cuentas.get(0);
        } catch (IndexOutOfBoundsException ex) {
            return null;
        }
        return cuenta;
    }
    
    public EnP3mCuenta getByIdActive(int id)
    {
        EnP3mCuenta cuenta = null;
        Query query = session.createQuery("from EnP3mCuenta C where C.cueCod = :id and C.estRegCod = 'A'");
        query.setParameter("id", id);
        query.setMaxResults(1);
        try {
            List<EnP3mCuenta> cuentas = query.list();
            cuenta =  cuentas.get(0);
        } catch (IndexOutOfBoundsException ex) {
            Logger.getLogger(CuentaDao.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
        return cuenta;
    }
    
    public void save(EnP3mCuenta cuenta) {
        session.save(cuenta);     
    }
    
    public void update(int cueCod, String cueDes) {
        EnP3mCuenta cuenta = (EnP3mCuenta)session.get(EnP3mCuenta.class, cueCod); 
        cuenta.setCueDes(cueDes);
	session.update(cuenta); 
    }
    
    public void delete(int cueCod) {
        EnP3mCuenta cuenta = (EnP3mCuenta)session.get(EnP3mCuenta.class, cueCod); 
        cuenta.setEstRegCod('*');
	session.update(cuenta);
        Iterator<EnP3mCuenta> iterator = cuenta.getEnP3mCuentas().iterator();
        while(iterator.hasNext()) {
            EnP3mCuenta c = iterator.next();
            delete(c.getCueCod());
        }
    }
}
