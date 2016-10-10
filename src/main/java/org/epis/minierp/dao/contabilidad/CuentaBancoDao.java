package org.epis.minierp.dao.contabilidad;

import java.util.List;
import org.epis.minierp.model.EnP3mCuentaBanco;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

public class CuentaBancoDao
{
    private Session session;
    
    public CuentaBancoDao()
    {
        session = HibernateUtil.getSessionFactory().getCurrentSession();  
    }
    
    public List<EnP3mCuentaBanco> getAllActive()
    {
        Query query = session.createQuery("from EnP3mCuentaBanco B where B.estRegCod = 'A'");
        return query.list();
    }
    
    public EnP3mCuentaBanco getById(int id)
    {
        EnP3mCuentaBanco banco = null;
        try {
            banco = (EnP3mCuentaBanco)session.load(EnP3mCuentaBanco.class, id);
        } catch(ObjectNotFoundException e)
        {
            return null;
        }
        return banco;
    }

    public void save(EnP3mCuentaBanco cb) {
        session.save(cb);
    }

    public void update(int updateCueBanCod, int updateBanCod, String updateCueBanNum) {
        EnP3mCuentaBanco cuenta = (EnP3mCuentaBanco)session.get(EnP3mCuentaBanco.class, updateCueBanCod); 
        BancoDao bancoDao = new BancoDao();
        cuenta.setTaGzzBanco(bancoDao.getById(updateBanCod));
        cuenta.setCueBanNum(updateCueBanNum);
	session.update(cuenta);
    }

    public void delete(int deleteCueBanCod) {
        EnP3mCuentaBanco cuentaBanco = (EnP3mCuentaBanco)session.get(EnP3mCuentaBanco.class, deleteCueBanCod);
        CuentaDao cuentaDao = new CuentaDao();
        cuentaDao.delete(cuentaBanco.getEnP3mCuenta().getCueCod());
        cuentaBanco.setEstRegCod('*');
	session.update(cuentaBanco);
    }
}
