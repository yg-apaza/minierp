package org.epis.minierp.dao.contabilidad;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import org.epis.minierp.model.contabilidad.Bancos;
import org.epis.minierp.model.contabilidad.BancosView;
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
    public List<Bancos> getBancos(){
        BancosDAO bancosDAO = new BancosDAO();
        Iterator <BancosView> diario = bancosDAO.getView().iterator();
        List<Bancos> bancos = new ArrayList<Bancos>();
        
         while(diario.hasNext()) {
            BancosView asiento = diario.next();
            Bancos nuevo = new Bancos(asiento.getAsiDetCod(),asiento.getAsiCabFec(),asiento.getCueBanNum(),asiento.getAsiCabNumCom(),asiento.getCueNum(),asiento.getCueDes(),asiento.getDebe(),asiento.getHaber());
            
            CajaDAO cajaDAO = new CajaDAO();
            Iterator <CajaView> diario_ = cajaDAO.getView().iterator();
            CajaView ant=new CajaView();
            CajaView nue;

             while(diario_.hasNext()) {
                nue = diario_.next();
                
                //swap
                if(nuevo.getAsiDetCod()==(nue.getAsiDetCod())){
                    nuevo.setCueDes(ant.getCueDes());
                    nuevo.setCueNum(ant.getCueNum());

                    if("0".equals(asiento.getEstado()))
                        nuevo.setHaber(0); 
                    else nuevo.setDebe(0); 
                    bancos.add(nuevo);
                    break;
                } 
                ant = nue;
            }
        }
        return bancos;
    }
    public List<Bancos> getBancos(String banco){
        BancosDAO bancosDAO = new BancosDAO();
        Iterator <BancosView> diario = bancosDAO.getView().iterator();
        List<Bancos> bancos = new ArrayList<Bancos>();
        
         while(diario.hasNext()) {
            BancosView asiento = diario.next();
            Bancos nuevo = new Bancos(asiento.getAsiDetCod(),asiento.getAsiCabFec(),asiento.getCueBanNum(),asiento.getAsiCabNumCom(),asiento.getCueNum(),asiento.getCueDes(),asiento.getDebe(),asiento.getHaber());
            
            CajaDAO cajaDAO = new CajaDAO();
            Iterator <CajaView> diario_ = cajaDAO.getView().iterator();
            CajaView ant=new CajaView();
            CajaView nue;

             while(diario_.hasNext()) {
                nue = diario_.next();
                if(banco.equals(asiento.getCueNum())){
                    //swap
                    if(nuevo.getAsiDetCod()==(nue.getAsiDetCod())){
                        nuevo.setCueDes(ant.getCueDes());
                        nuevo.setCueNum(ant.getCueNum());

                        if("0".equals(asiento.getEstado()))
                            nuevo.setHaber(0); 
                        else nuevo.setDebe(0); 
                        bancos.add(nuevo);
                        break;
                    } 
                }
                ant = nue;
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
            Bancos nuevo = new Bancos(asiento.getAsiDetCod(),asiento.getAsiCabFec(),asiento.getCueBanNum(),asiento.getAsiCabNumCom(),asiento.getCueNum(),asiento.getCueDes(),asiento.getDebe(),asiento.getHaber());
            
            if("0".equals(asiento.getEstado()))
                nuevo.setHaber(0); 
            else nuevo.setDebe(0); 
            bancos.add(nuevo);
        }
        return bancos;
    }
    public Map<String, Double> getTotal(String banco){
        Iterator <Bancos> diario = getBancos(banco).iterator();
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
    public Map<String, String> getCuenta(String cuenta){
        String descripcion = "";
        BancosDAO bancosDAO = new BancosDAO();
        Iterator <BancosView> diario = bancosDAO.getView().iterator();

         while(diario.hasNext()) {
            BancosView asiento = diario.next();
            if(cuenta.equals(asiento.getCueNum())){
                descripcion = asiento.getCueDes();
                break;
            }
        }
         
        Map<String, String> cuentaDes=  new TreeMap<>();
        cuentaDes.put("cueCod", cuenta);
        cuentaDes.put("cueDes", descripcion);
        return cuentaDes;
    }
}
