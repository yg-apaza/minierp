/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.epis.minierp.controller.configuracion;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.epis.minierp.dao.general.*;
import org.epis.minierp.model.*;
/**
 *
 * @author Bryan
 */

public class TablasGeneralesController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        TaGzzBancoDao bDao= new TaGzzBancoDao();
        TaGzzEstadoCivilDao ecDao= new TaGzzEstadoCivilDao();
        TaGzzEstadoFacturaDao efDao= new TaGzzEstadoFacturaDao();
        TaGzzEstadoUniTransporteDao eutDao= new TaGzzEstadoUniTransporteDao();
        TaGzzMetodoPagoFacturaDao mpfDao= new TaGzzMetodoPagoFacturaDao();
        TaGzzMonedaDao mDao= new TaGzzMonedaDao();
        TaGzzMotivoTrasladoDao mtDao= new TaGzzMotivoTrasladoDao();
        TaGzzTipoClienteDao tclDao= new TaGzzTipoClienteDao();
        TaGzzTipoComprobanteDao tcrDao= new TaGzzTipoComprobanteDao();
        TaGzzTipoDescuentoDao tdisDao= new TaGzzTipoDescuentoDao();
        TaGzzTipoDestinatarioDao tdesDao= new TaGzzTipoDestinatarioDao();
        TaGzzTipoDevolucionDao tdevDao= new TaGzzTipoDevolucionDao();
        TaGzzTipoDocClienteDao tdcDao= new TaGzzTipoDocClienteDao();
        TaGzzTipoDocProveedorDao tdpDao= new TaGzzTipoDocProveedorDao();
        TaGzzTipoDocTransportistaDao tdtDao= new TaGzzTipoDocTransportistaDao();
        TaGzzTipoDocUsuarioDao tduDao= new TaGzzTipoDocUsuarioDao();
        TaGzzTipoPagoFacturaDao tpfDao= new TaGzzTipoPagoFacturaDao();
        TaGzzTipoUniTransporteDao tutDao= new TaGzzTipoUniTransporteDao();
        TaGzzTipoUsuarioDao tuDao= new TaGzzTipoUsuarioDao();
        TaGzzUnidadMedDao umDao= new TaGzzUnidadMedDao();
        TaGzzCanalClienteDao ccDao= new TaGzzCanalClienteDao();
        TaGzzTipoFallaProductoDao tfpDao= new TaGzzTipoFallaProductoDao();
        
        List<TaGzzBanco> t1 = bDao.getAllActive();
        List<TaGzzEstadoCivil> t2 = ecDao.getAllActive();
        List<TaGzzEstadoFactura> t3 = efDao.getAllActive();
        List<TaGzzEstadoUniTransporte> t4 = eutDao.getAllActive();
        List<TaGzzMetodoPagoFactura> t5 = mpfDao.getAllActive();
        List<TaGzzMoneda> t6 = mDao.getAllActive();
        List<TaGzzMotivoTraslado> t7 = mtDao.getAllActive();
        List<TaGzzTipoCliente> t8 = tclDao.getAllActive();
        List<TaGzzTipoComprobante> t9 = tcrDao.getAllActive();
        List<TaGzzTipoDescuento> t10 = tdisDao.getAllActive();
        List<TaGzzTipoDestinatario> t11 = tdesDao.getAllActive();
        List<TaGzzTipoDevolucion> t12 = tdevDao.getAllActive();
        List<TaGzzTipoDocCliente> t13 = tdcDao.getAllActive();
        List<TaGzzTipoDocProveedor> t14 = tdpDao.getAllActive();
        List<TaGzzTipoDocTransportista> t15 = tdtDao.getAllActive();
        List<TaGzzTipoDocUsuario> t16 = tduDao.getAllActive();
        List<TaGzzTipoPagoFactura> t17 = tpfDao.getAllActive();
        List<TaGzzTipoUniTransporte> t18 = tutDao.getAllActive();
        List<TaGzzTipoUsuario> t19 = tuDao.getAllActive();
        List<TaGzzUnidadMed> t20 = umDao.getAllActive();
        List<TaGzzCanalCliente> t21 = ccDao.getAllActive();
        List<TaGzzTipoFallaProducto> t22 = tfpDao.getAllActive();
        
        request.setAttribute("banco", t1);
        request.setAttribute("estadocivil", t2);
        request.setAttribute("estadofactura", t3);
        request.setAttribute("estadounitransporte", t4);
        request.setAttribute("metodopagofactura", t5);
        request.setAttribute("moneda", t6);
        request.setAttribute("motivotraslado", t7);
        request.setAttribute("tipocliente", t8);
        request.setAttribute("tipocomprobante", t9);
        request.setAttribute("tipodescuento", t10);
        request.setAttribute("tipodestinatario", t11);
        request.setAttribute("tipodevolucion", t12);
        request.setAttribute("tipodoccliente", t13);
        request.setAttribute("tipodocproveedor", t14);
        request.setAttribute("tipodoctransportista", t15);
        request.setAttribute("tipodocusuario", t16);
        request.setAttribute("tipopagofactura", t17);
        request.setAttribute("tipounitransporte", t18);
        request.setAttribute("tipousuario", t19);
        request.setAttribute("unidadmed", t20);
        request.setAttribute("canalcliente", t21);
        request.setAttribute("tipofallaprod", t22);
        request.getRequestDispatcher("/WEB-INF/configuracion/tablasGenerales.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("accion");
        String sel = request.getParameter("selTabla");
        String regDet = request.getParameter("regTabDet");
        int regCod;
        switch(action) {
            case "create":
                tipo(sel, 0, regDet,'A');
                break;
            case "update":
                regCod = Integer.parseInt(request.getParameter("regTabCod"));
                tipo(sel, regCod, regDet, 'C');
                break;
            case "delete":
                regCod = Integer.parseInt(request.getParameter("regTabCod"));
                tipo(sel, regCod, regDet, 'B');
                break;
        }
        
        response.sendRedirect(request.getContextPath() + "/secured/configuracion/tablasGenerales");
    }
    private void tipo(String sel, int regCod, String regDet, char op){
        switch(sel){
            case "0":
                TaGzzBancoDao bDao= new TaGzzBancoDao();
                TaGzzBanco b = new TaGzzBanco();
                b.setBanDet(regDet);
                if(op=='A'){
                    b.setBanCod(null);
                    b.setEstRegCod('A');
                    bDao.save(b);
                }
                else if(op=='C'){
                    b.setBanCod(regCod);
                    b.setEstRegCod('A');
                    bDao.update(b);
                }
                else{
                    b.setBanCod(regCod);
                    b.setEstRegCod('I');
                    bDao.update(b);
                }
                break;
            case "1":
                TaGzzEstadoCivilDao ecDao= new TaGzzEstadoCivilDao();
                TaGzzEstadoCivil ec= new TaGzzEstadoCivil();
                ec.setEstCivDet(regDet);
                if(op=='A'){
                    ec.setEstCivCod(null);
                    ec.setEstRegCod('A');
                    ecDao.save(ec);
                }
                else if(op=='C'){
                    ec.setEstCivCod(regCod);
                    ec.setEstRegCod('A');
                    ecDao.update(ec);
                }
                else{
                    ec.setEstCivCod(regCod);
                    ec.setEstRegCod('I');
                    ecDao.update(ec);
                }
                break;
            case "2":
                TaGzzEstadoFacturaDao efDao= new TaGzzEstadoFacturaDao();
                TaGzzEstadoFactura ef= new TaGzzEstadoFactura();
                ef.setEstFacDet(regDet);
                if(op=='A'){
                ef.setEstFacCod(null);
                ef.setEstRegCod('A');
                efDao.save(ef);
                }
                else if(op=='C'){
                ef.setEstFacCod(regCod);
                ef.setEstRegCod('A');
                efDao.update(ef);
                }
                else{
                ef.setEstFacCod(regCod);
                ef.setEstRegCod('I');
                efDao.update(ef);
                }
                break;
            case "3":
                TaGzzEstadoUniTransporteDao eutDao= new TaGzzEstadoUniTransporteDao();
                TaGzzEstadoUniTransporte eut= new TaGzzEstadoUniTransporte();
                eut.setEstUniTraDet(regDet);
                if(op=='A'){
                eut.setEstUniTraCod(null);
                eut.setEstRegCod(op);
                eutDao.save(eut);
                }
                else if(op=='C'){
                eut.setEstUniTraCod(regCod);
                eut.setEstRegCod('A');
                eutDao.update(eut);
                }
                
                else{
                eut.setEstUniTraCod(regCod);
                eut.setEstRegCod('I');
                eutDao.update(eut);
                }
                break;
            case "4":
                TaGzzMetodoPagoFacturaDao mpfDao= new TaGzzMetodoPagoFacturaDao();
                TaGzzMetodoPagoFactura mpf= new TaGzzMetodoPagoFactura();
                mpf.setMetPagDet(regDet);
                if(op=='A'){
                mpf.setMetPagCod(null);
                mpf.setEstRegCod(op);
                mpfDao.save(mpf);
                }
                else if(op=='C'){
                mpf.setMetPagCod(regCod);
                mpf.setEstRegCod('A');
                mpfDao.update(mpf);
                }
                else{
                mpf.setMetPagCod(regCod);
                mpf.setEstRegCod('I');
                mpfDao.update(mpf);
                }
                break;
            case "5":
                TaGzzMonedaDao mDao= new TaGzzMonedaDao();
                TaGzzMoneda m= new TaGzzMoneda();
                m.setMonDet(regDet);
                if(op=='A'){
                m.setMonCod(null);
                m.setEstRegCod(op);
                mDao.save(m);
                }
                else if(op=='C'){
                m.setMonCod(regCod);
                m.setEstRegCod('A');
                mDao.update(m);
                }
                else{
                m.setMonCod(regCod);
                m.setEstRegCod('I');
                mDao.update(m);
                }
                break;
            case "6":
                TaGzzMotivoTrasladoDao mtDao= new TaGzzMotivoTrasladoDao();
                TaGzzMotivoTraslado mt= new TaGzzMotivoTraslado();
                mt.setMotTraDet(regDet);
                if(op=='A'){
                mt.setMotTraCod(null);
                mt.setEstRegCod(op);
                mtDao.save(mt);
                }
                else if(op=='C'){
                mt.setMotTraCod(regCod);
                mt.setEstRegCod('A');
                mtDao.update(mt);
                }
                else{
                mt.setMotTraCod(regCod);
                mt.setEstRegCod('I');
                mtDao.update(mt);
                }
                break;
            case "7":
                TaGzzTipoClienteDao tclDao= new TaGzzTipoClienteDao();
                TaGzzTipoCliente tcl= new TaGzzTipoCliente();
                tcl.setTipCliDet(regDet);
                if(op=='A'){
                tcl.setTipCliCod(null);
                tcl.setEstRegCod(op);
                tclDao.save(tcl);
                }
                else if(op=='C'){
                tcl.setTipCliCod(regCod);
                tcl.setEstRegCod('A');
                tclDao.update(tcl);
                }
                else{
                tcl.setTipCliCod(regCod);
                tcl.setEstRegCod('I');
                tclDao.update(tcl);
                }
                break;
            case "8":
                TaGzzTipoComprobanteDao tcrDao= new TaGzzTipoComprobanteDao();
                TaGzzTipoComprobante tcr= new TaGzzTipoComprobante();
                tcr.setTipComDet(regDet);
                if(op=='A'){
                tcr.setTipComCod(null);
                tcr.setEstRegCod(op);
                tcrDao.save(tcr);
                }
                else if(op=='C'){
                tcr.setTipComCod(regCod);
                tcr.setEstRegCod('A');
                tcrDao.update(tcr);
                }
                else{
                tcr.setTipComCod(regCod);
                tcr.setEstRegCod('I');
                tcrDao.update(tcr);
                }
                break;
            case "9":
                TaGzzTipoDescuentoDao tdesDao= new TaGzzTipoDescuentoDao();
                TaGzzTipoDescuento tdes= new TaGzzTipoDescuento();
                tdes.setTipDesDet(regDet);
                if(op=='A'){
                tdes.setTipDesCod(null);
                tdes.setEstRegCod(op);
                tdesDao.save(tdes);
                }
                else if(op=='C'){
                tdes.setTipDesCod(regCod);
                tdes.setEstRegCod('A');
                tdesDao.update(tdes);
                }
                else{
                tdes.setTipDesCod(regCod);
                tdes.setEstRegCod('I');
                tdesDao.update(tdes);
                }
                break;
            case "10":
                TaGzzTipoDestinatarioDao tdstDao= new TaGzzTipoDestinatarioDao();
                TaGzzTipoDestinatario tdst= new TaGzzTipoDestinatario();
                tdst.setTipDstDet(regDet);
                if(op=='A'){
                tdst.setTipDstCod(null);
                tdst.setEstRegCod(op);
                tdstDao.save(tdst);
                }
                else if(op=='C'){
                tdst.setTipDstCod(regCod);
                tdst.setEstRegCod('A');
                tdstDao.update(tdst);
                }
                else{
                tdst.setTipDstCod(regCod);
                tdst.setEstRegCod('I');
                tdstDao.update(tdst);
                }
                break;
            case "11":
                TaGzzTipoDevolucionDao tdevDao= new TaGzzTipoDevolucionDao();
                TaGzzTipoDevolucion tdev= new TaGzzTipoDevolucion();
                tdev.setTipDevDet(regDet);
                if(op=='A'){
                tdev.setTipDevCod(null);
                tdev.setEstRegCod(op);
                tdevDao.save(tdev);
                }
                else if(op=='C'){
                tdev.setTipDevCod(regCod);
                tdev.setEstRegCod('A');
                tdevDao.update(tdev);
                }
                else{
                tdev.setTipDevCod(regCod);
                tdev.setEstRegCod('I');
                tdevDao.update(tdev);
                }
                break;
            case "12":
                TaGzzTipoDocClienteDao tdcDao= new TaGzzTipoDocClienteDao();
                TaGzzTipoDocCliente tdc= new TaGzzTipoDocCliente();
                tdc.setTipDocCliDet(regDet);
                if(op=='A'){
                tdc.setTipDocCliCod(null);
                tdc.setEstRegCod(op);
                tdcDao.save(tdc);
                }
                else if(op=='C'){
                tdc.setTipDocCliCod(regCod);
                tdc.setEstRegCod('A');
                tdcDao.update(tdc);
                }
                else{
                tdc.setTipDocCliCod(regCod);
                tdc.setEstRegCod('I');
                tdcDao.update(tdc);
                }
                break;
            case "13":
                TaGzzTipoDocProveedorDao tdpDao= new TaGzzTipoDocProveedorDao();
                TaGzzTipoDocProveedor tdp= new TaGzzTipoDocProveedor();
                tdp.setTipDocProDet(regDet);
                if(op=='A'){
                tdp.setTipDocProCod(null);
                tdp.setEstRegCod(op);
                tdpDao.save(tdp);
                }
                else if(op=='C'){
                tdp.setTipDocProCod(regCod);
                tdp.setEstRegCod('A');
                tdpDao.update(tdp);
                }
                else{
                tdp.setTipDocProCod(regCod);
                tdp.setEstRegCod('I');
                tdpDao.update(tdp);
                }
                break;
            case "14":
                TaGzzTipoDocTransportistaDao tdtDao= new TaGzzTipoDocTransportistaDao();
                TaGzzTipoDocTransportista tdt= new TaGzzTipoDocTransportista();
                tdt.setTipDocTraDet(regDet);
                if(op=='A'){
                tdt.setTipDocTraCod(null);
                tdt.setEstRegCod(op);
                tdtDao.save(tdt);
                }
                else if(op=='C'){
                tdt.setTipDocTraCod(regCod);
                tdt.setEstRegCod('A');
                tdtDao.update(tdt);
                }
                else{
                tdt.setTipDocTraCod(regCod);
                tdt.setEstRegCod('I');
                tdtDao.update(tdt);
                }
                break;
            case "15":
                TaGzzTipoDocUsuarioDao tduDao= new TaGzzTipoDocUsuarioDao();
                TaGzzTipoDocUsuario tdu= new TaGzzTipoDocUsuario();
                tdu.setTipDocUsuDet(regDet);
                if(op=='A'){
                tdu.setTipDocUsuCod(null);
                tdu.setEstRegCod(op);
                tduDao.save(tdu);
                }
                else if(op=='C'){
                tdu.setTipDocUsuCod(regCod);
                tdu.setEstRegCod('A');
                tduDao.update(tdu);
                }
                else{
                tdu.setTipDocUsuCod(regCod);
                tdu.setEstRegCod('I');
                tduDao.update(tdu);
                }
                break;
            case "16":
                TaGzzTipoPagoFacturaDao tpfDao= new TaGzzTipoPagoFacturaDao();
                TaGzzTipoPagoFactura tpf= new TaGzzTipoPagoFactura();
                tpf.setTipPagDet(regDet);
                if(op=='A'){
                tpf.setTipPagCod(null);
                tpf.setEstRegCod(op);
                tpfDao.save(tpf);
                }
                else if(op=='C'){
                tpf.setTipPagCod(regCod);
                tpf.setEstRegCod('A');
                tpfDao.update(tpf);
                }
                tpf.setTipPagCod(regCod);
                tpf.setEstRegCod('I');
                tpfDao.update(tpf);
                break;
            case "17":
                TaGzzTipoUniTransporteDao tutDao= new TaGzzTipoUniTransporteDao();
                TaGzzTipoUniTransporte tut= new TaGzzTipoUniTransporte();
                tut.setTipUniTraDet(regDet);
                if(op=='A'){
                tut.setTipUniTraCod(null);
                tut.setEstRegCod(op);
                tutDao.save(tut);
                }
                else if(op=='C'){
                tut.setTipUniTraCod(null);
                tut.setEstRegCod('A');
                tutDao.update(tut);
                }
                else{
                tut.setTipUniTraCod(null);
                tut.setEstRegCod('I');
                tutDao.update(tut);
                }
                break;
            case "18":
                TaGzzTipoUsuarioDao tuDao= new TaGzzTipoUsuarioDao();
                TaGzzTipoUsuario tu= new TaGzzTipoUsuario();
                tu.setTipUsuDet(regDet);
                if(op=='A'){
                tu.setTipUsuCod(null);
                tu.setEstRegCod(op);
                tuDao.save(tu);
                }
                else if(op=='C'){
                tu.setTipUsuCod(regCod);
                tu.setEstRegCod('A');
                tuDao.update(tu);
                }
                else{
                tu.setTipUsuCod(regCod);
                tu.setEstRegCod('I');
                tuDao.update(tu);
                }
                break;
            case "19":
                TaGzzUnidadMedDao umDao= new TaGzzUnidadMedDao();
                TaGzzUnidadMed um= new TaGzzUnidadMed();
                um.setUniMedDet(regDet);
                if(op=='A'){
                um.setUniMedCod(null);
                um.setEstRegCod(op);
                umDao.save(um);
                }
                else if(op=='C'){
                um.setUniMedCod(regCod);
                um.setEstRegCod('A');
                umDao.update(um);
                }
                else{
                um.setUniMedCod(regCod);
                um.setEstRegCod('I');
                umDao.update(um);
                }
                break;
            case "20":
                TaGzzCanalClienteDao ccDao= new TaGzzCanalClienteDao();
                TaGzzCanalCliente cc= new TaGzzCanalCliente();
                cc.setCanCliDet(regDet);
                if(op=='A'){
                cc.setCanCliCod(null);
                cc.setEstRegCod(op);
                ccDao.save(cc);
                }
                else if(op=='C'){
                cc.setCanCliCod(regCod);
                cc.setEstRegCod('A');
                ccDao.update(cc);
                }
                else{
                cc.setCanCliCod(regCod);
                cc.setEstRegCod('I');
                ccDao.update(cc);
                }
                break;
            case "21":
                TaGzzTipoFallaProductoDao tfpDao= new TaGzzTipoFallaProductoDao();
                TaGzzTipoFallaProducto tfp= new TaGzzTipoFallaProducto();
                tfp.setTipFallProDet(regDet);
                if(op=='A'){
                tfp.setTipFallProCod(null);
                tfp.setEstRegCod(op);
                tfpDao.save(tfp);
                }
                else if(op=='C'){
                tfp.setTipFallProCod(regCod);
                tfp.setEstRegCod('A');
                tfpDao.update(tfp);
                }
                else{
                tfp.setTipFallProCod(regCod);
                tfp.setEstRegCod('I');
                tfpDao.update(tfp);
                }
                break;
        }
    }
}