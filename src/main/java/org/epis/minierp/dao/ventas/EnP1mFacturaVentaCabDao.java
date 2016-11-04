package org.epis.minierp.dao.ventas;

import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.epis.minierp.model.EnP1mFacturaVentaCab;
import org.epis.minierp.model.EnP1tFacturaVentaDet;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.ObjectNotFoundException;
import org.hibernate.Query;
import org.hibernate.Session;

public class EnP1mFacturaVentaCabDao {

    private Session session;

    public EnP1mFacturaVentaCabDao() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
    }

    public List<EnP1mFacturaVentaCab> getAll() {
        Query query = session.createQuery("from EnP1mFacturaVentaCab");
        List<EnP1mFacturaVentaCab> estados = query.list();
        return estados;
    }

    public List<EnP1mFacturaVentaCab> getAllActive() {
        Query query = session.createQuery("from EnP1mFacturaVentaCab E where E.estRegCod = 'A'");
        List<EnP1mFacturaVentaCab> estados = query.list();
        System.out.println(estados);
        return estados;
    }

    public EnP1mFacturaVentaCab getById(String id) {
        EnP1mFacturaVentaCab estado = null;
        try {
            estado = (EnP1mFacturaVentaCab) session.load(EnP1mFacturaVentaCab.class, id);
        } catch (ObjectNotFoundException e) {
            return null;
        }
        return estado;
    }
    
    /**
     * Devuelve el mayor numero de factura emitida por lote, maximo 3 caracteres (999)
     * @param lote numero del lote 001-123456 lote=001
     * @return 
     */
    public int getMaxValue4Lote(int lote){
        String loteCadena = String.format("%03d",lote);
        Query query = session.createQuery("from EnP1mFacturaVentaCab E where E.facVenCabCod like '"+loteCadena+"-%'");
        List<EnP1mFacturaVentaCab> estados = query.list();
        try {
            Set<Integer> lista = new HashSet<>();
            String temp;
            for(int i=0; i<estados.size(); i++){
                temp = estados.get(i).getFacVenCabCod();
                lista.add(Integer.parseInt(temp.substring(4)));
            }
            return Collections.max(lista)+1;
        } catch (Exception e) {
            return 1;
        }
        
    }
    
    public List<EnP1tFacturaVentaDet> getFacVenDets(String facVenDetCod){
        Query query = session.createQuery("from EnP1tFacturaVentaDet E "
                + "where E.id.facVenCabCod = '"+facVenDetCod+"' "
                + "order by E.id.facVenDetCod asc");
        List<EnP1tFacturaVentaDet> estados = query.list();
        return estados;
    }
    
    public void save(EnP1mFacturaVentaCab facturaCab) {
        session.save(facturaCab);     
    }
    
    public void update(EnP1mFacturaVentaCab facturaCab){
        session.update(facturaCab);
    }
    
    public void saveOrUpdate(EnP1mFacturaVentaCab facturaCab){
        session.saveOrUpdate(facturaCab);
    }
    
    public void delete(EnP1mFacturaVentaCab facturaCab){
        session.delete(facturaCab);
    }
    
}
