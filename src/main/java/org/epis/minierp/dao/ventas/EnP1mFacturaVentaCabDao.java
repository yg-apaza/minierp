package org.epis.minierp.dao.ventas;

import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.epis.minierp.model.EnP1mFacturaVentaCab;
import org.epis.minierp.model.EnP1tFacturaVentaDet;
import org.epis.minierp.model.EnP2mGuiaRemTransportista;
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
    
    public List<EnP1mFacturaVentaCab> getAllActive4UsuCod(String usuCod) {
        Query query = session.createQuery("from EnP1mFacturaVentaCab E "
                + "where E.estRegCod = 'A' and E.enP1mUsuario.usuCod = '"
                + usuCod + "'");
        List<EnP1mFacturaVentaCab> estados = query.list();
        System.out.println(estados);
        return estados;
    }
    
    public List<EnP1mFacturaVentaCab> getByGuiaRemTransportista(EnP2mGuiaRemTransportista t){
        Query q=session.createQuery("from EnP1mFacturaVentaCab E where E.enP2mGuiaRemTransportista=:p1");
        q.setParameter("p1", t);
        List<EnP1mFacturaVentaCab> facs= q.list();
        System.out.println(facs);
        return facs;
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
        
    public boolean verifyReferralGuide(String id) {
        EnP1mFacturaVentaCab factura = null;
        try {
            factura = (EnP1mFacturaVentaCab) session.load(EnP1mFacturaVentaCab.class, id);
        } catch (ObjectNotFoundException e) {
            return false;
        }
        
        return (factura.getEnP2mGuiaRemRemitente() == null);
    }
    
    public boolean verifyCarrierGuide(String id) {
        EnP1mFacturaVentaCab factura = null;
        try {
            factura = (EnP1mFacturaVentaCab) session.load(EnP1mFacturaVentaCab.class, id);
        } catch (ObjectNotFoundException e) {
            return false;
        }
        
        return (factura.getEnP2mGuiaRemTransportista() == null);
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
    
    /**
     * Retorna array[usuCod, usuApePat, usuApeMat, usuNom, fecVenCabTot, 
     * facVenCabSubTot - facVenCabTot,  tipDesCod]
     * @param usuCod codigo de usuario
     * @param fecIni fecha de inicio
     * @param fecFin fecha de fin
     * @return 
     */
    public List ingresos4Usuario(String usuCod, Date fecIni, Date fecFin){
        String myQuery = null;
        if(usuCod.equals("-1")){//todos
            myQuery = "select E.enP1mUsuario.usuCod, E.enP1mUsuario.usuApePat, "
                + "E.enP1mUsuario.usuApeMat, E.enP1mUsuario.usuNom, "
                + "sum(E.facVenCabSubTot), sum(E.facVenCabTot), sum(E.facVenCabTot - E.facVenCabSubTot) "
                + "from EnP1mFacturaVentaCab E "
                + "where E.estRegCod = 'A' and "
                + "E.facVenCabFecEmi between :_fecIni and :_fecFin "
                + "group by E.enP1mUsuario.usuCod "
                + "order by E.enP1mUsuario.usuCod";
        }else{
            myQuery = "select E.enP1mUsuario.usuCod, E.enP1mUsuario.usuApePat, "
                + "E.enP1mUsuario.usuApeMat, E.enP1mUsuario.usuNom, "
                + "sum(E.facVenCabSubTot), sum(E.facVenCabTot), sum(E.facVenCabTot - E.facVenCabSubTot) "
                + "from EnP1mFacturaVentaCab E "
                + "where E.estRegCod = 'A' and "
                + "E.facVenCabFecEmi between :_fecIni and :_fecFin and "
                + "E.enP1mUsuario.usuCod = '"+usuCod+"' "
                + "order by E.enP1mUsuario.usuCod";
        }
        Query query = session.createQuery(myQuery);
        
        query.setParameter("_fecIni", fecIni);
        query.setParameter("_fecFin", fecFin);
        List estados = query.list();
        return estados;
    }
    
    public List<EnP1tFacturaVentaDet> getFacVenDets(String facVenCabCod){
        Query query = session.createQuery("from EnP1tFacturaVentaDet E "
                + "where E.id.facVenCabCod = '"+facVenCabCod+"' "
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
