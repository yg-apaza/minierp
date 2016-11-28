package org.epis.minierp.business.contabilidad;

import java.util.*;
import org.epis.minierp.dao.contabilidad.LibroDiarioViewDao;
import org.epis.minierp.model.contabilidad.LibroDiarioView;

public class LibroMayorBusiness {
    public Map<String, Double> getTotal(String cuentaNum){
        Iterator <LibroDiarioView> diario = new LibroDiarioViewDao().getAllNiv(cuentaNum).iterator();
        Map<String, Double> sumas =  new TreeMap<>();
        
        double debe=0;
        double haber=0;
        
        while(diario.hasNext()) {
            LibroDiarioView asiento = diario.next();
            if(asiento.isAsiDetDebHab())
                debe += asiento.getAsiDetMon();
            else
                haber += asiento.getAsiDetMon();
        }
        sumas.put("debe", debe);
        sumas.put("haber", haber);
        return sumas;
    }
}
