package org.epis.minierp.dao.contabilidad;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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
 
         while(diario.hasNext()) {
            CajaView asiento = diario.next();
            Caja nuevo = new Caja(asiento.getAsiDetCod(),asiento.getAsiCabFec(),asiento.getCueDes(),asiento.getCueNum(),asiento.getDebe(),asiento.getHaber(),asiento.getLibDiaPer());
            //swap
            if("101".equals(asiento.getCueNum())){
                CajaView asociado = this.getAsociado(asiento);
                nuevo.setCueDes(asociado.getCueDes());
                nuevo.setCueNum(asociado.getCueNum());
                
                if("0".equals(asiento.getEstado()))
                    nuevo.setHaber(0); 
                else nuevo.setDebe(0); 
                caja.add(nuevo);
            } 
        }
        return caja;
    }
    public List<Caja> getCaja(String fecha_filtro){
        CajaDAO cajaDAO = new CajaDAO();
        Iterator <CajaView> diario = cajaDAO.getView().iterator();
        List<Caja>caja = new ArrayList<Caja>();
 
         while(diario.hasNext()) {
            CajaView asiento = diario.next();
            Caja nuevo = new Caja(asiento.getAsiDetCod(),asiento.getAsiCabFec(),asiento.getCueDes(),asiento.getCueNum(),asiento.getDebe(),asiento.getHaber(),asiento.getLibDiaPer());

            String fecha = getMonth(nuevo.getAsiCabFec());
            if("101".equals(asiento.getCueNum()) && fecha_filtro.equals(fecha)){
                CajaView asociado = this.getAsociado(asiento);
                nuevo.setCueDes(asociado.getCueDes());
                nuevo.setCueNum(asociado.getCueNum());
                
                if("0".equals(asiento.getEstado()))
                    nuevo.setHaber(0); 
                else nuevo.setDebe(0); 
                caja.add(nuevo);
            } 
        }
        return caja;
    }

    public Set<Caja> getTodo(){
        CajaDAO cajaDAO = new CajaDAO();
        Iterator <CajaView> diario = cajaDAO.getView().iterator();
        
        Set <Caja> caja = new HashSet <> ();
         while(diario.hasNext()) {
            CajaView asiento = diario.next();
            Caja nuevo = new Caja(asiento.getAsiDetCod(),asiento.getAsiCabFec(),asiento.getCueDes(),asiento.getCueNum(),asiento.getDebe(),asiento.getHaber(), asiento.getLibDiaPer());
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
    public Map<String, Double> getTotal(String fecha_filtro){
        Iterator <Caja> diario = getCaja(fecha_filtro).iterator();
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
    
    public CajaView getAsociado(CajaView cab){
        Query query = session.createQuery("from CajaView B where B.asiCabCod = '" +cab.getAsiCabCod()+ "'");
        CajaView caja =(CajaView)query.list().get(0);
        if(cab.getCueNum().equals(caja.getCueNum()))
            return (CajaView)query.list().get(1);
        else
            return (CajaView)query.list().get(0);
    }
    
    public String getMonth(Date fecha){        
        DateFormat df = new SimpleDateFormat("YYYY-MM");
        String requiredDate = df.format(fecha).toString();
        
        return requiredDate;
    }
}