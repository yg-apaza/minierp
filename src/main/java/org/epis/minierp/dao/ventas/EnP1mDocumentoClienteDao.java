package org.epis.minierp.dao.ventas;

import java.util.List;
import org.epis.minierp.model.EnP1mDocumentoCliente;
import org.epis.minierp.model.EnP1mDocumentoClienteId;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

public class EnP1mDocumentoClienteDao {

    private Session session;

    public EnP1mDocumentoClienteDao() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }

    public List<EnP1mDocumentoCliente> getAll() {
        Query query = session.createQuery("from EnP1mDocumentoCliente");
        List<EnP1mDocumentoCliente> estados = query.list();
        return estados;
    }

    public List<EnP1mDocumentoCliente> getAllActive() {
        Query query = session.createQuery("from EnP1mDocumentoCliente E where E.estRegCod = 'A'");
        List<EnP1mDocumentoCliente> estados = query.list();
        System.out.println(estados);
        return estados;
    }

    public EnP1mDocumentoCliente getById(EnP1mDocumentoClienteId id) {
        EnP1mDocumentoCliente estado = null;
        try {
            estado = (EnP1mDocumentoCliente) session.load(EnP1mDocumentoCliente.class, id);
        } catch (ObjectNotFoundException e) {
            return null;
        }
        return estado;
    }
    
    public List<EnP1mDocumentoCliente> getAllActiveOrdered() {
        Query query = session.createQuery("from EnP1mDocumentoCliente E where E.estRegCod = 'A' "
                + "order by E.id.cliCod, E.id.tipDocCliCod asc");
        List<EnP1mDocumentoCliente> estados = query.list();
        return estados;
    }
    
    public EnP1mDocumentoCliente getByDocNum(String docCliNum) {
        EnP1mDocumentoCliente documento = null;
        Query query = session.createQuery("from EnP1mDocumentoCliente D where D.docCliNum = :id and D.estRegCod = 'A'");
        query.setParameter("id", docCliNum);
        query.setMaxResults(1);
        try {
            List<EnP1mDocumentoCliente> usuarios = query.list();
            documento = usuarios.get(0);
        } catch (IndexOutOfBoundsException ex) {
            return null;
        }
        return documento;
    }
    
    public void save(EnP1mDocumentoCliente docCliente) {
        session.save(docCliente);     
    }
    
    public void update(EnP1mDocumentoCliente docCliente){
        session.update(docCliente);
    }
    
    public void saveOrUpdate(EnP1mDocumentoCliente docCliente){
        session.saveOrUpdate(docCliente);
    }
    
    public void delete(EnP1mDocumentoCliente docCliente){
        session.delete(docCliente);
    }
    
}
