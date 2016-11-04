package org.epis.minierp.dao.ventas;

import java.util.List;
import org.epis.minierp.model.EnP1mClientesRutas;
import org.epis.minierp.model.EnP1mClientesRutasId;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

public class EnP1mClientesRutasDao {
    
    private Session session;

    public EnP1mClientesRutasDao() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }
    
    public List<EnP1mClientesRutas> getAll() {
        Query query = session.createQuery("from EnP1mClientesRutas");
        List<EnP1mClientesRutas> estados = query.list();
        return estados;
    }

    public List<EnP1mClientesRutas> getAllActive() {
        Query query = session.createQuery("from EnP1mClientesRutas E where E.estRegCod = 'A'");
        List<EnP1mClientesRutas> estados = query.list();
        System.out.println(estados);
        return estados;
    }
    
    public List<EnP1mClientesRutas> getAllActiveOrdered() {
        Query query = session.createQuery("from EnP1mClientesRutas E where E.estRegCod = 'A' "
                + "order by E.id.cliCod, E.id.catRutCod asc");
        List<EnP1mClientesRutas> estados = query.list();
        System.out.println(estados);
        return estados;
    }
    
    public List<EnP1mClientesRutas> getAllInactives() {
        Query query = session.createQuery("from EnP1mClientesRutas E where E.estRegCod = 'I'");
        List<EnP1mClientesRutas> estados = query.list();
        System.out.println(estados);
        return estados;
    }
    
    public List<EnP1mClientesRutas> getRutas4CliCod(String cliCod){
        Query query = session.createQuery("from EnP1mClientesRutas C where C.enP1mCliente.cliCod = :id and C.estRegCod = 'A'");
        query.setParameter("id", cliCod);
        List <EnP1mClientesRutas> estados = query.list();
        return estados;
    }
    
    public List<EnP1mClientesRutas> getRutas4CatRutCod(int catRutCod){
        Query query = session.createQuery("from EnP1mClientesRutas E where E.catRutCod = " + catRutCod);
        List<EnP1mClientesRutas> estados = query.list();
        System.out.println(estados);
        return estados;
    }

    public EnP1mClientesRutas getById(EnP1mClientesRutasId id) {
        EnP1mClientesRutas estado;
        try {
            estado = (EnP1mClientesRutas) session.get(EnP1mClientesRutas.class, id);
        } catch (ObjectNotFoundException e) {
            return null;
        }
        return estado;
    }
    
    public void save(EnP1mClientesRutas cliRuta) {
        session.save(cliRuta);     
    }
    
    public void update(EnP1mClientesRutas cliRuta){
        session.update(cliRuta);
    }
    
    public void saveOrUpdate(EnP1mClientesRutas cliRuta){
        session.saveOrUpdate(cliRuta);
    }
    
    public void delete(EnP1mClientesRutas cliRuta){
        session.delete(cliRuta);
    }
}
