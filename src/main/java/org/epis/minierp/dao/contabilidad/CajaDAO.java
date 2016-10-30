package org.epis.minierp.dao.contabilidad;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import org.epis.minierp.model.contabilidad.CajaView;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import org.epis.minierp.model.contabilidad.Caja;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;

public class CajaDAO {
    private Session session;
    
    public CajaDAO()
    {  
        session = HibernateUtil.getSessionFactory().getCurrentSession();  
    }
    
    public List<CajaView> getView(){
        Query query = session.createQuery("from CajaView ");
        return query.list();
    }
    public List<Caja> getCaja(){
        CajaDAO cajaDAO = new CajaDAO();
        Iterator <CajaView> diario = cajaDAO.getView().iterator();
        List<Caja>caja = new ArrayList<Caja>();
        Caja ant = new Caja();
        Caja nuevo;
        
         while(diario.hasNext()) {
            CajaView asiento = diario.next();
            nuevo = new Caja(asiento.getAsiDetCod(),asiento.getAsiCabFec(),asiento.getCueDes(),asiento.getCueNum(),asiento.getDebe(),asiento.getHaber());
            //swap
            if("101".equals(asiento.getCueNum())){
                nuevo.setCueDes(ant.getCueDes());
                nuevo.setCueNum(ant.getCueNum());
                
                if("0".equals(asiento.getEstado()))
                    nuevo.setHaber(0); 
                else nuevo.setDebe(0); 
                caja.add(nuevo);
            } 
            ant = nuevo;
        }
        return caja;
    }

    public Set<Caja> getTodo(){
        CajaDAO cajaDAO = new CajaDAO();
        Iterator <CajaView> diario = cajaDAO.getView().iterator();
        
        Set <Caja> caja = new HashSet <> ();
         while(diario.hasNext()) {
            CajaView asiento = diario.next();
            Caja nuevo = new Caja(asiento.getAsiDetCod(),asiento.getAsiCabFec(),asiento.getCueDes(),asiento.getCueNum(),asiento.getDebe(),asiento.getHaber());
            if("0".equals(asiento.getEstado()))
                nuevo.setHaber(0); 
            else nuevo.setDebe(0); 
            caja.add(nuevo);
        }
        return caja;
    }
    public Map<String, Double> getTotal(){
        Iterator <Caja> diario = getCaja().iterator();
        Map<String, Double> sumas=  new TreeMap<>();
        
        double debe=0;
        double haber=0;
        
        while(diario.hasNext()) {
            Caja asiento = diario.next();
            debe+=asiento.getDebe();
            haber+=asiento.getHaber();          
        }
        sumas.put("debe",debe);
        sumas.put("haber",haber);
        return sumas;
    }
}