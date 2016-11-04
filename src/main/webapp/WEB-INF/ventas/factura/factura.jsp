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
        <form id="facturaLoteForm" role="form" action="${pageContext.request.contextPath}/secured/ventas/factura/facturaLotes" method="post">
            <div class="panel-body">
                <div class="form-group">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">Factura de Venta</h1>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-3">
                            <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                                <a href="${pageContext.request.contextPath}/secured/ventas/factura/addFactura" class="btn btn-success">Crear Factura <i class="fa fa-plus"></i></a>
                                </cc:if>
                        </div>
                        <div class="col-lg-9">
                            <div class="col-lg-3">
                                <select  class="form-control input-small" name="report" id="report"> 
                                    <option type="submit" value="factura">Factura</option>
                                    <option type="submit" value="boleta">Boleta</option>
                                    <option type="submit" value="guiaRemision">Guía de Remisión</option>
                                </select>  
                            </div>
                            <div class="col-lg-3">
                                <div id="imprimir" class="btn btn-success"> Imprimir</div>  
                            </div> 
                            <div class="col-lg-3">
                                <label>Flujo Efectivo</label>
                            </div> 
                            <div class="col-lg-6">
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
                                            <th></th>
                                            <th>Fecha</th>
                                            <th>Factura</th>
                                            <th>Cliente</th>
                                            <th>Vendedor</th>
                                            <th>Importe</th>
                                            <th>Vistas</th>
                                                <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                                                <th>Acciones</th>
                                                </cc:if>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${facturasVenta}" var="c">
                                            <tr>
                                                <td width="3%" align="center"><input type="checkbox" name="codigos" value="${c.facVenCabCod}"></td>
                                                <td width="10%" align="center">${c.facVenCabFecEmi}</td>
                                                <td width="15%" align="center">${c.facVenCabCod}</td>
                                                <td width="15%">${c.enP1mCliente.cliNom}</td>
                                                <td width="15%">${c.enP1mUsuario.usuNom}</td>
                                                <td width="10%" align="center">${c.facVenCabTot}</td>                                                                            
                                                <td width="12%" align="center">
                                                    <a href="#" data-toggle="modal" data-target="#viewSaleBill" data-code="${c.facVenCabCod}">
                                                        <i class="fa fa-list-alt fa-2x" style="color: black;"></i>
                                                    </a> 
                                                    <a href="#" data-toggle="modal" data-target="#viewReferralGuide" data-code="${c.facVenCabCod}">
                                                        <i class="fa fa-book fa-2x" style="color: black;"></i>
                                                    </a>
                                                    <a href="#" data-toggle="modal" data-target="#viewCarrierGuide" data-code="${c.facVenCabCod}">
                                                        <i class="fa fa-truck fa-2x" style="color: black;"></i>
                                                    </a>
                                                </td>
                                                <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                                                    <td width="20%" align="center">
                                                        <a onclick='makeDoReferralGuide("${c.facVenCabCod}")'>
                                                            <i class="fa fa-book fa-2x" style="color: black;"></i>
                                                        </a>
                                                        <a href="#" data-toggle="modal" data-target="#">
                                                            <i class="fa fa-truck fa-2x" style="color: black;"></i>
                                                        </a>
                                                        <a href="#" data-toggle="modal" data-target="#">
                                                            <i class="fa fa-wrench fa-2x" style="color: black;"></i>
                                                        </a>
                                                        <a href="#" data-toggle="modal" data-target="#">
                                                            <i class="fa fa-paste fa-2x" style="color: black;"></i>
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
            <div id="confimarMessageModal" class="modal fade">
                <div class="modal-dialog modal-sm">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Impresión por lote</h4>
                        </div>
                        <div class="modal-body">
                            <p align="center"><span id="confirmarMessage"></span></p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-outline btn-danger" data-dismiss="modal"> Cancelar </button>
                            <button type="submit" class="btn btn-outline btn-success"> Imprimir </button>
                        </div>
                    </div>              
                </div>
            </div>
        </form>
        <div id="errorMessageModal" class="modal fade">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Impresión por lote</h4>
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
            <div class="modal-dialog">
                <div class="modal-content">
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
                                        <div class="col-xs-12 col-md-6">
                                            <div class="form-group input-group">
                                                <span class="input-group-addon">Factura</span>
                                                <input type="text" class="form-control" id="facVenCabCod" readOnly>
                                                <span class="input-group-addon"><i class="fa fa-clipboard"></i></span>
                                            </div>
                                        </div>
                                        <div class="col-xs-12 col-md-6">
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
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">Guía de Remisión</h4>
                    </div>
                    <div class="modal-body">
                        <div class="col-md-12 form-group input-group">
                            <div class="col-xs-12 col-md-12">
                                <div class="form-group input-group">
                                    <span class="input-group-addon">Empresa</span>
                                    <input type="text" class="form-control" id="guiRemEmpDes" readOnly>
                                    <span class="input-group-addon"><i class="fa fa-building-o"></i></span>
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-6">
                                <div class="form-group input-group">
                                    <span class="input-group-addon">Factura Ven.</span>
                                    <input type="text" class="form-control" id="guiRemFacCod" readOnly>
                                    <span class="input-group-addon"><i class="fa fa-clipboard"></i></span>
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-6">
                                <div class="form-group input-group">
                                    <span class="input-group-addon">Guía de Rem.</span>
                                    <input type="text" class="form-control" id="guiRemRemNum" readOnly>
                                    <span class="input-group-addon"><i class="fa fa-file-text-o"></i></span>
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-12">
                                <div class="form-group input-group">
                                    <span class="input-group-addon">Denominación</span>
                                    <input type="text" class="form-control" id="guiRemRemDen" readOnly>
                                    <span class="input-group-addon"><i class="fa fa-paperclip"></i></span>
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-12">
                                <div class="form-group input-group">
                                    <span class="input-group-addon">Motivo de Traslado</span>
                                    <input type="text" class="form-control" id="guiRemMotTra" readOnly>
                                    <span class="input-group-addon"><i class="fa fa-send-o"></i></span>
                                </div>
                            </div>                            
                            <div class="col-xs-12 col-md-12">
                                <div class="form-group input-group">
                                    <span class="input-group-addon">Tipo de Destinatario</span>
                                    <input type="text" class="form-control" id="guiRemTipDes" readOnly>
                                    <span class="input-group-addon"><i class="fa fa-exchange"></i></span>
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-12">
                                <div class="form-group input-group">
                                    <span class="input-group-addon">Descripción</span>
                                    <input type="text" class="form-control" id="guiRemRemDes" readOnly>
                                    <span class="input-group-addon"><i class="fa fa-reorder"></i></span>
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
            <div class="modal-dialog">
                <form id="addReferralGuideForm" role="form" action="${pageContext.request.contextPath}/secured/ventas/addReferralGuide" method="post">
                    <div class="modal-content">
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
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">Guía de Transportista</h4>
                    </div>
                    <div class="modal-body">
                        <div class="col-md-12 form-group input-group">
                            <div class="col-xs-12 col-md-12">
                                <div class="form-group input-group">
                                    <span class="input-group-addon">Empresa</span>
                                    <input type="text" class="form-control" id="guiTraEmpDes" readOnly>
                                    <span class="input-group-addon"><i class="fa fa-building-o"></i></span>
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-6">
                                <div class="form-group input-group">
                                    <span class="input-group-addon">Factura Ven.</span>
                                    <input type="text" class="form-control" id="guiTraFacCod" readOnly>
                                    <span class="input-group-addon"><i class="fa fa-clipboard"></i></span>
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-6">
                                <div class="form-group input-group">
                                    <span class="input-group-addon">Guía de Tra.</span>
                                    <input type="text" class="form-control" id="guiTraTraNum" readOnly>
                                    <span class="input-group-addon"><i class="fa fa-file-text-o"></i></span>
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-12">
                                <div class="form-group input-group">
                                    <span class="input-group-addon">Denominación</span>
                                    <input type="text" class="form-control" id="guiTraTraDen" readOnly>
                                    <span class="input-group-addon"><i class="fa fa-paperclip"></i></span>
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-12">
                                <div class="form-group input-group">
                                    <span class="input-group-addon">Transportista</span>
                                    <input type="text" class="form-control" id="guiTraTraDat" readOnly>
                                    <span class="input-group-addon"><i class="fa fa-truck"></i></span>
                                </div>
                            </div>      
                            <div class="col-xs-12 col-md-12">
                                <div class="form-group input-group">
                                    <span class="input-group-addon">Unidad</span>
                                    <input type="text" class="form-control" id="guiTraNumPla" readOnly>
                                    <span class="input-group-addon"><i class="fa fa-map-marker"></i></span>
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-12">
                                <div class="form-group input-group">
                                    <span class="input-group-addon">Número Registro</span>
                                    <input type="text" class="form-control" id="guiTraNumReg" readOnly>
                                    <span class="input-group-addon"><i class="fa fa-list-alt"></i></span>
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-12">
                                <div class="form-group input-group">
                                    <span class="input-group-addon">Ruta</span>
                                    <input type="text" class="form-control" id="guiTraRutDes" readOnly>
                                    <span class="input-group-addon"><i class="fa fa-road"></i></span>
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-12">
                                <div class="form-group input-group">
                                    <span class="input-group-addon">Tipo de Destinatario</span>
                                    <input type="text" class="form-control" id="guiTraTipDes" readOnly>
                                    <span class="input-group-addon"><i class="fa fa-exchange"></i></span>
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-12">
                                <div class="form-group input-group">
                                    <span class="input-group-addon">Descripción</span>
                                    <input type="text" class="form-control" id="guiTraTraDes" readOnly>
                                    <span class="input-group-addon"><i class="fa fa-reorder"></i></span>
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
        <div id="messageReferralGuide" class="modal fade">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
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
        <script language="javascript">
            $(document).ready(function () {
                $('#tablePurchases').DataTable({
                    responsive: true
                });
            });

            $(document).ready(function () {
                $('#facVenDetPro').DataTable({
                    responsive: true
                });
            });

            $(document).ready(function () {
                $('#imprimir').on('click', function () {
                    if ($(':checkbox:checked').length > 0)
                    {
                        $("#confirmarMessage").text("¿Está seguro de realizar la impresión? ");
                        $('#confimarMessageModal').modal('show');
                    } else
                    {
                        $("#errorMessage").text("Debe seleccionar al menos una factura ");
                        $('#errorMessageModal').modal('show');
                    }
                });
            });

            $("#viewSaleBill").on('show.bs.modal', function (e) {
                $.post(
                        "${pageContext.request.contextPath}/secured/ventas/searchBill", {
                            facVenCabCod: $(e.relatedTarget).data('code')
                        }
                ).done(function (data) {
                    $("#facVenCabCod").val(data.cod);
                    $("#facVenCabUsuNom").val(data.usuNom);
                    $("#facVenCabCliNomCom").val(data.cliNomCom);
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
                });
            });

            $("#viewReferralGuide").on('show.bs.modal', function (e) {
                $.post(
                        "${pageContext.request.contextPath}/secured/ventas/searchReferralGuide", {
                            action: "search",
                            facVenCabCod: $(e.relatedTarget).data('code')
                        }
                ).done(function (data) {
                    $("#guiRemEmpDes").val(data.empDes);
                    $("#guiRemFacCod").val(data.facCod);
                    $("#guiRemRemNum").val(data.remNum);
                    $("#guiRemRemDen").val(data.remDen);
                    $("#guiRemMotTra").val(data.motTra);
                    $("#guiRemTipDes").val(data.tipDes);
                    $("#guiRemRemDes").val(data.remDes);
                });
            });

            $("#viewCarrierGuide").on('show.bs.modal', function (e) {
                $.post(
                        "${pageContext.request.contextPath}/secured/ventas/searchCarrierGuide", {
                            facVenCabCod: $(e.relatedTarget).data('code')
                        }
                ).done(function (data) {
                    $("#guiTraEmpDes").val(data.empDes);
                    $("#guiTraFacCod").val(data.facCod);
                    $("#guiTraTraNum").val(data.traNum);
                    $("#guiTraTraDen").val(data.traDen);
                    $("#guiTraTraDat").val(data.traDat);
                    $("#guiTraNumPla").val(data.numPla);
                    $("#guiTraNumReg").val(data.numReg);
                    $("#guiTraRutDes").val(data.rutDes);
                    $("#guiTraTipDes").val(data.tipDes);
                    $("#guiTraTraDes").val(data.traDes);
                });
            });


            function loadNewReferralGuide(data){
                $("#guiRemAddEmpDes").val(data.empDes);
                $("#guiRemAddFacCod").val(data.facCod);
                $("#guiRemAddRemNum").val("");
                $("#guiRemRemDen").val("");
                $("#guiRemRemDes").val("");
                
                $("#guiRemAddMotTra").empty();
                
                data.motTra.forEach(function (mot) {
                    $("#guiRemAddMotTra").append($('<option>',{
                        value: mot.motTraCod,
                        text: mot.motTraDet
                    }));
                });
                
                $("#guiRemAddTipDes").empty();
                
                data.tipDes.forEach(function (tip) {
                    $("#guiRemAddTipDes").append($('<option>',{
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
            
            function deleteReferralGuide() {
                $.post(
                        "${pageContext.request.contextPath}/secured/ventas/removeReferralGuide", {
                            facVenCabCod: $("#deleteReferralGuide").text()
                        }
                ).done(function() {
                    $("#messageReferralGuide").modal('hide');
                    $("#addReferralGuide").modal('show');
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
                        required: "Número de Guía de Remisión",
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
        </script>
    </jsp:attribute>
</minierptemplate:template>