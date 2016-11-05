package org.epis.minierp.model;
// Generated 05/11/2016 03:48:27 PM by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * EnP4mFacturaCompraCab generated by hbm2java
 */
public class EnP4mFacturaCompraCab  implements java.io.Serializable {


     private String facComCabCod;
     private EnP1mUsuario enP1mUsuario;
     private EnP2mGuiaRemRemitente enP2mGuiaRemRemitente;
     private EnP2mGuiaRemTransportista enP2mGuiaRemTransportista;
     private EnP4mProveedor enP4mProveedor;
     private TaGzzEstadoFactura taGzzEstadoFactura;
     private TaGzzMetodoPagoFactura taGzzMetodoPagoFactura;
     private TaGzzMoneda taGzzMoneda;
     private TaGzzTipoDescuento taGzzTipoDescuento;
     private TaGzzTipoPagoFactura taGzzTipoPagoFactura;
     private Date facComCabFecEmi;
     private Date facComCabFecVen;
     private double facComCabTot;
     private Integer facComPorDes;
     private double facComCabSubTot;
     private int facComCabIgv;
     private String facComCabObs;
     private char estRegCod;
     private EnP2cDevolucionCompras enP2cDevolucionComprasByFacComCabCod;
     private Set enP2cDevolucionComprasesForDevComNewFac = new HashSet(0);
     private Set enP4tFacturaCompraDets = new HashSet(0);

    public EnP4mFacturaCompraCab() {
    }

	
    public EnP4mFacturaCompraCab(String facComCabCod, EnP1mUsuario enP1mUsuario, EnP4mProveedor enP4mProveedor, TaGzzEstadoFactura taGzzEstadoFactura, TaGzzMetodoPagoFactura taGzzMetodoPagoFactura, TaGzzMoneda taGzzMoneda, TaGzzTipoPagoFactura taGzzTipoPagoFactura, Date facComCabFecEmi, double facComCabTot, double facComCabSubTot, int facComCabIgv, String facComCabObs, char estRegCod) {
        this.facComCabCod = facComCabCod;
        this.enP1mUsuario = enP1mUsuario;
        this.enP4mProveedor = enP4mProveedor;
        this.taGzzEstadoFactura = taGzzEstadoFactura;
        this.taGzzMetodoPagoFactura = taGzzMetodoPagoFactura;
        this.taGzzMoneda = taGzzMoneda;
        this.taGzzTipoPagoFactura = taGzzTipoPagoFactura;
        this.facComCabFecEmi = facComCabFecEmi;
        this.facComCabTot = facComCabTot;
        this.facComCabSubTot = facComCabSubTot;
        this.facComCabIgv = facComCabIgv;
        this.facComCabObs = facComCabObs;
        this.estRegCod = estRegCod;
    }
    public EnP4mFacturaCompraCab(String facComCabCod, EnP1mUsuario enP1mUsuario, EnP2mGuiaRemRemitente enP2mGuiaRemRemitente, EnP2mGuiaRemTransportista enP2mGuiaRemTransportista, EnP4mProveedor enP4mProveedor, TaGzzEstadoFactura taGzzEstadoFactura, TaGzzMetodoPagoFactura taGzzMetodoPagoFactura, TaGzzMoneda taGzzMoneda, TaGzzTipoDescuento taGzzTipoDescuento, TaGzzTipoPagoFactura taGzzTipoPagoFactura, Date facComCabFecEmi, Date facComCabFecVen, double facComCabTot, Integer facComPorDes, double facComCabSubTot, int facComCabIgv, String facComCabObs, char estRegCod, EnP2cDevolucionCompras enP2cDevolucionComprasByFacComCabCod, Set enP2cDevolucionComprasesForDevComNewFac, Set enP4tFacturaCompraDets) {
       this.facComCabCod = facComCabCod;
       this.enP1mUsuario = enP1mUsuario;
       this.enP2mGuiaRemRemitente = enP2mGuiaRemRemitente;
       this.enP2mGuiaRemTransportista = enP2mGuiaRemTransportista;
       this.enP4mProveedor = enP4mProveedor;
       this.taGzzEstadoFactura = taGzzEstadoFactura;
       this.taGzzMetodoPagoFactura = taGzzMetodoPagoFactura;
       this.taGzzMoneda = taGzzMoneda;
       this.taGzzTipoDescuento = taGzzTipoDescuento;
       this.taGzzTipoPagoFactura = taGzzTipoPagoFactura;
       this.facComCabFecEmi = facComCabFecEmi;
       this.facComCabFecVen = facComCabFecVen;
       this.facComCabTot = facComCabTot;
       this.facComPorDes = facComPorDes;
       this.facComCabSubTot = facComCabSubTot;
       this.facComCabIgv = facComCabIgv;
       this.facComCabObs = facComCabObs;
       this.estRegCod = estRegCod;
       this.enP2cDevolucionComprasByFacComCabCod = enP2cDevolucionComprasByFacComCabCod;
       this.enP2cDevolucionComprasesForDevComNewFac = enP2cDevolucionComprasesForDevComNewFac;
       this.enP4tFacturaCompraDets = enP4tFacturaCompraDets;
    }
   
    public String getFacComCabCod() {
        return this.facComCabCod;
    }
    
    public void setFacComCabCod(String facComCabCod) {
        this.facComCabCod = facComCabCod;
    }
    public EnP1mUsuario getEnP1mUsuario() {
        return this.enP1mUsuario;
    }
    
