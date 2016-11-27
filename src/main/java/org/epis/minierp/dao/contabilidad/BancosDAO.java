package org.epis.minierp.dao.contabilidad;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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
            Bancos nuevo = new Bancos(asiento.getAsiDetCod(),asiento.getAsiCabFec(),asiento.getCueBanNum(),asiento.getAsiCabNumCom(),asiento.getCueNum(),asiento.getCueDes(),asiento.getDebe(),asiento.getHaber(), asiento.getLibDiaPer());
            
            CajaView asociado = this.getAsociado(asiento);
            nuevo.setCueDes(asociado.getCueDes());
            nuevo.setCueNum(asociado.getCueNum());
            
            if("0".equals(asiento.getEstado()))
                nuevo.setHaber(0); 
            else nuevo.setDebe(0); 
            bancos.add(nuevo);
          
        }
        return bancos;
    }
    
    public List<Bancos> getBancos(String banco){
        BancosDAO bancosDAO = new BancosDAO();
        Iterator <BancosView> diario = bancosDAO.getView().iterator();
        List<Bancos> bancos = new ArrayList<Bancos>();
        
         while(diario.hasNext()) {
            BancosView asiento = diario.next();
            Bancos nuevo = new Bancos(asiento.getAsiDetCod(),asiento.getAsiCabFec(),asiento.getCueBanNum(),asiento.getAsiCabNumCom(),asiento.getCueNum(),asiento.getCueDes(),asiento.getDebe(),asiento.getHaber(), asiento.getLibDiaPer());
            
            CajaView asociado = this.getAsociado(asiento);
            nuevo.setCueDes(asociado.getCueDes());
            nuevo.setCueNum(asociado.getCueNum());
            
            if(banco.equals(asiento.getCueNum())){
                if("0".equals(asiento.getEstado()))
                    nuevo.setHaber(0); 
                else nuevo.setDebe(0); 
                bancos.add(nuevo);
            }
        }
        return bancos;
    }
    
    public List<Bancos> getBancos(String banco, String fecha_filtro){
        BancosDAO bancosDAO = new BancosDAO();
        Iterator <BancosView> diario = bancosDAO.getView().iterator();
        List<Bancos> bancos = new ArrayList<Bancos>();
        
         while(diario.hasNext()) {
            BancosView asiento = diario.next();
            Bancos nuevo = new Bancos(asiento.getAsiDetCod(),asiento.getAsiCabFec(),asiento.getCueBanNum(),asiento.getAsiCabNumCom(),asiento.getCueNum(),asiento.getCueDes(),asiento.getDebe(),asiento.getHaber(), asiento.getLibDiaPer());
            
            CajaView asociado = this.getAsociado(asiento);
            nuevo.setCueDes(asociado.getCueDes());
            nuevo.setCueNum(asociado.getCueNum());
            
            String fecha = getMonth(nuevo.getAsiCabFec());
            
            if(banco.equals(asiento.getCueNum()) && fecha_filtro.equals(fecha)){
                if("0".equals(asiento.getEstado()))
                    nuevo.setHaber(0); 
                else nuevo.setDebe(0); 
                bancos.add(nuevo);
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
            Bancos nuevo = new Bancos(asiento.getAsiDetCod(),asiento.getAsiCabFec(),asiento.getCueBanNum(),asiento.getAsiCabNumCom(),asiento.getCueNum(),asiento.getCueDes(),asiento.getDebe(),asiento.getHaber(),asiento.getLibDiaPer());
            
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
    
    public Map<String, Double> getTotal(String banco, String fecha_filtro){
        Iterator <Bancos> diario = getBancos(banco, fecha_filtro).iterator();
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
        String descripcion=getBancos().get(0).getCueDes();         
        Map<String, String> cuentaDes=  new TreeMap<>();
        cuentaDes.put("cueCod", cuenta);
        cuentaDes.put("cueDes", descripcion);
        return cuentaDes;
    }
    
    public CajaView getAsociado(BancosView cab){
        Query query = session.createQuery("from CajaView B where B.asiCabCod = '" +cab.getAsiCabCod()+ "'");
        CajaView caja =(CajaView)query.list().get(0);
        if(cab.getCueNum().equals(caja.getCueNum()))
            return (CajaView)query.list().get(1);
        else
            return (CajaView)query.list().get(0);
    }
    public String getMonth(String fecha){
        String pattern = "dd/MM/yyyy";
        SimpleDateFormat format = new SimpleDateFormat(pattern);
        try {
          Date date = format.parse(fecha);
          DateFormat df = new SimpleDateFormat("YYYY-MM");
          fecha = df.format(date).toString();
        } catch (ParseException e) {
          e.printStackTrace();
        }
        return fecha;
    }
    
    public String getMonth(Date fecha){        
        DateFormat df = new SimpleDateFormat("YYYY-MM");
        String requiredDate = df.format(fecha).toString();
        
        return requiredDate;
    }
}
