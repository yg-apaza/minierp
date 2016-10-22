package org.epis.minierp.dao.contabilidad;

import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import org.epis.minierp.model.contabilidad.Bancos;
import org.epis.minierp.model.contabilidad.BancosView;
import org.epis.minierp.model.contabilidad.Caja;
import org.epis.minierp.model.contabilidad.CajaView;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;

public class BancosDAO {
    private static BancosDAO bancoDAO;
    private Session session;
    
    public BancosDAO()
    {  
        session = HibernateUtil.getSessionFactory().getCurrentSession();  
    }
    public List<BancosView> getView(){
        Query query = session.createQuery("from BancosView");
        return query.list();
    }
    public Set<Bancos> getBancos2(){
        BancosDAO bancosDAO = new BancosDAO();
        Iterator <BancosView> diario = bancosDAO.getView().iterator();
        Set <Bancos> bancos = new HashSet <> ();
        Bancos ant;
        Bancos nuevo=new Bancos();
        
         while(diario.hasNext()) {
            ant = nuevo;
            BancosView asiento = diario.next();
            nuevo = new Bancos(asiento.getAsiDetCod(),asiento.getAsiCabFec(),asiento.getCueBanNum(),asiento.getCueNum(),asiento.getCueDes(),asiento.getDebe(),asiento.getHaber());
            //swap
            if("104".equals(asiento.getCueNum()) ||
               "1041".equals(asiento.getCueNum()) ||
               "10411".equals(asiento.getCueNum()) ||
               "10412".equals(asiento.getCueNum()) ||
               "10413".equals(asiento.getCueNum())){
                nuevo.setCueDes(ant.getCueDes());
                nuevo.setCueNum(ant.getCueNum());
                
                if("0".equals(asiento.getEstado()))
                    nuevo.setHaber(0); 
                else nuevo.setDebe(0); 
                bancos.add(nuevo);
            } 
        }
        return bancos;
    }
    public Set<Bancos> getBancos(){
        BancosDAO bancosDAO = new BancosDAO();
        Iterator <BancosView> diario = bancosDAO.getView().iterator();
        Set <Bancos> bancos = new HashSet <> ();
        
         while(diario.hasNext()) {
            BancosView asiento = diario.next();
            Bancos nuevo = new Bancos(asiento.getAsiDetCod(),asiento.getAsiCabFec(),asiento.getCueBanNum(),asiento.getCueDes(),asiento.getCueNum(),asiento.getDebe(),asiento.getHaber());
            
            CajaDAO cajaDAO = new CajaDAO();
            Iterator <CajaView> diario_ = cajaDAO.getView().iterator();
            Set <Caja> caja = new HashSet <> ();
            CajaView ant;
            CajaView nue=new CajaView();

             while(diario_.hasNext()) {
                ant = nue;
                nue = diario_.next();
                //swap
                if(asiento.getAsiDetCod()==(nue.getAsiDetCod())){
                    nuevo.setCueDes(ant.getCueDes());
                    nuevo.setCueNum(ant.getCueNum());
                    bancos.add(nuevo);
                    
                    if("0".equals(asiento.getEstado()))
                        nuevo.setHaber(0); 
                    else nuevo.setDebe(0); 
                    bancos.add(nuevo);
                } 
            }
        }
        return bancos;
    }
    public Set<Bancos> getTodo(){
        BancosDAO bancosDAO = new BancosDAO();
        Iterator <BancosView> diario = bancosDAO.getView().iterator();
        
        Set <Bancos> bancos = new HashSet <> ();
         while(diario.hasNext()) {
            BancosView asiento = diario.next();
            Bancos nuevo = new Bancos(asiento.getAsiDetCod(),asiento.getAsiCabFec(),asiento.getCueBanNum(),asiento.getCueDes(),asiento.getCueNum(),asiento.getDebe(),asiento.getHaber());
            if("0".equals(asiento.getEstado()))
                nuevo.setHaber(0); 
            else nuevo.setDebe(0); 
            bancos.add(nuevo);
        }
        return bancos;
    }
    public Map<String, Double> getTotal(){
        Query query = session.createQuery("from BancosView");

        Iterator <Bancos> diario = getBancos().iterator();
        Map<String, Double> sumas=  new TreeMap<>();
        
        double debe=0;
        double haber=0;
        
        while(diario.hasNext()) {
            Bancos asiento = diario.next();
            debe+=asiento.getDebe();
            haber+=asiento.getHaber();          
        }
        sumas.put("debe",debe);
        sumas.put("haber",haber);
        return sumas;
    }
}
