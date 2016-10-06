package org.epis.minierp.dao.ventas;

import java.util.ArrayList;
import org.epis.minierp.model.FacVentaCab;
import org.epis.minierp.model.FacVentaDet;
import org.epis.minierp.util.DbMoreUtil;

public class FacVentaDao {

    public FacVentaDao() {
    }
    
    /**
     * Crea la cabecera de una factura
     * @param cab Cabecera con los datos de la misma.
     * @return retorna una valor booleano que indica si la operacion fue exitosa
     */
    public boolean crearFacturaCab(FacVentaCab cab){
        String sentence = "insert into en_p1m_factura_venta_cab "
                + "(FacVenCabCod, CliCod, UsuCod, FacVenCabFec, FacVenCabTot, "
                + "FacVenCabDes, FacVenCabSubTot, FacVenCabIGV, FacVenCabObs, "
                + "EstFacCod, MetPagCod, TipPagCod, MonCod, EstRegCod) "
                + "values "
                + "('"+cab.getFacVenCabCod()+"', '"
                + cab.getCliCod()+"', '"
                + cab.getUsuCod()+"', '"
                + DbMoreUtil.getString2Date(cab.getFacVenCabFec())+"', '"
                + cab.getFacVenCabTot()+"', '"
                + cab.getFacVenCabDes()+"', '"
                + cab.getFacVenCabSubTot()+"', '"
                + cab.getFacVenCabIGV()+"', '"
                + cab.getFacVenCabObs()+"', '"
                + cab.getEstFacCod()+"', '"
                + cab.getMetPagCod()+"', '"
                + cab.getTipPagCod()+"', '"
                + cab.getMonCod()+"', '"
                + cab.getEstRegCod()+"');";
        return DbMoreUtil.executeUpdate(sentence);
    }
    
    /**
     * Crea un detalle de la factura.
     * @param det detalles de la factura(items/producos)
     * @return retorna una valor booleano que indica si la operacion fue exitosa
     */
    public boolean crearFacturaDet(FacVentaDet det){
        String sentence = "insert into en_p1t_factura_venta_det "
                + "(FacVenCabCod, FacVenDetCod, ClaProCod, SubClaProCod, "
                + "ProCod, FacVenDetCan, FacVenDetValUni) "
                + "values "
                + "('" +det.getFacVenCabCod() + "', '"
                + det.getFacVenDetCod() + "', '"
                + det.getClaProCod()+ "', '"
                + det.getSubClaProCod()+ "', '"
                + det.getProCod()+ "', '"
                + det.getFacVenDetCan()+ "', '"
                + det.getFacVenDetValUni()+ "');";
        return DbMoreUtil.executeUpdate(sentence);
    }
    
    /**
     * Crea una factura con varios detalles, si en alguna de las inserciones 
     * falla elimina todas las inserciones que se realizaron en el proceso.
     * @param cab Cabecera de la Factura
     * @param det Detalles de la Factura en un arrayList
     * @return retorna una valor booleano que indica si la operacion fue exitosa
     */
    public boolean crearFactura(FacVentaCab cab, ArrayList<FacVentaDet> det){
        if(!crearFacturaCab(cab)){
            return false;
        }
        for(int i=0; i<det.size(); i++){
            if(!crearFacturaDet(det.get(i))){
                i--;
                for(;i>=0;i--){
                    rollBackFacturaDet(cab.getFacVenCabCod(), ""+det.get(i).getFacVenDetCod());
                }
                rollBackFacturaCab(cab.getFacVenCabCod());
                return false;
            }
        }
        return true;
    }
    
    /**
     * Elimina una cabecera
     * @param facVenCabCod Codigo de la cabecera
     * @return retorna una valor booleano que indica si la operacion fue exitosa
     */
    private boolean rollBackFacturaCab(String facVenCabCod){
        String sentence = "delete from en_p1m_factura_venta_cab where "
                + "FacVenCabCod = '"+facVenCabCod+"';";
        return DbMoreUtil.executeUpdate(sentence);
    }
    
    /**
     * Elimina un detalle
     * @param facVenCabCod codigo de la cabecera del detalle
     * @param facVenDetCod codigo del detalle dentro de la cabecera
     * @return retorna una valor booleano que indica si la operacion fue exitosa
     */
    private boolean rollBackFacturaDet(String facVenCabCod, String facVenDetCod){
        String sentence = "delete from en_p1t_factura_venta_det where "
                + "FacVenCabCod = '"+facVenCabCod+"' and FacVenDetCod = '"+facVenDetCod+"';";
        return DbMoreUtil.executeUpdate(sentence);
    }
}
