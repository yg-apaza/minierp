
package org.epis.minierp.business.ventas;

import java.util.ArrayList;
import java.util.List;
import org.epis.minierp.dao.ventas.EnP1mFacturaVentaCabDao;
import org.epis.minierp.model.EnP1mFacturaVentaCab;
import org.epis.minierp.model.EnP1tFacturaVentaDet;


public class EnP1mFacturaVentaBusiness {
    
    EnP1mFacturaVentaCabDao facVenCabDao;
    public void devolucionParcial(){
        facVenCabDao = new EnP1mFacturaVentaCabDao();
    }
    
    public void devolucionTotal(String facVenCabCod){
        EnP1mFacturaVentaCab cabFacVen = facVenCabDao.getById(facVenCabCod);
        List<EnP1tFacturaVentaDet> detFacVen = new ArrayList<>();
        detFacVen.addAll(cabFacVen.getEnP1tFacturaVentaDets());
        
    }
}
