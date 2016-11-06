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
                switch(sel){
                    case "0":
                        TaGzzBancoDao bDao= new TaGzzBancoDao();
                        TaGzzBanco b = new TaGzzBanco();
                        b.setBanCod(null);
                        b.setBanDet(regDet);
                        b.setEstRegCod('A');
                        bDao.save(b);
                        break;
                    case "1":
                        TaGzzEstadoCivilDao ecDao= new TaGzzEstadoCivilDao();
                        TaGzzEstadoCivil ec= new TaGzzEstadoCivil();
                        ec.setEstCivCod(null);
                        ec.setEstCivDet(regDet);
                        ec.setEstRegCod('A');
                        ecDao.save(ec);
                        break;
                    case "2":
                        TaGzzEstadoFacturaDao efDao= new TaGzzEstadoFacturaDao();
                        TaGzzEstadoFactura ef= new TaGzzEstadoFactura();
                        ef.setEstFacCod(null);
                        ef.setEstFacDet(regDet);
                        ef.setEstRegCod('A');
                        efDao.save(ef);
                        break;
                    case "3":
                        TaGzzEstadoUniTransporteDao eutDao= new TaGzzEstadoUniTransporteDao();
                        TaGzzEstadoUniTransporte eut= new TaGzzEstadoUniTransporte();
                        eut.setEstUniTraCod(null);
                        eut.setEstUniTraDet(regDet);
                        eut.setEstRegCod('A');
                        eutDao.save(eut);
                        break;
                    case "4":
                        TaGzzMetodoPagoFacturaDao mpfDao= new TaGzzMetodoPagoFacturaDao();
                        TaGzzMetodoPagoFactura mpf= new TaGzzMetodoPagoFactura();
                        mpf.setMetPagCod(null);
                        mpf.setMetPagDet(regDet);
                        mpf.setEstRegCod('A');
                        mpfDao.save(mpf);
                        break;
                    case "5":
                        TaGzzMonedaDao mDao= new TaGzzMonedaDao();
                        TaGzzMoneda m= new TaGzzMoneda();
                        m.setMonCod(null);
                        m.setMonDet(regDet);
                        m.setEstRegCod('A');
                        mDao.save(m);
                        break;
                    case "6":
                        TaGzzMotivoTrasladoDao mtDao= new TaGzzMotivoTrasladoDao();
                        TaGzzMotivoTraslado mt= new TaGzzMotivoTraslado();
                        mt.setMotTraCod(null);
                        mt.setMotTraDet(regDet);
                        mt.setEstRegCod('A');
                        mtDao.save(mt);
                        break;
                    case "7":
                        TaGzzTipoClienteDao tclDao= new TaGzzTipoClienteDao();
                        TaGzzTipoCliente tcl= new TaGzzTipoCliente();
                        tcl.setTipCliCod(null);
                        tcl.setTipCliDet(regDet);
                        tcl.setEstRegCod('A');
                        tclDao.save(tcl);
                        break;
                    case "8":
                        TaGzzTipoComprobanteDao tcrDao= new TaGzzTipoComprobanteDao();
                        TaGzzTipoComprobante tcr= new TaGzzTipoComprobante();
                        tcr.setTipComCod(null);
                        tcr.setTipComDet(regDet);
                        tcr.setEstRegCod('A');
                        tcrDao.save(tcr);
                        break;
                    case "9":
                        TaGzzTipoDescuentoDao tdesDao= new TaGzzTipoDescuentoDao();
                        TaGzzTipoDescuento tdes= new TaGzzTipoDescuento();
                        tdes.setTipDesCod(null);
                        tdes.setTipDesDet(regDet);
                        tdes.setEstRegCod('A');
                        tdesDao.save(tdes);
                        break;
                    case "10":
                        TaGzzTipoDestinatarioDao tdstDao= new TaGzzTipoDestinatarioDao();
                        TaGzzTipoDestinatario tdst= new TaGzzTipoDestinatario();
                        tdst.setTipDstCod(null);
                        tdst.setTipDstDet(regDet);
                        tdst.setEstRegCod('A');
                        tdstDao.save(tdst);
                        break;
                    case "11":
                        TaGzzTipoDevolucionDao tdevDao= new TaGzzTipoDevolucionDao();
                        TaGzzTipoDevolucion tdev= new TaGzzTipoDevolucion();
                        tdev.setTipDevCod(null);
                        tdev.setTipDevDet(regDet);
                        tdev.setEstRegCod('A');
                        tdevDao.save(tdev);
                        break;
                    case "12":
                        TaGzzTipoDocClienteDao tdcDao= new TaGzzTipoDocClienteDao();
                        TaGzzTipoDocCliente tdc= new TaGzzTipoDocCliente();
                        tdc.setTipDocCliCod(null);
                        tdc.setTipDocCliDet(regDet);
                        tdc.setEstRegCod('A');
                        tdcDao.save(tdc);
                        break;
                    case "13":
                        TaGzzTipoDocProveedorDao tdpDao= new TaGzzTipoDocProveedorDao();
                        TaGzzTipoDocProveedor tdp= new TaGzzTipoDocProveedor();
                        tdp.setTipDocProCod(null);
                        tdp.setTipDocProDet(regDet);
                        tdp.setEstRegCod('A');
                        tdpDao.save(tdp);
                        break;
                    case "14":
                        TaGzzTipoDocTransportistaDao tdtDao= new TaGzzTipoDocTransportistaDao();
                        TaGzzTipoDocTransportista tdt= new TaGzzTipoDocTransportista();
                        tdt.setTipDocTraCod(null);
                        tdt.setTipDocTraDet(regDet);
                        tdt.setEstRegCod('A');
                        tdtDao.save(tdt);
                        break;
                    case "15":
                        TaGzzTipoDocUsuarioDao tduDao= new TaGzzTipoDocUsuarioDao();
                        TaGzzTipoDocUsuario tdu= new TaGzzTipoDocUsuario();
                        tdu.setTipDocUsuCod(null);
                        tdu.setTipDocUsuDet(regDet);
                        tdu.setEstRegCod('A');
                        tduDao.save(tdu);
                        break;
                    case "16":
                        TaGzzTipoPagoFacturaDao tpfDao= new TaGzzTipoPagoFacturaDao();
                        TaGzzTipoPagoFactura tpf= new TaGzzTipoPagoFactura();
                        tpf.setTipPagCod(null);
                        tpf.setTipPagDet(regDet);
                        tpf.setEstRegCod('A');
                        tpfDao.save(tpf);
                        break;
                    case "17":
                        TaGzzTipoUniTransporteDao tutDao= new TaGzzTipoUniTransporteDao();
                        TaGzzTipoUniTransporte tut= new TaGzzTipoUniTransporte();
                        tut.setTipUniTraCod(null);
                        tut.setTipUniTraDet(regDet);
                        tut.setEstRegCod('A');
                        tutDao.save(tut);
                        break;
                    case "18":
                        TaGzzTipoUsuarioDao tuDao= new TaGzzTipoUsuarioDao();
                        TaGzzTipoUsuario tu= new TaGzzTipoUsuario();
                        tu.setTipUsuCod(null);
                        tu.setTipUsuDet(regDet);
                        tu.setEstRegCod('A');
                        tuDao.save(tu);
                        break;
                    case "19":
                        TaGzzUnidadMedDao umDao= new TaGzzUnidadMedDao();
                        TaGzzUnidadMed um= new TaGzzUnidadMed();
                        um.setUniMedCod(null);
                        um.setUniMedDet(regDet);
                        um.setEstRegCod('A');
                        umDao.save(um);
                        break;
                }
                break;
            case "update":
                regCod = Integer.parseInt(request.getParameter("regTabCod"));
                switch(sel){
                    case "0":
                        TaGzzBancoDao bDao= new TaGzzBancoDao();
                        TaGzzBanco b = new TaGzzBanco();
                        b.setBanCod(regCod);
                        b.setBanDet(regDet);
                        b.setEstRegCod('A');
                        bDao.update(b);
                        break;
                    case "1":
                        TaGzzEstadoCivilDao ecDao= new TaGzzEstadoCivilDao();
                        TaGzzEstadoCivil ec= new TaGzzEstadoCivil();
                        ec.setEstCivCod(regCod);
                        ec.setEstCivDet(regDet);
                        ec.setEstRegCod('A');
                        ecDao.update(ec);
                        break;
                    case "2":
                        TaGzzEstadoFacturaDao efDao= new TaGzzEstadoFacturaDao();
                        TaGzzEstadoFactura ef= new TaGzzEstadoFactura();
                        ef.setEstFacCod(regCod);
                        ef.setEstFacDet(regDet);
                        ef.setEstRegCod('A');
                        efDao.update(ef);
                        break;
                    case "3":
                        TaGzzEstadoUniTransporteDao eutDao= new TaGzzEstadoUniTransporteDao();
                        TaGzzEstadoUniTransporte eut= new TaGzzEstadoUniTransporte();
                        eut.setEstUniTraCod(regCod);
                        eut.setEstUniTraDet(regDet);
                        eut.setEstRegCod('A');
                        eutDao.update(eut);
                        break;
                    case "4":
                        TaGzzMetodoPagoFacturaDao mpfDao= new TaGzzMetodoPagoFacturaDao();
                        TaGzzMetodoPagoFactura mpf= new TaGzzMetodoPagoFactura();
                        mpf.setMetPagCod(regCod);
                        mpf.setMetPagDet(regDet);
                        mpf.setEstRegCod('A');
                        mpfDao.update(mpf);
                        break;
                    case "5":
                        TaGzzMonedaDao mDao= new TaGzzMonedaDao();
                        TaGzzMoneda m= new TaGzzMoneda();
                        m.setMonCod(regCod);
                        m.setMonDet(regDet);
                        m.setEstRegCod('A');
                        mDao.update(m);
                        break;
                    case "6":
                        TaGzzMotivoTrasladoDao mtDao= new TaGzzMotivoTrasladoDao();
                        TaGzzMotivoTraslado mt= new TaGzzMotivoTraslado();
                        mt.setMotTraCod(regCod);
                        mt.setMotTraDet(regDet);
                        mt.setEstRegCod('A');
                        mtDao.update(mt);
                        break;
                    case "7":
                        TaGzzTipoClienteDao tclDao= new TaGzzTipoClienteDao();
                        TaGzzTipoCliente tcl= new TaGzzTipoCliente();
                        tcl.setTipCliCod(regCod);
                        tcl.setTipCliDet(regDet);
                        tcl.setEstRegCod('A');
                        tclDao.update(tcl);
                        break;
                    case "8":
                        TaGzzTipoComprobanteDao tcrDao= new TaGzzTipoComprobanteDao();
                        TaGzzTipoComprobante tcr= new TaGzzTipoComprobante();
                        tcr.setTipComCod(regCod);
                        tcr.setTipComDet(regDet);
                        tcr.setEstRegCod('A');
                        tcrDao.update(tcr);
                        break;
                    case "9":
                        TaGzzTipoDescuentoDao tdesDao= new TaGzzTipoDescuentoDao();
                        TaGzzTipoDescuento tdes= new TaGzzTipoDescuento();
                        tdes.setTipDesCod(regCod);
                        tdes.setTipDesDet(regDet);
                        tdes.setEstRegCod('A');
                        tdesDao.update(tdes);
                        break;
                    case "10":
                        TaGzzTipoDestinatarioDao tdstDao= new TaGzzTipoDestinatarioDao();
                        TaGzzTipoDestinatario tdst= new TaGzzTipoDestinatario();
                        tdst.setTipDstCod(regCod);
                        tdst.setTipDstDet(regDet);
                        tdst.setEstRegCod('A');
                        tdstDao.update(tdst);
                        break;
                    case "11":
                        TaGzzTipoDevolucionDao tdevDao= new TaGzzTipoDevolucionDao();
                        TaGzzTipoDevolucion tdev= new TaGzzTipoDevolucion();
                        tdev.setTipDevCod(regCod);
                        tdev.setTipDevDet(regDet);
                        tdev.setEstRegCod('A');
                        tdevDao.update(tdev);
                        break;
                    case "12":
                        TaGzzTipoDocClienteDao tdcDao= new TaGzzTipoDocClienteDao();
                        TaGzzTipoDocCliente tdc= new TaGzzTipoDocCliente();
                        tdc.setTipDocCliCod(regCod);
                        tdc.setTipDocCliDet(regDet);
                        tdc.setEstRegCod('A');
                        tdcDao.update(tdc);
                        break;
                    case "13":
                        TaGzzTipoDocProveedorDao tdpDao= new TaGzzTipoDocProveedorDao();
                        TaGzzTipoDocProveedor tdp= new TaGzzTipoDocProveedor();
                        tdp.setTipDocProCod(regCod);
                        tdp.setTipDocProDet(regDet);
                        tdp.setEstRegCod('A');
                        tdpDao.update(tdp);
                        break;
                    case "14":
                        TaGzzTipoDocTransportistaDao tdtDao= new TaGzzTipoDocTransportistaDao();
                        TaGzzTipoDocTransportista tdt= new TaGzzTipoDocTransportista();
                        tdt.setTipDocTraCod(regCod);
                        tdt.setTipDocTraDet(regDet);
                        tdt.setEstRegCod('A');
                        tdtDao.update(tdt);
                        break;
                    case "15":
                        TaGzzTipoDocUsuarioDao tduDao= new TaGzzTipoDocUsuarioDao();
                        TaGzzTipoDocUsuario tdu= new TaGzzTipoDocUsuario();
                        tdu.setTipDocUsuCod(regCod);
                        tdu.setTipDocUsuDet(regDet);
                        tdu.setEstRegCod('A');
                        tduDao.update(tdu);
                        break;
                    case "16":
                        TaGzzTipoPagoFacturaDao tpfDao= new TaGzzTipoPagoFacturaDao();
                        TaGzzTipoPagoFactura tpf= new TaGzzTipoPagoFactura();
                        tpf.setTipPagCod(regCod);
                        tpf.setTipPagDet(regDet);
                        tpf.setEstRegCod('A');
                        tpfDao.update(tpf);
                        break;
                    case "17":
                        TaGzzTipoUniTransporteDao tutDao= new TaGzzTipoUniTransporteDao();
                        TaGzzTipoUniTransporte tut= new TaGzzTipoUniTransporte();
                        tut.setTipUniTraCod(regCod);
                        tut.setTipUniTraDet(regDet);
                        tut.setEstRegCod('A');
                        tutDao.update(tut);
                        break;
                    case "18":
                        TaGzzTipoUsuarioDao tuDao= new TaGzzTipoUsuarioDao();
                        TaGzzTipoUsuario tu= new TaGzzTipoUsuario();
                        tu.setTipUsuCod(regCod);
                        tu.setTipUsuDet(regDet);
                        tu.setEstRegCod('A');
                        tuDao.update(tu);
                        break;
                    case "19":
                        TaGzzUnidadMedDao umDao= new TaGzzUnidadMedDao();
                        TaGzzUnidadMed um= new TaGzzUnidadMed();
                        um.setUniMedCod(regCod);
                        um.setUniMedDet(regDet);
                        um.setEstRegCod('A');
                        umDao.update(um);
                        break;
                }
                break;
            case "delete":
                regCod = Integer.parseInt(request.getParameter("regTabCod"));
                switch(sel){
                    case "0":
                        TaGzzBancoDao bDao= new TaGzzBancoDao();
                        TaGzzBanco b = new TaGzzBanco();
                        b.setBanCod(regCod);
                        b.setBanDet(regDet);
                        b.setEstRegCod('I');
                        bDao.update(b);
                        break;
                    case "1":
                        TaGzzEstadoCivilDao ecDao= new TaGzzEstadoCivilDao();
                        TaGzzEstadoCivil ec= new TaGzzEstadoCivil();
                        ec.setEstCivCod(regCod);
                        ec.setEstCivDet(regDet);
                        ec.setEstRegCod('I');
                        ecDao.update(ec);
                        break;
                    case "2":
                        TaGzzEstadoFacturaDao efDao= new TaGzzEstadoFacturaDao();
                        TaGzzEstadoFactura ef= new TaGzzEstadoFactura();
                        ef.setEstFacCod(regCod);
                        ef.setEstFacDet(regDet);
                        ef.setEstRegCod('I');
                        efDao.update(ef);
                        break;
                    case "3":
                        TaGzzEstadoUniTransporteDao eutDao= new TaGzzEstadoUniTransporteDao();
                        TaGzzEstadoUniTransporte eut= new TaGzzEstadoUniTransporte();
                        eut.setEstUniTraCod(regCod);
                        eut.setEstUniTraDet(regDet);
                        eut.setEstRegCod('I');
                        eutDao.update(eut);
                        break;
                    case "4":
                        TaGzzMetodoPagoFacturaDao mpfDao= new TaGzzMetodoPagoFacturaDao();
                        TaGzzMetodoPagoFactura mpf= new TaGzzMetodoPagoFactura();
                        mpf.setMetPagCod(regCod);
                        mpf.setMetPagDet(regDet);
                        mpf.setEstRegCod('I');
                        mpfDao.update(mpf);
                        break;
                    case "5":
                        TaGzzMonedaDao mDao= new TaGzzMonedaDao();
                        TaGzzMoneda m= new TaGzzMoneda();
                        m.setMonCod(regCod);
                        m.setMonDet(regDet);
                        m.setEstRegCod('I');
                        mDao.update(m);
                        break;
                    case "6":
                        TaGzzMotivoTrasladoDao mtDao= new TaGzzMotivoTrasladoDao();
                        TaGzzMotivoTraslado mt= new TaGzzMotivoTraslado();
                        mt.setMotTraCod(regCod);
                        mt.setMotTraDet(regDet);
                        mt.setEstRegCod('I');
                        mtDao.update(mt);
                        break;
                    case "7":
                        TaGzzTipoClienteDao tclDao= new TaGzzTipoClienteDao();
                        TaGzzTipoCliente tcl= new TaGzzTipoCliente();
                        tcl.setTipCliCod(regCod);
                        tcl.setTipCliDet(regDet);
                        tcl.setEstRegCod('I');
                        tclDao.update(tcl);
                        break;
                    case "8":
                        TaGzzTipoComprobanteDao tcrDao= new TaGzzTipoComprobanteDao();
                        TaGzzTipoComprobante tcr= new TaGzzTipoComprobante();
                        tcr.setTipComCod(regCod);
                        tcr.setTipComDet(regDet);
                        tcr.setEstRegCod('I');
                        tcrDao.update(tcr);
                        break;
                    case "9":
                        TaGzzTipoDescuentoDao tdesDao= new TaGzzTipoDescuentoDao();
                        TaGzzTipoDescuento tdes= new TaGzzTipoDescuento();
                        tdes.setTipDesCod(regCod);
                        tdes.setTipDesDet(regDet);
                        tdes.setEstRegCod('I');
                        tdesDao.update(tdes);
                        break;
                    case "10":
                        TaGzzTipoDestinatarioDao tdstDao= new TaGzzTipoDestinatarioDao();
                        TaGzzTipoDestinatario tdst= new TaGzzTipoDestinatario();
                        tdst.setTipDstCod(regCod);
                        tdst.setTipDstDet(regDet);
                        tdst.setEstRegCod('I');
                        tdstDao.update(tdst);
                        break;
                    case "11":
                        TaGzzTipoDevolucionDao tdevDao= new TaGzzTipoDevolucionDao();
                        TaGzzTipoDevolucion tdev= new TaGzzTipoDevolucion();
                        tdev.setTipDevCod(regCod);
                        tdev.setTipDevDet(regDet);
                        tdev.setEstRegCod('I');
                        tdevDao.update(tdev);
                        break;
                    case "12":
                        TaGzzTipoDocClienteDao tdcDao= new TaGzzTipoDocClienteDao();
                        TaGzzTipoDocCliente tdc= new TaGzzTipoDocCliente();
                        tdc.setTipDocCliCod(regCod);
                        tdc.setTipDocCliDet(regDet);
                        tdc.setEstRegCod('I');
                        tdcDao.update(tdc);
                        break;
                    case "13":
                        TaGzzTipoDocProveedorDao tdpDao= new TaGzzTipoDocProveedorDao();
                        TaGzzTipoDocProveedor tdp= new TaGzzTipoDocProveedor();
                        tdp.setTipDocProCod(regCod);
                        tdp.setTipDocProDet(regDet);
                        tdp.setEstRegCod('I');
                        tdpDao.update(tdp);
                        break;
                    case "14":
                        TaGzzTipoDocTransportistaDao tdtDao= new TaGzzTipoDocTransportistaDao();
                        TaGzzTipoDocTransportista tdt= new TaGzzTipoDocTransportista();
                        tdt.setTipDocTraCod(regCod);
                        tdt.setTipDocTraDet(regDet);
                        tdt.setEstRegCod('I');
                        tdtDao.update(tdt);
                        break;
                    case "15":
                        TaGzzTipoDocUsuarioDao tduDao= new TaGzzTipoDocUsuarioDao();
                        TaGzzTipoDocUsuario tdu= new TaGzzTipoDocUsuario();
                        tdu.setTipDocUsuCod(regCod);
                        tdu.setTipDocUsuDet(regDet);
                        tdu.setEstRegCod('I');
                        tduDao.update(tdu);
                        break;
                    case "16":
                        TaGzzTipoPagoFacturaDao tpfDao= new TaGzzTipoPagoFacturaDao();
                        TaGzzTipoPagoFactura tpf= new TaGzzTipoPagoFactura();
                        tpf.setTipPagCod(regCod);
                        tpf.setTipPagDet(regDet);
                        tpf.setEstRegCod('I');
                        tpfDao.update(tpf);
                        break;
                    case "17":
                        TaGzzTipoUniTransporteDao tutDao= new TaGzzTipoUniTransporteDao();
                        TaGzzTipoUniTransporte tut= new TaGzzTipoUniTransporte();
                        tut.setTipUniTraCod(regCod);
                        tut.setTipUniTraDet(regDet);
                        tut.setEstRegCod('I');
                        tutDao.update(tut);
                        break;
                    case "18":
                        TaGzzTipoUsuarioDao tuDao= new TaGzzTipoUsuarioDao();
                        TaGzzTipoUsuario tu= new TaGzzTipoUsuario();
                        tu.setTipUsuCod(regCod);
                        tu.setTipUsuDet(regDet);
                        tu.setEstRegCod('I');
                        tuDao.update(tu);
                        break;
                    case "19":
                        TaGzzUnidadMedDao umDao= new TaGzzUnidadMedDao();
                        TaGzzUnidadMed um= new TaGzzUnidadMed();
                        um.setUniMedCod(regCod);
                        um.setUniMedDet(regDet);
                        um.setEstRegCod('I');
                        umDao.update(um);
                        break;
                }
                break;
        }
        
        response.sendRedirect(request.getContextPath() + "/secured/configuracion/tablasGenerales");
    }
}