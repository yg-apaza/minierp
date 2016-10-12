package org.epis.minierp.business;

import java.util.List;
import org.epis.minierp.dao.general.TaGzzEstadoFacturaDao;
import org.epis.minierp.dao.general.TaGzzMetodoPagoFacturaDao;
import org.epis.minierp.dao.general.TaGzzMonedaDao;
import org.epis.minierp.dao.general.TaGzzTipoPagoFacturaDao;
import org.epis.minierp.dao.ventas.EnP1mClienteDao;
import org.epis.minierp.dao.ventas.EnP1mFacturaVentaCabDao;
import org.epis.minierp.dao.ventas.EnP1mUsuarioDao;
import org.epis.minierp.dao.ventas.EnP1tFacturaVentaDetDao;
import org.epis.minierp.model.EnP1mFacturaVentaCab;
import org.epis.minierp.model.EnP1tFacturaVentaDet;


public class EnP1mVentas {
    EnP1mFacturaVentaCabDao cabDao;
    EnP1tFacturaVentaDetDao detDao;
    EnP1mClienteDao cli;
    EnP1mUsuarioDao usu;
    TaGzzEstadoFacturaDao estFac;
    TaGzzMetodoPagoFacturaDao metPag;
    TaGzzMonedaDao mon;
    TaGzzTipoPagoFacturaDao tipPag;

    public EnP1mVentas() {
        cabDao = new EnP1mFacturaVentaCabDao();
        detDao = new EnP1tFacturaVentaDetDao();
        cli = new EnP1mClienteDao();
        usu = new EnP1mUsuarioDao();
        estFac = new TaGzzEstadoFacturaDao();
        metPag = new TaGzzMetodoPagoFacturaDao();
        mon = new TaGzzMonedaDao();
        tipPag = new TaGzzTipoPagoFacturaDao();
    }
    
    public void GenerarFacturaVenta(EnP1mFacturaVentaCab cab, List<EnP1tFacturaVentaDet> dets ){
        cabDao.save(cab);
        for (EnP1tFacturaVentaDet next : dets) {
            detDao.save(next);
        }
    }
  
    public void GenerarFacturaVenta(EnP1mFacturaVentaCab facturaCab,
            String cliCod, String usuCod, int estFacCod, int metPagFac,
            int monCod, int tipPagCod, List<EnP1tFacturaVentaDet> dets) {
        cabDao.save(GenerarFacturaCab(facturaCab, cliCod, usuCod, estFacCod,
                metPagFac, monCod, tipPagCod));
        for (EnP1tFacturaVentaDet next : dets) {
            detDao.save(next);
        }
    }
    
    public String GenerarNumFactura(int numLote){
        String numFactura = "";
        
        return numFactura;
    }
  
    public EnP1mFacturaVentaCab GenerarFacturaCab(EnP1mFacturaVentaCab facturaCab,
            String cliCod, String usuCod, int estFacCod, int metPagFac,
            int monCod, int tipPagCod) {

        facturaCab.setEnP1mCliente(cli.getById(cliCod));
        facturaCab.setEnP1mUsuario(usu.getById(cliCod));
        facturaCab.setTaGzzEstadoFactura(estFac.getById(estFacCod));
        facturaCab.setTaGzzMetodoPagoFactura(metPag.getById(metPagFac));
        facturaCab.setTaGzzMoneda(mon.getById(monCod));
        facturaCab.setTaGzzTipoPagoFactura(tipPag.getById(tipPagCod));

        return facturaCab;
    }
}
