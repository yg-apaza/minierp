package org.epis.minierp.dao.contabilidad;

import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import org.epis.minierp.model.contabilidad.LibroMayor;
import org.epis.minierp.model.contabilidad.LibroMayorView;
import org.epis.minierp.util.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;

public class LibroMayorDAO {
    private Session session;
    
    public LibroMayorDAO()
    {  
        session = HibernateUtil.getSessionFactory().getCurrentSession();  
    }
    
    public List<LibroMayorView> getView(){
        Query query = session.createQuery("from LibroMayorView ");
        return query.list();
    }
    public Set<LibroMayor> getLibroMayor(){
        LibroMayorDAO cajaDAO = new LibroMayorDAO();
        Iterator <LibroMayorView> diario = cajaDAO.getView().iterator();
        Set <LibroMayor> caja = new HashSet <> ();
        LibroMayor ant;
        LibroMayor nuevo=new LibroMayor();
        
         while(diario.hasNext()) {
            ant = nuevo;
            LibroMayorView asiento = diario.next();
            nuevo = new LibroMayor(asiento.getAsiDetCod(),asiento.getAsiCabFec(),asiento.getAsiCabGlo(),asiento.getCueDes(),asiento.getCueNum(),asiento.getDebe(),asiento.getHaber());
            //swap
            if("101".equals(asiento.getCueNum())){
                nuevo.setCueDes(ant.getCueDes());
                nuevo.setCueNum(ant.getCueNum());
                
                if("0".equals(asiento.getEstado()))
                    nuevo.setHaber(0); 
                else nuevo.setDebe(0); 
                caja.add(nuevo);
            } 
        }
        return caja;
    }
    public Set<LibroMayor> getTodo(){
        LibroMayorDAO cajaDAO = new LibroMayorDAO();
        Iterator <LibroMayorView> diario = cajaDAO.getView().iterator();
        
        Set <LibroMayor> caja = new HashSet <> ();
         while(diario.hasNext()) {
            LibroMayorView asiento = diario.next();
            LibroMayor nuevo = new LibroMayor(asiento.getAsiDetCod(),asiento.getAsiCabFec(),asiento.getAsiCabGlo(),asiento.getCueDes(),asiento.getCueNum(),asiento.getDebe(),asiento.getHaber());
            if("0".equals(asiento.getEstado()))
                nuevo.setHaber(0); 
            else nuevo.setDebe(0); 
            caja.add(nuevo);
        }
        return caja;
    }
    public Map<String, Double> getTotal(){
        Query query = session.createQuery("from LibroMayorView");

        Iterator <LibroMayor> diario = getLibroMayor().iterator();
        Map<String, Double> sumas=  new TreeMap<>();
        
        double debe=0;
        double haber=0;
        
        while(diario.hasNext()) {
            LibroMayor asiento = diario.next();
            debe+=asiento.getDebe();
            haber+=asiento.getHaber();          
        }
        sumas.put("debe",debe);
        sumas.put("haber",haber);
        return sumas;
    }
}
