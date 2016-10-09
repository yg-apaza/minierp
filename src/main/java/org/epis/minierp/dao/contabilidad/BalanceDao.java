package org.epis.minierp.dao.contabilidad;

import java.util.List;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;

public class BalanceDao {
    private Session session;
    
    public BalanceDao(){
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }
    
    public List<LibroDiario> getAll(){
        Query query = session.createQuery("FROM LibroDiario");
        String NumeroCuenta = null;
        List<LibroDiario> libros = query.list();
        LibroDiario libro = new LibroDiario();
        for(int i = 0; i < libros.size(); i++)
        {
            libro = libros.get(i);
            NumeroCuenta = libro.getCueNum();
            System.out.println("Numero cuenta libro " + i + " de " + libros.size() + " " + NumeroCuenta);
        }
        return libros;
    }
}
