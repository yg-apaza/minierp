<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<%@ taglib prefix='cc' uri='http://java.sun.com/jsp/jstl/core' %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>Ventas - Factura</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <form id="formLote" role="form" action="" method="post">
            <div class="panel-body">
                <div class="form-group">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">Factura de Venta</h1>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-2">
                            <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                                <a href="${pageContext.request.contextPath}/secured/ventas/factura/addFactura" class="btn btn-success">Crear Factura <i class="fa fa-plus"></i></a>
                                </cc:if>
                        </div>
                        <div class="col-md-3">
                            <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                                <button type="button" id="guiaTranportista" class="btn btn-primary btn-block">Generar Guías de Remisión</button>
                            </cc:if>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group input-group" >
                                <span class="input-group-addon">Imprimir:</span>
                                <select class="form-control" name="report" id="report">
                                    <option value="factura">Factura</option>
                                    <option value="boleta">Boleta</option>
                                    <option value="guiaRemision">Guía de Remisión</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-1">
                            <button type="button" id="imprimir" class="btn btn-primary btn-success"><i class="fa fa-print"></i></button>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group input-group" >
                                <span class="input-group-addon">Flujo Efectivo:</span>
                                <a  href="${pageContext.request.contextPath}/secured/general/reporte?type=pdf&&report=flujoefectivo&&jdbc=true&&key=null&&value=null" class="btn btn-danger" >
                                    <i class="fa fa-file-pdf-o"></i>
                                </a>
                                <a  href="${pageContext.request.contextPath}/secured/general/reporte?type=doc&&report=flujoefectivo&&jdbc=true&&key=null&&value=null" class="btn  btn-primary" >
                                    <i class="fa fa-file-word-o"></i>
                                </a>
                            </div>
                        </div>
                    </div><br>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="table-responsive">    
                                <table class="table table-striped table-bordered table-hover" id="tablePurchases">
                                    <thead>
                                        <tr>
                                            <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                                                <th style="text-align: center"></th>
                                                </cc:if>
                                            <th style="text-align: center">Código</th>
                                            <th style="text-align: center">F/B</th>
                                            <th style="text-align: center">Cliente</th>
                                            <th style="text-align: center">Vendedor</th>
                                            <th style="text-align: center">Fecha</th>
                                            <th style="text-align: center">Valor Neto</th>
                                            <th style="text-align: center">I.G.V.</th>
                                            <th style="text-align: center">Total</th>
                                            <th style="text-align: center">Vista</th>
                                                <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                                                <th>Dev</th>
                                                </cc:if>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${facturasVenta}" var="c">
                                            <tr>
                                                <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                                                    <td width="3%" align="center"><input type="checkbox" name="codigos" value="${c.facVenCabCod}"></td>
                                                    </cc:if>
                                                <td> ${c.facVenCabCod}</td>
                                                <td> ${c.facVenCabModVen}</td>
                                                <td> ${c.enP1mCliente.cliNom} ${c.enP1mCliente.cliApePat}</td>
                                                <td> ${c.enP1mUsuario.usuNom} ${c.enP1mUsuario.usuApePat}</td>
                                                <td> ${c.facVenCabFecEmi}</td>
                                                <td> ${c.taGzzMoneda.monSim} ${c.facVenCabTot}</td>
                                                <td> ${c.taGzzMoneda.monSim} ${c.facVenCabSubTot}</td>
                                                <td> ${c.taGzzMoneda.monSim} <fmt:formatNumber type="number" 
                                                                  minFractionDigits="2" 
                                                                  maxFractionDigits="2" 
                                                                  value="${c.facVenCabTot + c.facVenCabSubTot}" /> 
                                                </td>
                                                <td>
                                                    <a onclick='viewSaleBill("${c.facVenCabCod}")' title="Vista Detallada de Factura de Venta">
                                                        <i class="fa fa-list-alt fa-lg" style="color: black;"></i>
                                                    </a> 
                                                    <a onclick='viewReferralGuide("${c.facVenCabCod}")' title="Vista Detallada de Guía R. Remitente">
                                                        <i class="fa fa-book fa-lg" style="color: black;"></i>
                                                    </a>
                                                    <a onclick='viewCarrierGuide("${c.facVenCabCod}")' title="Vista Detallada de Guía R. Transportista">
                                                        <i class="fa fa-truck fa-lg" style="color: black;"></i>
                                                    </a>
                                                </td>
                                                <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                                                    <td>
                                                        <a onclick='makeDoRefund("${c.facVenCabCod}", "partial")' title="Devolucion Parcial">
                                                            <i class="fa fa-wrench fa-lg" style="color: black;"></i>
                                                        </a>
                                                        <a onclick='makeDoRefund("${c.facVenCabCod}", "total")' title="Devolucion Total">
                                                            <i class="fa fa-trash fa-lg" style="color: black;"></i>
                                                        </a>
                                                    </td>
                                                </cc:if>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>  
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-4">
                            <a href="${pageContext.request.contextPath}/secured/general/reporte?type=pdf&&report=registroventas&&jdbc=false&&key=null&&value=null" class="btn btn-outline btn-danger">
                                <i class="fa fa-file-pdf-o"></i>
                                Descargar Registro [PDF]
                            </a>
                        </div>
                        <div class="col-lg-4"></div>        
                    </div>
                </div>
            </div>
            <div id="impresionLotesModal" class="modal fade">
                <div class="modal-dialog modal-sm">
                    <div class="modal-content" style="overflow-y: auto">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Impresión</h4>
                        </div>
                        <div class="modal-body">
                            <p align="center">¿Desea continuar descargando el archivo de impresión?</p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-outline btn-danger" data-dismiss="modal"> Cancelar </button>
                            <button type="submit" class="btn btn-outline btn-success"> Imprimir </button>
                        </div>
                    </div>              
                </div>
            </div>
            <div id="guiaTransportistaModal" class="modal fade">
                <div class="modal-dialog modal-md">
                    <div class="modal-content" style="overflow-y: auto">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Guía de Transportista</h4>
                        </div>
                        <div class="modal-body">
                            <!-- inputs -->
                            <div class="col-xs-12 col-md-12">
                                <div class="form-group input-group">
                                    <span class="input-group-addon">Código de Guía Transportista</span>
                                    <input type="text" class="form-control" id="guiTraLotTraNum" name="guiTraLotTraNum">
                                    <span class="input-group-addon"><i class="fa fa-file-text-o"></i></span>
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-12">
                                <div class="form-group input-group">
                                    <span class="input-group-addon">Remitente(Empresa)</span>
                                    <input type="text" class="form-control" value="${remitente}" readonly>
                                    <span class="input-group-addon"><i class="fa fa-building"></i></span>
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-12">
                                <div class="form-group input-group">
                                    <span class="input-group-addon">Destinatario(Main Cliente)</span>
                                    <select class="form-control" name="guiTraMainCli">
                                        <c:forEach items="${clientes}" var="t">
                                            <option value="${t.cliCod}">${t.cliNomCom}</option>
                                        </c:forEach>
                                    </select>
                                    <span class="input-group-addon"><i class="fa fa-child"></i></span>
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-12">
                                <div class="form-group input-group">
                                    <span class="input-group-addon">Transportista</span>
                                    <select class="form-control" name="guiTraLotTraDat">
                                        <c:forEach items="${transportistas}" var="t">
                                            <option value="${t.traCod}">${t.traNomCom}</option>
                                        </c:forEach>
                                    </select>
                                    <span class="input-group-addon"><i class="fa fa-truck"></i></span>
                                </div>
                            </div>      
                            <div class="col-xs-12 col-md-12">
                                <div class="form-group input-group">
                                    <span class="input-group-addon">Vehículo</span>
                                    <select class="form-control" name="guiTraLotNumPla">
                                        <c:forEach items="${unidades}" var="u">
                                            <option value="${u.uniTraCod}">${u.uniTraNumPla}</option>    
                                        </c:forEach>
                                    </select> 
                                    <span class="input-group-addon"><i class="fa fa-map-marker"></i></span>
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-12">
                                <div class="form-group input-group">
                                    <span class="input-group-addon">Ruta</span>
                                    <select class="form-control" name="guiTraLotRutDes">
                                        <c:forEach items="${rutas}" var="r">
                                            <option value="${r.catRutCod}">${r.catRutDet}</option>       
                                        </c:forEach>
                                    </select> 
                                    <span class="input-group-addon"><i class="fa fa-road"></i></span>
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-12">
                                <div class="form-group input-group">
                                    <span class="input-group-addon">Motivo de Traslado</span>
                                    <select class="form-control" name="motTraCod">
                                        <c:forEach items="${motivos}" var="m">
                                            <option value="${m.motTraCod}">${m.motTraDet}</option>       
                                        </c:forEach>
                                    </select> 
                                    <span class="input-group-addon"><i class="fa fa-road"></i></span>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-outline btn-danger" data-dismiss="modal"> Cancelar </button>
                            <button type="submit" class="btn btn-outline btn-success"> Aceptar </button>
                        </div>
                    </div>
                </div>
            </div>
        </form>
        <div id="errorMessageModal" class="modal fade">
            <div class="modal-dialog modal-sm">
                <div class="modal-content" style="overflow-y: auto">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Error</h4>
                    </div>
                    <div class="modal-body">
                        <p align="center"><span id="errorMessage"></span></p>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-success" data-dismiss="modal">Aceptar</button>                                            
                    </div>
                </div>         
            </div>
        </div>
        <div class="modal fade" id="viewSaleBill">
            <div class="modal-dialog modal-md">
                <div class="modal-content" style="overflow-y: auto">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h3 class="modal-title">Factura de Venta</h3>
                    </div>
                    <div class="modal-body">   
                        <div class="panel-body">
                            <ul class="nav nav-pills">
                                <li class="active"><a href="#general" data-toggle="tab">Información General</a></li>
                                <li><a href="#detail" data-toggle="tab">Detalle de Venta</a></li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane fade in active" id="general"><br>
                                    <div class="col-xs-12 col-md-12">
                                        <div class="col-xs-12 col-md-8">
                                            <div class="form-group input-group">
                                                <span class="input-group-addon">Factura</span>
                                                <input type="text" class="form-control" id="codFacVen" readOnly>
                                                <span class="input-group-addon"><i class="fa fa-clipboard"></i></span>
                                            </div>
                                        </div>
                                        <div class="col-xs-12 col-md-4">
                                            <div class="form-group input-group">
                                                <span class="input-group-addon">IGV</span>
                                                <input type="text" class="form-control" id="preVenCabIgv" readOnly>
                                                <span class="input-group-addon"><i class="fa fa-venus"></i></span>
                                            </div>
                                        </div>
                                        <div class="col-xs-12 col-md-12">
                                            <div class="form-group input-group">
                                                <span class="input-group-addon">Vendedor</span>
                                                <input type="text" class="form-control" id="facVenCabUsuNom" readOnly>
                                                <span class="input-group-addon"><i class="fa fa-user"></i></span>
                                            </div>
                                        </div>
                                        <div class="col-xs-12 col-md-12">
                                            <div class="form-group input-group" >
                                                <span class="input-group-addon">Cliente</span>
                                                <input type="text" class="form-control" id="facVenCabCliNomCom" readOnly>
                                                <span class="input-group-addon"><i class="fa fa-shopping-cart"></i></span>
                                            </div>
                                        </div>
                                        <div class="col-xs-12 col-md-8">
                                            <div class="form-group input-group" >
                                                <span class="input-group-addon">Descuento</span>
                                                <input type="text" class="form-control" id="tipDesDet" readOnly>
                                                <span class="input-group-addon"><i class="fa fa-arrow-down"></i></span>
                                            </div>
                                        </div>
                                        <div class="col-xs-12 col-md-4">
                                            <div class="form-group input-group" >
                                                <span class="input-group-addon">%</span>
                                                <input type="text" class="form-control" id="facVenPorDes" readOnly>
                                                <span class="input-group-addon"><i class="fa fa-venus"></i></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="detail"><br>
                                    <div class="col-xs-12 col-md-12">
                                        <div class="table-responsive">
                                            <table width="100%" class="table table-striped table-bordered table-hover" id="facVenDetPro">
                                                <thead align="center">
                                                    <tr >
                                                        <th>Cant.</th>
                                                        <th>Descripción</th>
                                                        <th>Precio</th>
                                                        <th>Importe</th>
                                                    </tr>
                                                </thead>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-success" data-dismiss="modal">Aceptar</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="viewReferralGuide">
            <div class="modal-dialog">
                <div class="modal-content" style="overflow-y: auto">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h3 class="modal-title">Guía de Remisión Remitente</h3>
                    </div>
                    <div class="modal-body">
                        <div class="panel-body">
                            <ul class="nav nav-pills">
                                <li class="active"><a href="#generalGuiRem" data-toggle="tab">Información General</a></li>
                                <li><a href="#detailGuiRem" data-toggle="tab">Detalle de Guía de Remitente</a></li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane fade in active" id="generalGuiRem"><br>
                                    <div class="col-xs-12 col-md-12">
                                        <div class="form-group input-group">
                                            <span class="input-group-addon">Número de Guía de Remitente</span>
                                            <input type="text" class="form-control" id="guiRemRemNum" readOnly>
                                            <span class="input-group-addon"><i class="fa fa-file-text-o"></i></span>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-md-12">
                                        <div class="form-group input-group">
                                            <span class="input-group-addon">Remitente(Empresa)</span>
                                            <input type="text" class="form-control" id="guiRemEmpDes" readOnly>
                                            <span class="input-group-addon"><i class="fa fa-building-o"></i></span>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-md-12">
                                        <div class="form-group input-group">
                                            <span class="input-group-addon">Destinatario(Cliente)</span>
                                            <input type="text" class="form-control" id="guiRemCliCod" readOnly>
                                            <span class="input-group-addon"><i class="fa fa-clipboard"></i></span>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-md-12">
                                        <div class="form-group input-group">
                                            <span class="input-group-addon">Factura Asociada</span>
                                            <input type="text" class="form-control" id="guiRemFacCod" readOnly>
                                            <span class="input-group-addon"><i class="fa fa-clipboard"></i></span>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-md-12">
                                        <div class="form-group input-group">
                                            <span class="input-group-addon">Motivo de Traslado</span>
                                            <input type="text" class="form-control" id="guiRemMotTra" readOnly>
                                            <span class="input-group-addon"><i class="fa fa-send-o"></i></span>
                                        </div>
                                    </div>                            
                                </div>
                                <div class="tab-pane fade" id="detailGuiRem"><br>
                                    <div class="col-xs-12 col-md-12">
                                        <div class="table-responsive">
                                            <table width="100%" class="table table-striped table-bordered table-hover" id="GuiRemDetPro">
                                                <thead align="center">
                                                    <tr >
                                                        <th>Cant.</th>
                                                        <th>Descripción</th>
                                                        <th>Precio</th>
                                                        <th>Importe</th>
                                                    </tr>
                                                </thead>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-success" data-dismiss="modal">Aceptar</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="addReferralGuide">
            <div class="modal-dialog modal-md">
                <form id="addReferralGuideForm" role="form" action="${pageContext.request.contextPath}/secured/ventas/addReferralGuide" method="post">
                    <div class="modal-content" style="overflow-y: auto">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title">Guía de Remisión</h4>
                        </div>
                        <div class="modal-body">
                            <div class="col-md-12 form-group input-group">
                                <div class="col-xs-12 col-md-12">
                                    <div class="form-group input-group">
                                        <span class="input-group-addon">Empresa</span>
                                        <input type="text" class="form-control" id="guiRemAddEmpDes" name="guiRemEmpDes" readOnly>
                                        <span class="input-group-addon"><i class="fa fa-building-o"></i></span>
                                    </div>
                                </div>
                                <div class="col-xs-12 col-md-6">
                                    <div class="form-group input-group">
                                        <span class="input-group-addon">Factura Ven.</span>
                                        <input type="text" class="form-control" id="guiRemAddFacCod" name="guiRemFacCod" readOnly>
                                        <span class="input-group-addon"><i class="fa fa-clipboard"></i></span>
                                    </div>
                                </div>
                                <div class="col-xs-12 col-md-6">
                                    <div class="form-group input-group">
                                        <span class="input-group-addon">Guía de Rem.</span>
                                        <input type="text" class="form-control" id="guiRemAddRemNum" name="guiRemRemNum">
                                        <span class="input-group-addon"><i class="fa fa-file-text-o"></i></span>
                                    </div>
                                </div>
                                <div class="col-xs-12 col-md-12">
                                    <div class="form-group input-group">
                                        <span class="input-group-addon">Denominación</span>
                                        <input type="text" class="form-control" id="guiRemAddRemDen" name="guiRemRemDen">
                                        <span class="input-group-addon"><i class="fa fa-paperclip"></i></span>
                                    </div>
                                </div>
                                <div class="col-xs-12 col-md-12">
                                    <div class="form-group input-group">
                                        <span class="input-group-addon">Motivo de Traslado</span>
                                        <select class="form-control" id="guiRemAddMotTra" name="guiRemMotTra">
                                        </select> 
                                        <span class="input-group-addon"><i class="fa fa-send-o"></i></span>
                                    </div>
                                </div>                            
                                <div class="col-xs-12 col-md-12">
                                    <div class="form-group input-group">
                                        <span class="input-group-addon">Tipo de Destinatario</span>
                                        <select class="form-control" id="guiRemAddTipDes" name="guiRemTipDes">
                                        </select> 
                                        <span class="input-group-addon"><i class="fa fa-exchange"></i></span>
                                    </div>
                                </div>
                                <div class="col-xs-12 col-md-12">
                                    <div class="form-group input-group">
                                        <span class="input-group-addon">Descripción</span>
                                        <input type="text" class="form-control" id="guiRemAddRemDes" name="guiRemRemDes">
                                        <span class="input-group-addon"><i class="fa fa-reorder"></i></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
                            <button type="submit" class="btn btn-success">Guardar</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div class="modal fade" id="viewCarrierGuide">
            <div class="modal-dialog modal-md">
                <div class="modal-content" style="overflow-y: auto">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h3 class="modal-title">Guía de Remisión Transportista</h3>
                    </div>
                    <div class="modal-body">   
                        <div class="panel-body">
                            <ul class="nav nav-pills">
                                <li class="active"><a href="#generalguiTra" data-toggle="tab">Información General</a></li>
                                <li><a href="#detailgui" data-toggle="tab">Detalles</a></li>
                                <li><a href="#client" data-toggle="tab">Clientes</a></li>
                                <li><a href="#facts" data-toggle="tab">Facturas</a></li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane fade in active" id="generalguiTra"><br>
                                    <div class="col-xs-12 col-md-12">
                                        <div class="col-xs-12 col-md-12">
                                            <div class="form-group input-group">
                                                <span class="input-group-addon">Número de Guía de Transportista</span>
                                                <input type="text" class="form-control" id="guiRemTraNum" readOnly>
                                                <span class="input-group-addon"><i class="fa fa-clipboard"></i></span>
                                            </div>
                                        </div>
                                        <div class="col-xs-12 col-md-12">
                                            <div class="form-group input-group">
                                                <span class="input-group-addon">Transportista</span>
                                                <input type="text" class="form-control" id="traNomCom" readOnly>
                                                <span class="input-group-addon"><i class="fa fa-child"></i></span>
                                            </div>
                                        </div>
                                        <div class="col-xs-12 col-md-12">
                                            <div class="form-group input-group">
                                                <span class="input-group-addon">Vehiculo</span>
                                                <input type="text" class="form-control" id="vehiculo" readOnly>
                                                <span class="input-group-addon"><i class="fa fa-car"></i></span>
                                            </div>
                                        </div>
                                        <div class="col-xs-12 col-md-12">
                                            <div class="form-group input-group" >
                                                <span class="input-group-addon">Remitente(Empresa)</span>
                                                <input type="text" class="form-control" id="remitente" readOnly>
                                                <span class="input-group-addon"><i class="fa fa-building"></i></span>
                                            </div>
                                        </div>
                                        <div class="col-xs-12 col-md-12">
                                            <div class="form-group input-group" >
                                                <span class="input-group-addon">Destinatario(Cliente)</span>
                                                <input type="text" class="form-control" id="destinatario" readOnly>
                                                <span class="input-group-addon"><i class="fa fa-building"></i></span>
                                            </div>
                                        </div>
                                        <div class="col-xs-12 col-md-12">
                                            <div class="form-group input-group" >
                                                <span class="input-group-addon">Ruta</span>
                                                <input type="text" class="form-control" id="ruta" readOnly>
                                                <span class="input-group-addon"><i class="fa fa-road"></i></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="detailgui"><br>
                                    <div class="col-xs-12 col-md-12">
                                        <div class="table-responsive">
                                            <table width="100%" class="table table-striped table-bordered table-hover" id="guiTraDetPro">
                                                <thead align="center">
                                                    <tr >
                                                        <th>Cant.</th>
                                                        <th>Descripción</th>
                                                        <th>Precio</th>
                                                        <th>Importe</th>
                                                    </tr>
                                                </thead>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="client"><br>
                                    <div class="col-xs-12 col-md-12">
                                        <div class="table-responsive">
                                            <table width="100%" class="table table-striped table-bordered table-hover" id="guiTraCli">
                                                <thead align="center">
                                                    <tr >
                                                        <th>Código</th>
                                                        <th>Nombre Comercial</th>
                                                    </tr>
                                                </thead>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="facts"><br>
                                    <div class="col-xs-12 col-md-12">
                                        <div class="table-responsive">
                                            <table width="100%" class="table table-striped table-bordered table-hover" id="guiTraFac">
                                                <thead align="center">
                                                    <tr >
                                                        <th>Código</th>
                                                        <th>Fecha</th>
                                                        <th>Total</th>
                                                        <th>SubTotal</th>
                                                    </tr>
                                                </thead>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-success" data-dismiss="modal">Aceptar</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="addCarrierGuide">
            <div class="modal-dialog modal-md">
                <form id="addCarrierGuideForm" role="form" action="${pageContext.request.contextPath}/secured/ventas/addCarrierGuide" method="post">
                    <div class="modal-content" style="overflow-y: auto">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title">Guía de Transportista</h4>
                        </div>
                        <div class="modal-body">
                            <div class="col-md-12 form-group input-group">
                                <div class="col-xs-12 col-md-12">
                                    <div class="form-group input-group">
                                        <span class="input-group-addon">Empresa</span>
                                        <input type="text" class="form-control" id="guiTraAddEmpDes" name="guiTraEmpDes" readOnly>
                                        <span class="input-group-addon"><i class="fa fa-building-o"></i></span>
                                    </div>
                                </div>
                                <div class="col-xs-12 col-md-6">
                                    <div class="form-group input-group">
                                        <span class="input-group-addon">Factura Ven.</span>
                                        <input type="text" class="form-control" id="guiTraAddFacCod" name="guiTraFacCod" readOnly>
                                        <span class="input-group-addon"><i class="fa fa-clipboard"></i></span>
                                    </div>
                                </div>
                                <div class="col-xs-12 col-md-6">
                                    <div class="form-group input-group">
                                        <span class="input-group-addon">Guía de Tra.</span>
                                        <input type="text" class="form-control" id="guiTraAddTraNum" name="guiTraTraNum">
                                        <span class="input-group-addon"><i class="fa fa-file-text-o"></i></span>
                                    </div>
                                </div>
                                <div class="col-xs-12 col-md-12">
                                    <div class="form-group input-group">
                                        <span class="input-group-addon">Denominación</span>
                                        <input type="text" class="form-control" id="guiTraAddTraDen" name="guiTraTraDen">
                                        <span class="input-group-addon"><i class="fa fa-paperclip"></i></span>
                                    </div>
                                </div>
                                <div class="col-xs-12 col-md-12">
                                    <div class="form-group input-group">
                                        <span class="input-group-addon">Transportista</span>
                                        <select class="form-control" id="guiTraAddTraDat" name="guiTraTraDat">
                                        </select>
                                        <span class="input-group-addon"><i class="fa fa-truck"></i></span>
                                    </div>
                                </div>      
                                <div class="col-xs-12 col-md-12">
                                    <div class="form-group input-group">
                                        <span class="input-group-addon">Unidad</span>
                                        <select class="form-control" id="guiTraAddNumPla" name="guiTraNumPla">
                                        </select> 
                                        <span class="input-group-addon"><i class="fa fa-map-marker"></i></span>
                                    </div>
                                </div>
                                <div class="col-xs-12 col-md-12">
                                    <div class="form-group input-group">
                                        <span class="input-group-addon">Número Registro</span>
                                        <input type="text" class="form-control" id="guiTraAddNumReg" name="guiTraNumReg">
                                        <span class="input-group-addon"><i class="fa fa-list-alt"></i></span>
                                    </div>
                                </div>
                                <div class="col-xs-12 col-md-12">
                                    <div class="form-group input-group">
                                        <span class="input-group-addon">Ruta</span>
                                        <select class="form-control" id="guiTraAddRutDes" name="guiTraRutDes">
                                        </select> 
                                        <span class="input-group-addon"><i class="fa fa-road"></i></span>
                                    </div>
                                </div>
                                <div class="col-xs-12 col-md-12">
                                    <div class="form-group input-group">
                                        <span class="input-group-addon">Tipo de Destinatario</span>
                                        <select class="form-control" id="guiTraAddTipDes" name="guiTraTipDes">
                                        </select> 
                                        <span class="input-group-addon"><i class="fa fa-exchange"></i></span>
                                    </div>
                                </div>
                                <div class="col-xs-12 col-md-12">
                                    <div class="form-group input-group">
                                        <span class="input-group-addon">Descripción</span>
                                        <input type="text" class="form-control" id="guiTraAddTraDes" name="guiTraTraDes">
                                        <span class="input-group-addon"><i class="fa fa-reorder"></i></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
                            <button type="submit" class="btn btn-success">Guardar</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div id="messageReferralGuide" class="modal fade">
            <div class="modal-dialog modal-sm">
                <div class="modal-content" style="overflow-y: auto">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Guía de Remisión</h4>
                    </div>
                    <div class="modal-body">
                        <p align="center"><span>La factura de venta <span id="deleteReferralGuide"></span> que ha seleccionado ya posee una guía de remisión, ¿desea eliminarla y crear una nueva?</span></p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>                                            
                        <button type="button" class="btn btn-success" onclick="deleteReferralGuide()">Aceptar</button>                                            
                    </div>
                </div>         
            </div>
        </div>        
        <div id="messageCarrierGuide" class="modal fade">
            <div class="modal-dialog modal-sm">
                <div class="modal-content" style="overflow-y: auto">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Guía de Transportista</h4>
                    </div>
                    <div class="modal-body">
                        <p align="center"><span>La factura de venta <span id="deleteCarrierGuide"></span> que ha seleccionado ya posee una guía de transportista, ¿desea eliminarla y crear una nueva?</span></p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>                                            
                        <button type="button" class="btn btn-success" onclick="deleteCarrierGuide()">Aceptar</button>                                            
                    </div>
                </div>         
            </div>
        </div>
        <div id="messageRefund" class="modal fade">
            <div class="modal-dialog modal-sm">
                <div class="modal-content" style="overflow-y: auto">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" id="refundDiss">&times;</button>
                        <h4 class="modal-title">Devolución</h4>
                    </div>
                    <div class="modal-body">
                        <p align="center"><span id="refund"></span></p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal" id="refundCancel">Cancelar</button>                                            
                        <button type="button" class="btn btn-success" onclick="evaluateRefund()" id="refundAccept">Aceptar</button>                                            
                    </div>
                </div>         
            </div>
        </div>
        <div id="loading" class="modal fade">
            <div class="modal-dialog modal-sm">
                <div class="modal-content" style="overflow-y: auto">
                    <div class="modal-body">
                        <p align="center">Cargando ... </p>
                    </div>
                </div>         
            </div>
        </div>

        <script language="javascript">
            var codeRefund = "";
            var typeRefund = "";

            $(document).ready(function () {
                $('#tablePurchases').DataTable({
                    responsive: true
                });
            });

            $(document).ready(function () {
                $('#imprimir').on('click', function () {
                    $('#formLote').attr('action', '${pageContext.request.contextPath}/secured/ventas/factura/facturaLotes');
                    if ($(':checkbox:checked').length > 0)
                    {
                        $('#impresionLotesModal').modal('show');
                    } else
                    {
                        $("#errorMessage").text("Debe seleccionar al menos una factura ");
                        $('#errorMessageModal').modal('show');
                    }
                });

                $('#guiaTranportista').on('click', function () {
                    $('#formLote').attr('action', '${pageContext.request.contextPath}/secured/ventas/carrierGuideLote');
                    if ($(':checkbox:checked').length > 0)
                    {
                        $('#guiaTransportistaModal').modal('show');
                    } else
                    {
                        $("#errorMessage").text("Debe seleccionar al menos una factura");
                        $('#errorMessageModal').modal('show');
                    }
                });
            });

            function viewSaleBill(facVenCabCod) {
                $("#loading").modal('show');
                $.post(
                        "${pageContext.request.contextPath}/secured/ventas/searchBill", {
                            facVenCabCod: facVenCabCod
                        }
                ).done(function (data) {
                    $("#codFacVen").val(data.codFacVen);
                    $("#preVenCabIgv").val(data.preVenCabIgv);
                    $("#facVenCabUsuNom").val(data.facVenCabUsuNom);
                    $("#facVenCabCliNomCom").val(data.facVenCabCliNomCom);
                    $("#tipDesDet").val(data.tipDesDet);
                    $("#facVenPorDes").val(data.facVenPorDes);

                    $('#facVenDetPro').DataTable().clear().draw();
                    $('#facVenDetPro').DataTable().destroy();
                    data.detailList.forEach(function (detail) {
                        $('#facVenDetPro tbody').append('<tr><td width="16%" align="center"></td><td width="44%"></td><td width="20%" align="center"></td><td width="20%" align="center"></td></tr>');
                        $('#facVenDetPro tr:last td:eq(0)').html(detail.detCan);
                        $('#facVenDetPro tr:last td:eq(1)').html(detail.proDet);
                        $('#facVenDetPro tr:last td:eq(2)').html(detail.preUniVen);
                        $('#facVenDetPro tr:last td:eq(3)').html((Number(detail.detImp)).toFixed(2));
                    });
                    $('#facVenDetPro').DataTable({
                        responsive: true
                    });
                    $("#loading").modal('hide');
                    $("#viewSaleBill").modal('show');
                });
            }

            function viewReferralGuide(facVenCabCod) {
                $("#loading").modal('show');
                $.post(
                        "${pageContext.request.contextPath}/secured/ventas/searchReferralGuide", {
                            action: "search",
                            facVenCabCod: facVenCabCod
                        }
                ).done(function (data) {
                    $("#guiRemRemNum").val(data.guiRemRemNum);
                    $("#guiRemEmpDes").val(data.guiRemEmpDes);
                    $("#guiRemCliCod").val(data.guiRemCliCod);
                    $("#guiRemFacCod").val(data.guiRemFacCod);
                    $("#guiRemMotTra").val(data.guiRemMotTra);

                    $('#GuiRemDetPro').DataTable().clear().draw();
                    $('#GuiRemDetPro').DataTable().destroy();
                    data.remList.forEach(function (detailguirem) {
                        $('#GuiRemDetPro tbody').append('<tr><td width="16%" align="center"></td><td width="44%"></td><td width="20%" align="center"></td><td width="20%" align="center"></td></tr>');
                        $('#GuiRemDetPro tr:last td:eq(0)').html(detailguirem.detCan);
                        $('#GuiRemDetPro tr:last td:eq(1)').html(detailguirem.proDet);
                        $('#GuiRemDetPro tr:last td:eq(2)').html(detailguirem.preUniVen);
                        $('#GuiRemDetPro tr:last td:eq(3)').html((Number(detailguirem.detImp)).toFixed(2));
                    });
                    $('#GuiRemDetPro').DataTable({
                        responsive: true
                    });

                    $("#loading").modal('hide');
                    $("#viewReferralGuide").modal('show');
                });
            }

            function viewCarrierGuide(facVenCabCod) {
                $("#loading").modal('show');
                $.post(
                        "${pageContext.request.contextPath}/secured/ventas/searchCarrierGuide", {
                            action: "search",
                            facVenCabCod: facVenCabCod
                        }
                ).done(function (data) {
                    $("#guiRemTraNum").val(data.guiRemTraNum);
                    $("#traNomCom").val(data.traNomCom);
                    $("#vehiculo").val(data.vehiculo);
                    $("#remitente").val(data.remitente);
                    $("#destinatario").val(data.destinatario);
                    $("#ruta").val(data.ruta);

                    $('#guiTraDetPro').DataTable().clear().draw();
                    $('#guiTraDetPro').DataTable().destroy();
                    data.traList.forEach(function (detailgui) {
                        $('#guiTraDetPro tbody').append('<tr><td width="16%" align="center"></td><td width="44%"></td><td width="20%" align="center"></td><td width="20%" align="center"></td></tr>');
                        $('#guiTraDetPro tr:last td:eq(0)').html(detailgui.detCan);
                        $('#guiTraDetPro tr:last td:eq(1)').html(detailgui.proDet);
                        $('#guiTraDetPro tr:last td:eq(2)').html(detailgui.preUniVen);
                        $('#guiTraDetPro tr:last td:eq(3)').html((Number(detailgui.detImp)).toFixed(2));
                    });
                    $('#guiTraDetPro').DataTable({
                        responsive: true
                    });

                    $('#guiTraCli').DataTable().clear().draw();
                    $('#guiTraCli').DataTable().destroy();
                    data.traCliList.forEach(function (client) {
                        $('#guiTraCli tbody').append('<tr><td width="20%" align="center"></td><td width="80%"></td></tr>');
                        $('#guiTraCli tr:last td:eq(0)').html(client.cliCod);
                        $('#guiTraCli tr:last td:eq(1)').html(client.cliNomCom);
                    });
                    $('#guiTraCli').DataTable({
                        responsive: true
                    });

                    $('#guiTraFac').DataTable().clear().draw();
                    $('#guiTraFac').DataTable().destroy();
                    data.facVenList.forEach(function (guiTraFac) {
                        $('#guiTraFac tbody').append('<tr><td width="20%" align="center"></td><td width="20%"></td><td width="30%" align="center"></td><td width="30%" align="center"></td></tr>');
                        $('#guiTraFac tr:last td:eq(0)').html(guiTraFac.facVenCabCod);
                        $('#guiTraFac tr:last td:eq(1)').html(guiTraFac.facVenCabFecEmi);
                        $('#guiTraFac tr:last td:eq(2)').html(guiTraFac.facVenCabTot);
                        $('#guiTraFac tr:last td:eq(3)').html(guiTraFac.facVenCabSubTot);
                    });
                    $('#guiTraFac').DataTable({
                        responsive: true
                    });

                    $("#loading").modal('hide');
                    $("#viewCarrierGuide").modal('show');
                });
            }

            function loadNewReferralGuide(data) {
                $("#guiRemAddEmpDes").val(data.empDes);
                $("#guiRemAddFacCod").val(data.facCod);
                $("#guiRemAddRemNum").val("");
                $("#guiRemRemDen").val("");
                $("#guiRemRemDes").val("");

                $("#guiRemAddMotTra").empty();

                data.motTra.forEach(function (mot) {
                    $("#guiRemAddMotTra").append($('<option>', {
                        value: mot.motTraCod,
                        text: mot.motTraDet
                    }));
                });

                $("#guiRemAddTipDes").empty();

                data.tipDes.forEach(function (tip) {
                    $("#guiRemAddTipDes").append($('<option>', {
                        value: tip.tipDstCod,
                        text: tip.tipDstDet
                    }));
                });
            }

            function loadNewCarrierGuide(data) {
                $("#guiTraAddEmpDes").val(data.empDes);
                $("#guiTraAddFacCod").val(data.facCod);
                $("#guiTraAddTraNum").val("");
                $("#guiTraAddTraDen").val("");
                $("#guiTraAddNumReg").val("");
                $("#guiTraAddTraDes").val("");

                $("#guiTraAddTraDat").empty();

                data.traDat.forEach(function (tra) {
                    $("#guiTraAddTraDat").append($('<option>', {
                        value: tra.traCod,
                        text: tra.nomCom
                    }));
                });

                $("#guiTraAddNumPla").empty();

                data.numPla.forEach(function (num) {
                    $("#guiTraAddNumPla").append($('<option>', {
                        value: num.uniTraCod,
                        text: num.uniTraNumPla
                    }));
                });

                $("#guiTraAddRutDes").empty();

                data.rutDes.forEach(function (rut) {
                    $("#guiTraAddRutDes").append($('<option>', {
                        value: rut.rutCod,
                        text: rut.rutDet
                    }));
                });

                $("#guiTraAddTipDes").empty();

                data.tipDes.forEach(function (tip) {
                    $("#guiTraAddTipDes").append($('<option>', {
                        value: tip.tipDstCod,
                        text: tip.tipDstDet
                    }));
                });
            }

            function makeDoReferralGuide(facVenCod) {
                $.post(
                        "${pageContext.request.contextPath}/secured/ventas/searchReferralGuide", {
                            action: "verify",
                            facVenCabCod: facVenCod
                        }
                ).done(function (data) {
                    loadNewReferralGuide(data);
                    if (data.state) {
                        $("#addReferralGuide").modal('show');
                    } else {
                        $("#deleteReferralGuide").text(facVenCod);
                        $("#messageReferralGuide").modal('show');
                    }
                });
            }

            function makeDoCarrierGuide(facVenCod) {
                $.post(
                        "${pageContext.request.contextPath}/secured/ventas/searchCarrierGuide", {
                            action: "verify",
                            facVenCabCod: facVenCod
                        }
                ).done(function (data) {
                    loadNewCarrierGuide(data);
                    if (data.state) {
                        $("#addCarrierGuide").modal('show');
                    } else {
                        $("#deleteCarrierGuide").text(facVenCod);
                        $("#messageCarrierGuide").modal('show');
                    }
                });
            }

            function makeDoRefund(facVenCod, type) {
                $("#messageRefund").modal({
                    backdrop: 'static',
                    keyboard: true
                });
                codeRefund = facVenCod;

                if (type == "partial") {
                    typeRefund = "partial";
                    $("#refund").text("¿Desea realizar una devolución parcial de los productos asociados a la factura " + facVenCod + " ? Tener en cuenta que solo podrà modificar su detalle ");
                } else if (type == "total") {
                    typeRefund = "total";
                    $("#refund").text("¿Desea realizar una devolución total de todos los productos de la factura " + facVenCod + " ? Tener en cuenta que la factura se eliminará ");
                }

                $("#messageRefund").modal('show');
            }

            function evaluateRefund() {
                $("#refundDiss").prop('disabled', true);
                $("#refundCancel").prop('disabled', true);
                $("#refundAccept").prop('disabled', true);

                if (typeRefund == "partial") {
                    $("#refund").text("Redireccionando ...");
                    window.location = "${pageContext.request.contextPath}/secured/ventas/partialRefund?code=" + codeRefund;
                } else if (typeRefund == "total") {
                    $("#refund").text("Espere mientras se realiza la devolución");
                    $.post(
                            "${pageContext.request.contextPath}/secured/ventas/totalRefund", {
                                facVenCabCod: codeRefund
                            }
                    ).done(function () {
                        location.reload();
                    });
                }
            }

            function deleteReferralGuide() {
                $.post(
                        "${pageContext.request.contextPath}/secured/ventas/removeReferralGuide", {
                            facVenCabCod: $("#deleteReferralGuide").text()
                        }
                ).done(function () {
                    $("#messageReferralGuide").modal('hide');
                    $("#addReferralGuide").modal('show');
                });
            }

            function deleteCarrierGuide() {
                $.post(
                        "${pageContext.request.contextPath}/secured/ventas/removeCarrierGuide", {
                            facVenCabCod: $("#deleteCarrierGuide").text()
                        }
                ).done(function () {
                    $("#messageCarrierGuide").modal('hide');
                    $("#addCarrierGuide").modal('show');
                });
            }

            $.validator.addMethod("codePattern", function (value, element) {
                return /^[0-9]{3}-[0-9]{6}$/.test(value);
            }, "Patrón: [0-9]{3}-[0-9]{6}");

            $("#addReferralGuideForm").validate({
                rules: {
                    guiRemRemNum: {
                        required: true,
                        codePattern: true
                    },
                    guiRemRemDen: {
                        required: true
                    },
                    guiRemRemDes: {
                        required: true
                    }
                },
                messages: {
                    guiRemRemNum: {
                        required: "Número de Guía de Remisión"
                    },
                    guiRemRemDen: {
                        required: "Denominación"
                    },
                    guiRemRemDes: {
                        required: "Descripción"
                    }
                },
                submitHandler: function (form) {
                    form.submit();
                }
            });

            $("#addCarrierGuideForm").validate({
                rules: {
                    guiTraTraNum: {
                        required: true,
                        codePattern: true
                    },
                    guiTraTraDen: {
                        required: true
                    },
                    guiTraTraDes: {
                        required: true
                    }
                },
                messages: {
                    guiTraTraNum: {
                        required: "Número de Guía de Remisión",
                    },
                    guiTraTraDen: {
                        required: "Denominación"
                    },
                    guiTraTraDes: {
                        required: "Descripción"
                    }
                },
                submitHandler: function (form) {
                    form.submit();
                }
            });
        </script>
    </jsp:attribute>
</minierptemplate:template>
