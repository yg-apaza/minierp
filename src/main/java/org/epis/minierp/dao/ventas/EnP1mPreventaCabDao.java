package org.epis.minierp.dao.ventas;

import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.epis.minierp.model.EnP1mFacturaVentaCab;
import org.epis.minierp.model.EnP1mPreventaCab;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

public class EnP1mPreventaCabDao {

    private Session session;

    public EnP1mPreventaCabDao() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }

    public List<EnP1mPreventaCab> getAll() {
        Query query = session.createQuery("from EnP1mPreventaCab");
        List<EnP1mPreventaCab> estados = query.list();
        return estados;
    }

    public List<EnP1mPreventaCab> getAllActive() {
        Query query = session.createQuery("from EnP1mPreventaCab E where E.estRegCod = 'A'");
        List<EnP1mPreventaCab> estados = query.list();
        System.out.println(estados);
        return estados;
    }
    
    public List<EnP1mPreventaCab> getAllActive4UsuCod(String usuCod) {
        Query query = session.createQuery("from EnP1mPreventaCab E "
                + "where E.estRegCod = 'A' and "
                + "E.enP1mUsuario.usuCod = :usucod");
        query.setParameter("usucod", usuCod);
        List<EnP1mPreventaCab> estados = query.list();
        System.out.println(estados);
        return estados;
    }

    public EnP1mPreventaCab getById(int id) {
        EnP1mPreventaCab estado = null;
        try {
            estado = (EnP1mPreventaCab) session.get(EnP1mPreventaCab.class, id);
        } catch (ObjectNotFoundException e) {
            return null;
        }
        return estado;
    }
    
    public int getMaxPreVenCabCod(){
        Query query = session.createQuery("from EnP1mPreventaCab");
        List<EnP1mPreventaCab> estados = query.list();
        try {
            Set<Integer> lista = new HashSet<>();
            int temp;
            for(int i=0; i<estados.size(); i++){
                temp = estados.get(i).getPreVenCabCod();
                lista.add(temp);
            }
            return Collections.max(lista)+1;
        } catch (Exception e) {
            return 1;
        }
        
    }
    
    public void save(EnP1mPreventaCab preventaCab) {
        session.save(preventaCab);     
    }
    
    public void update(EnP1mPreventaCab preventaCab){
        session.update(preventaCab);
    }
    
    public void saveOrUpdate(EnP1mPreventaCab preventaCab){
        session.saveOrUpdate(preventaCab);
    }
    
    public void delete(EnP1mPreventaCab preventaCab){
        session.delete(preventaCab);
    }
    
}
