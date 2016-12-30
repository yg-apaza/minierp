/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.epis.minierp.dao.logistica;

import java.util.List;
import org.epis.minierp.model.EnP2mDocumentoTransportista;
import org.epis.minierp.model.EnP2mDocumentoTransportistaId;
import org.epis.minierp.model.EnP2mTransportista;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Bryan
 */
public class EnP2mDocumentoTransportistaDao {
    
    private Session session;

    public EnP2mDocumentoTransportistaDao() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }

    public List<EnP2mDocumentoTransportista> getAll() {
        Query query = session.createQuery("from EnP2mDocumentoTransportista");
        List<EnP2mDocumentoTransportista> estados = query.list();
        return estados;
    }

    public List<EnP2mDocumentoTransportista> getAllActive() {
        Query query = session.createQuery("from EnP2mDocumentoTransportista E where E.estRegCod = 'A'");
        List<EnP2mDocumentoTransportista> estados = query.list();
        System.out.println(estados);
        return estados;
    }

    public EnP2mDocumentoTransportista getById(EnP2mDocumentoTransportistaId id) {
        EnP2mDocumentoTransportista estado = null;
        try {
            estado = (EnP2mDocumentoTransportista) session.load(EnP2mDocumentoTransportista.class, id);
        } catch (ObjectNotFoundException e) {
            return null;
        }
        return estado;
    }
    
    public List<EnP2mDocumentoTransportista> getAllActiveOrdered() {
        Query query = session.createQuery("from EnP2mDocumentoTransportista E where E.estRegCod = 'A' "
                + "order by E.id.traCod, E.id.tipDocTraCod asc");
        List<EnP2mDocumentoTransportista> estados = query.list();
        return estados;
    }
    
    public EnP2mDocumentoTransportista getByDocNum(String docCliNum) {
        EnP2mDocumentoTransportista documento = null;
        Query query = session.createQuery("from EnP2mDocumentoTransportista D where D.docCliNum = :id and D.estRegCod = 'A'");
        query.setParameter("id", docCliNum);
        query.setMaxResults(1);
        try {
            List<EnP2mDocumentoTransportista> usuarios = query.list();
            documento = usuarios.get(0);
        } catch (IndexOutOfBoundsException ex) {
            return null;
        }
        return documento;
    }
    
    public void save(EnP2mDocumentoTransportista docCliente) {
        session.save(docCliente);     
    }
    
    public void update(EnP2mDocumentoTransportista docCliente){
        session.update(docCliente);
    }
    
    public void saveOrUpdate(EnP2mDocumentoTransportista docCliente){
        session.saveOrUpdate(docCliente);
    }
    
    public void delete(EnP2mDocumentoTransportista docCliente){
        session.delete(docCliente);
    }
    
}
