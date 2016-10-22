package org.epis.minierp.dao.contabilidad;

import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import org.epis.minierp.model.contabilidad.Bancos;
import org.epis.minierp.model.contabilidad.BancosView;
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

        Iterator <Bancos> diario = getTodo().iterator();
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
