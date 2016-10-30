package org.epis.minierp.dao.contabilidad;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
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
    public List<LibroMayor> getLibroMayor(String cuenta){
        LibroMayorDAO libroMayorDAO = new LibroMayorDAO();
        Iterator <LibroMayorView> diario = libroMayorDAO.getView().iterator();
        List<LibroMayor>libroMayor = new ArrayList<LibroMayor>();
         while(diario.hasNext()) {
            LibroMayorView asiento = diario.next();
            if(cuenta.equals(asiento.getCueNum())){ 
                LibroMayor nuevo = new LibroMayor(asiento.getAsiDetCod(),asiento.getAsiCabFec(),asiento.getAsiCabGlo(),asiento.getCueDes(),asiento.getCueNum(),asiento.getDebe(),asiento.getHaber());
                if("0".equals(asiento.getEstado()))
                    nuevo.setHaber(0); 
                else nuevo.setDebe(0);                 
                libroMayor.add(nuevo);
            } 
        }
        return libroMayor;
    }
    public Map<String, Double> getTotal(String cuenta){
        Iterator <LibroMayor> diario = getLibroMayor(cuenta).iterator();
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
    public Map<String, String> getCuenta(String cuenta){
        LibroMayor diario = getLibroMayor(cuenta).get(0);
        Map<String, String> cuentaDes=  new TreeMap<>();
        cuentaDes.put("cueCod", cuenta);
        cuentaDes.put("cueDes", diario.getCueDes());
        return cuentaDes;
    }
}