    public void setEnP1mUsuario(EnP1mUsuario enP1mUsuario) {
        this.enP1mUsuario = enP1mUsuario;
    }
    public EnP2mGuiaRemRemitente getEnP2mGuiaRemRemitente() {
        return this.enP2mGuiaRemRemitente;
    }
    
    public void setEnP2mGuiaRemRemitente(EnP2mGuiaRemRemitente enP2mGuiaRemRemitente) {
        this.enP2mGuiaRemRemitente = enP2mGuiaRemRemitente;
    }
    public EnP2mGuiaRemTransportista getEnP2mGuiaRemTransportista() {
        return this.enP2mGuiaRemTransportista;
    }
    
    public void setEnP2mGuiaRemTransportista(EnP2mGuiaRemTransportista enP2mGuiaRemTransportista) {
        this.enP2mGuiaRemTransportista = enP2mGuiaRemTransportista;
    }
    public EnP4mProveedor getEnP4mProveedor() {
        return this.enP4mProveedor;
    }
    
    public void setEnP4mProveedor(EnP4mProveedor enP4mProveedor) {
        this.enP4mProveedor = enP4mProveedor;
    }
    public TaGzzEstadoFactura getTaGzzEstadoFactura() {
        return this.taGzzEstadoFactura;
    }
    
    public void setTaGzzEstadoFactura(TaGzzEstadoFactura taGzzEstadoFactura) {
        this.taGzzEstadoFactura = taGzzEstadoFactura;
    }
    public TaGzzMetodoPagoFactura getTaGzzMetodoPagoFactura() {
        return this.taGzzMetodoPagoFactura;
    }
    
    public void setTaGzzMetodoPagoFactura(TaGzzMetodoPagoFactura taGzzMetodoPagoFactura) {
        this.taGzzMetodoPagoFactura = taGzzMetodoPagoFactura;
    }
    public TaGzzMoneda getTaGzzMoneda() {
        return this.taGzzMoneda;
    }
    
    public void setTaGzzMoneda(TaGzzMoneda taGzzMoneda) {
        this.taGzzMoneda = taGzzMoneda;
    }
    public TaGzzTipoDescuento getTaGzzTipoDescuento() {
        return this.taGzzTipoDescuento;
    }
    
    public void setTaGzzTipoDescuento(TaGzzTipoDescuento taGzzTipoDescuento) {
        this.taGzzTipoDescuento = taGzzTipoDescuento;
    }
    public TaGzzTipoPagoFactura getTaGzzTipoPagoFactura() {
        return this.taGzzTipoPagoFactura;
    }
    
    public void setTaGzzTipoPagoFactura(TaGzzTipoPagoFactura taGzzTipoPagoFactura) {
        this.taGzzTipoPagoFactura = taGzzTipoPagoFactura;
    }
    public Date getFacComCabFecEmi() {
        return this.facComCabFecEmi;
    }
    
    public void setFacComCabFecEmi(Date facComCabFecEmi) {
        this.facComCabFecEmi = facComCabFecEmi;
    }
    public Date getFacComCabFecVen() {
        return this.facComCabFecVen;
    }
    
    public void setFacComCabFecVen(Date facComCabFecVen) {
        this.facComCabFecVen = facComCabFecVen;
    }
    public double getFacComCabTot() {
        return this.facComCabTot;
    }
    
    public void setFacComCabTot(double facComCabTot) {
        this.facComCabTot = facComCabTot;
    }
    public Integer getFacComPorDes() {
        return this.facComPorDes;
    }
    
    public void setFacComPorDes(Integer facComPorDes) {
        this.facComPorDes = facComPorDes;
    }
    public double getFacComCabSubTot() {
        return this.facComCabSubTot;
    }
    
    public void setFacComCabSubTot(double facComCabSubTot) {
        this.facComCabSubTot = facComCabSubTot;
    }
    public int getFacComCabIgv() {
        return this.facComCabIgv;
    }
    
    public void setFacComCabIgv(int facComCabIgv) {
        this.facComCabIgv = facComCabIgv;
    }
    public String getFacComCabObs() {
        return this.facComCabObs;
    }
    
    public void setFacComCabObs(String facComCabObs) {
        this.facComCabObs = facComCabObs;
    }
    public char getEstRegCod() {
        return this.estRegCod;
    }
    
    public void setEstRegCod(char estRegCod) {
        this.estRegCod = estRegCod;
    }
    public EnP2cDevolucionCompras getEnP2cDevolucionComprasByFacComCabCod() {
        return this.enP2cDevolucionComprasByFacComCabCod;
    }
    
    public void setEnP2cDevolucionComprasByFacComCabCod(EnP2cDevolucionCompras enP2cDevolucionComprasByFacComCabCod) {
        this.enP2cDevolucionComprasByFacComCabCod = enP2cDevolucionComprasByFacComCabCod;
    }
    public Set getEnP2cDevolucionComprasesForDevComNewFac() {
        return this.enP2cDevolucionComprasesForDevComNewFac;
    }
    
    public void setEnP2cDevolucionComprasesForDevComNewFac(Set enP2cDevolucionComprasesForDevComNewFac) {
        this.enP2cDevolucionComprasesForDevComNewFac = enP2cDevolucionComprasesForDevComNewFac;
    }
    public Set getEnP4tFacturaCompraDets() {
        return this.enP4tFacturaCompraDets;
    }
    
    public void setEnP4tFacturaCompraDets(Set enP4tFacturaCompraDets) {
        this.enP4tFacturaCompraDets = enP4tFacturaCompraDets;
    }




}


